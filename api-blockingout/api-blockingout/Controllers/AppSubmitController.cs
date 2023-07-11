using System;
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
        public ReturnMsgInfo Post([FromBody]BlockingOutApp objBlockingOut)
        {
            ReturnMsgInfo objReturnMsg = new ReturnMsgInfo();
            BlockingOutApp objBlockingRet = new BlockingOutApp();

            try
            {
                // validation
                var valFireApp = _appsubmit.ValidateApplication(objBlockingOut, ref objReturnMsg);

                if (valFireApp)
                {
                    // App Save if CertID not available
                    if (objBlockingOut.ID == 0)
                    {
                        //Set applied date
                        objBlockingOut.AppliedDate = _getDate.GetFormattedDate(DateTime.Now).ToString("yyyy/MM/dd HH:mm").Trim();

                        // application submit
                        _appsubmit.SaveApplication(objBlockingOut, ref objReturnMsg);
                        
                        // Get Id for return
                        // objBlockingRet = _getData.GetApplicationByAppId(objBlockingOut, ref objReturnMsg);

                        if (objReturnMsg.ReturnValue == "OK")
                        {
                            objReturnMsg.ReturnValue = "OK";
                            objReturnMsg.ReturnMessage = "Application Successfully submitted.";

                            //// Sending Email 
                            if (string.IsNullOrEmpty(objBlockingOut.Email) == false)
                            {
                                string strMsg = _email.GetEmailMsgBody(Globals.PENDING.ToString().Trim());
                                string strErMsg = string.Empty;
                                _email.SendEmail(strMsg, objBlockingOut.Email.ToString().Trim(), ref strErMsg);
                            }

                            //// Sending SMS 
                            string strSMSSending = ConfigurationManager.AppSettings["SMSSending"].ToString().Trim();
                            if (string.IsNullOrEmpty(objBlockingOut.AppID) == false && string.IsNullOrEmpty(objBlockingOut.Telephone) == false && strSMSSending.ToString().Trim() == "1")
                            {
                                string strMsg = "Dear Customer, \n Your fire certificate application has been successfully submitted. \n Reference No : " + objBlockingOut.AppID.Trim() + " \n Thank You.";
                                string strErMsg = string.Empty;
                                _sms.SendSMS(strMsg, objBlockingOut.Telephone.ToString().Trim(), ref strErMsg);
                            } 
                        }
                        else
                        {
                            throw new Exception("Error occured saving application");
                        } 
                      
                    }
                    else
                    {
                        // update first application
                        //bool updateFireApp = _appsubmit.UpdateFireCertificate(objCompleteDetails, ref objReturnMsg);
                        
                        //// update second application
                        //bool updateSuperApp = _appsubmit.UpdateSuperApplication(objSuperApp, ref objReturnMsg);

                        //// Get Fire App data
                        //objFireApp.CertificateId = objCompleteDetails.CertificateId;
                        //objFireApp.ClientID = objCompleteDetails.ClientID;
                        //objFireApp = _getData.GetApplicationByCertId(objFireApp, ref objReturnMsg);

                        // if both update
                        //if (updateFireApp && updateSuperApp)
                        //{
                        //    objReturnMsg.ReturnValue = "OK";
                        //    objReturnMsg.ReturnMessage = "Application Successfully updated.";
                        //}
                        //else
                        //{
                        //    throw new Exception("Error occured updating application");
                        //}
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

            //objReturnMsg.AppId = objFireApp.Id;
            return objReturnMsg;
        }
    }
}
