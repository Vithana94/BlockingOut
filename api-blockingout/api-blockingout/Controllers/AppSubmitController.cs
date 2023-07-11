﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using api_rate.Models;
using api_rate.Filters;
using api_rate.Helpers;
using System.Configuration;

namespace api_rate.Controllers
{
    [JwtCustomAuth]
    public class AppSubmitController : ApiController
    {
        private IAppSubmit _appsubmit = null;
        private IGetDate _getDate = null;
        private IGetData _getData = null;
        private ISMS _sms = null;
        private IEmail _email = null;


        public AppSubmitController(IAppSubmit IAppSubmit, IGetDate IGetDate, ISMS ISMS, IEmail IEmail, IGetData IGetData)
        {
            _appsubmit = IAppSubmit;
            _getDate = IGetDate;
            _sms = ISMS;
            _email = IEmail;
            _getData = IGetData;
        }

        // POST /api/AppSubmit
        public ReturnMsgInfo Post([FromBody]FireCertificateApplication objCompleteDetails)
        {
            ReturnMsgInfo objReturnMsg = new ReturnMsgInfo();
            FireSupervisorApplication objSuperApp = new FireSupervisorApplication();
            FireCertificateApplication objFireApp = new FireCertificateApplication();

            try
            {
                // validation
                var valFireApp = _appsubmit.ValidateApplication(objCompleteDetails, ref objReturnMsg);

                if (valFireApp)
                {
                    // App Save if CertID not available
                    if (objCompleteDetails.CertificateId == null || objCompleteDetails.CertificateId == "")
                    {
                        //Set applied date
                        objCompleteDetails.DateApplied = _getDate.GetFormattedDate(DateTime.Now).ToString("yyyy/MM/dd HH:mm").Trim();

                        // application submit
                        _appsubmit.SaveApplication(objCompleteDetails, ref objReturnMsg);
                        objSuperApp = _appsubmit.SetFireSuperApp(objCompleteDetails, ref objReturnMsg);
                        _appsubmit.SaveSupervisorApplication(objSuperApp, ref objReturnMsg);
                        
                        // Get Id for return
                        objFireApp.CertificateId = objCompleteDetails.CertificateId;
                        objFireApp.ClientID = objCompleteDetails.ClientID;
                        objFireApp = _getData.GetApplicationByCertId(objFireApp, ref objReturnMsg);

                        if (objReturnMsg.ReturnValue == "OK")
                        {
                            objReturnMsg.ReturnValue = "OK";
                            objReturnMsg.ReturnMessage = "Application Successfully submitted.";

                            //// Sending Email 
                            if (string.IsNullOrEmpty(objCompleteDetails.Email) == false)
                            {
                                string strMsg = _email.GetEmailMsgBody(Globals.PENDING.ToString().Trim());
                                string strErMsg = string.Empty;
                                _email.SendEmail(strMsg, objCompleteDetails.Email.ToString().Trim(), ref strErMsg);
                            }

                            //// Sending SMS 
                            string strSMSSending = ConfigurationManager.AppSettings["SMSSending"].ToString().Trim();
                            if (string.IsNullOrEmpty(objCompleteDetails.CertificateId) == false && string.IsNullOrEmpty(objCompleteDetails.Telephone) == false && strSMSSending.ToString().Trim() == "1")
                            {
                                string strMsg = "Dear Customer, \n Your fire certificate application has been successfully submitted. \n Reference No : " + objCompleteDetails.CertificateId.Trim() + " \n Thank You.";
                                string strErMsg = string.Empty;
                                _sms.SendSMS(strMsg, objCompleteDetails.Telephone.ToString().Trim(), ref strErMsg);
                            } 
                        }
                        else
                        {
                            throw new Exception("Error occured saving application");
                        } 
                      
                    }
                    else
                    {
                        objSuperApp = _appsubmit.SetFireSuperApp(objCompleteDetails, ref objReturnMsg);

                        // update first application
                        bool updateFireApp = _appsubmit.UpdateFireCertificate(objCompleteDetails, ref objReturnMsg);
                        
                        // update second application
                        bool updateSuperApp = _appsubmit.UpdateSuperApplication(objSuperApp, ref objReturnMsg);

                        // Get Fire App data
                        objFireApp.CertificateId = objCompleteDetails.CertificateId;
                        objFireApp.ClientID = objCompleteDetails.ClientID;
                        objFireApp = _getData.GetApplicationByCertId(objFireApp, ref objReturnMsg);

                        // if both update
                        if (updateFireApp && updateSuperApp)
                        {
                            objReturnMsg.ReturnValue = "OK";
                            objReturnMsg.ReturnMessage = "Application Successfully updated.";
                        }
                        else
                        {
                            throw new Exception("Error occured updating application");
                        }
                    }                                      

                }
                else
                {
                    objReturnMsg.ReturnValue = "Error";
                    objReturnMsg.ReturnMessage = "Invalid Application";
                }

            }
            catch (Exception ex)
            {
                objReturnMsg.ReturnValue = "Error";
                objReturnMsg.ReturnMessage = ex.Message.ToString().Trim();
            }

            objReturnMsg.AppId = objFireApp.Id;
            return objReturnMsg;
        }
    }
}
