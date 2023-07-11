﻿using api_rate.Filters;
using api_rate.Helpers;
using api_rate.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace api_rate.Controllers
{
    [JwtCustomAuth]
    public class FireAppPendingByDateController : ApiController
    {
        private IGetData _getData = null;

        public FireAppPendingByDateController(IGetData IGetData)
        {
            _getData = IGetData;
        }

        // POST /api/FireAppPendingByDate
        public FireAppDetailsOutput Post([FromBody]FireCertificateApplication objFireApplication)
        {
            FireAppDetailsOutput objFireAppOutput = new FireAppDetailsOutput();
            //List<PaymentDetails> lstPayment = new List<PaymentDetails>();
            //PaymentDetails objPayment = new PaymentDetails();
            ReturnMsgInfo objReturnMsg = new ReturnMsgInfo();
            List<FireCertificateApplication> lstFireApplication = new List<FireCertificateApplication>();

            try
            {
                if (objFireApplication.ClientID == null || objFireApplication.ClientID == "")
                {
                    throw new Exception("Invalid Client ID.");
                }
                else if (objFireApplication.StartDate == null || objFireApplication.StartDate == "")
                {
                    throw new Exception("Invalid Start Date.");
                }
                else if (objFireApplication.EndDate == null || objFireApplication.EndDate == "")
                {
                    throw new Exception("Invalid End Date.");
                }
                else
                {
                    // set status attribute to pending 
                    objFireApplication.Status = Globals.PENDING.ToString().Trim();

                    // get applications list
                    lstFireApplication = _getData.GetAppDetailsByDate(objFireApplication, ref objReturnMsg);

                    // get payment list
                    //foreach (FireCertificateApplication FireApp in lstFireApplication)
                    //{
                    //    FireApp.ClientID = objFireApplication.ClientID;
                    //    objPayment = _getData.GetPaymentDetails(FireApp, ref objReturnMsg);
                    //    lstPayment.Add(objPayment);
                    //}

                    if (objReturnMsg.ReturnValue != "OK")
                    {
                        throw new Exception(objReturnMsg.ReturnMessage.ToString().Trim());
                    }
                }

            }
            catch (Exception ex)
            {
                objReturnMsg.ReturnValue = "Error";
                objReturnMsg.ReturnMessage = ex.Message.ToString().Trim();
            }

            objFireAppOutput.ListFireApplication = lstFireApplication;
            //objFireAppOutput.ListPayment = lstPayment;
            objFireAppOutput.ReturnMessageInfo = objReturnMsg;

            return objFireAppOutput;
        }

    }
}
