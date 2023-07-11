﻿using api_rate.Filters;
using api_rate.Helpers;
using api_rate.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace api_rate.Controllers
{
    [JwtCustomAuth]
    public class FireAppHoldController : ApiController
    {
        private IAppSubmit _appSubmit = null;
        private IGetData _getData = null;
        private IGetDate _getDate = null;
        private IEmail _email = null;
        private ISMS _sms = null;

        public FireAppHoldController(IAppSubmit IAppSubmit, IGetData IGetData, IEmail IEmail, ISMS ISMS, IGetDate IGetDate)
        {
            _appSubmit = IAppSubmit;
            _getData = IGetData;
            _getDate = IGetDate;
            _email = IEmail;
            _sms = ISMS;
        }

        // POST /api/FireAppHold
        public ReturnMsgInfo Post([FromBody]FireCertificateApplication objFireApp)
        {
            ReturnMsgInfo objReturnMsg = new ReturnMsgInfo();
            FireCertificateApplication objFireCert = new FireCertificateApplication();

            try
            {
                if (objFireApp.ClientID == null || objFireApp.ClientID == "")
                {
                    throw new Exception("Invalid Client ID.");
                }
                else if (objFireApp.Id == null)
                {
                    throw new Exception("Application id is required");
                }
                else
                {
                    //Set Hold date
                    objFireApp.DateAppRej = _getDate.GetFormattedDate(DateTime.Now).ToString("yyyy/MM/dd HH:mm").Trim();

                    // Holding Application
                    _appSubmit.SetStatusHold(objFireApp, ref objReturnMsg);

                    if (objReturnMsg.ReturnValue == "OK")
                    {
                        // Get application data for email and mobile 
                        objFireCert = _getData.GetApplicationById(objFireApp, ref objReturnMsg);
                        // Sending Email 
                        if (string.IsNullOrEmpty(objFireCert.Email) == false)
                        {
                            string strMsg = _email.GetEmailMsgBody(Globals.HOLD.ToString().Trim());
                            string strErMsg = string.Empty;
                            _email.SendEmail(strMsg, objFireCert.Email.ToString().Trim(), ref strErMsg);
                        }

                        // Sending SMS 
                        string strSMSSending = ConfigurationManager.AppSettings["SMSSending"].ToString().Trim();
                        if (string.IsNullOrEmpty(objFireCert.CertificateId) == false && string.IsNullOrEmpty(objFireCert.Telephone) == false && strSMSSending.ToString().Trim() == "1")
                        {
                            string strMsg = "Dear Customer,\n Your fire cerificate application request is set to hold. \n Reason for hold : "+ objFireApp.RejectReason +"\n Reference No : " + objFireCert.CertificateId.Trim() + " \n Thank You.";
                            string strErMsg = string.Empty;
                            _sms.SendSMS(strMsg, objFireCert.Telephone.ToString().Trim(), ref strErMsg);
                        }

                        objReturnMsg.ReturnValue = "OK";
                        objReturnMsg.ReturnMessage = "Application Set to Hold.";

                    }
                    else
                    {
                        throw new Exception("Error occured approve application");
                    }

                }
            }
            catch (Exception ex)
            {
                objReturnMsg.ReturnValue = "Error";
                objReturnMsg.ReturnMessage = ex.Message.ToString().Trim();
            }

            return objReturnMsg;
        }
    }
}
