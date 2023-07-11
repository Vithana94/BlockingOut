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
    public class SupervisorVisitedController : ApiController
    {
        private IAppSubmit _appSubmit = null;
        private IGetDate _getDate = null;

        public SupervisorVisitedController(IAppSubmit IAppSubmit, IGetDate IGetDate)
        {
            _appSubmit = IAppSubmit;
            _getDate = IGetDate;
        }

        // POST /api/FireAppReject
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
                else if (objFireApp.DateActReview == null || objFireApp.DateActReview == "")
                {
                    throw new Exception("Invalid Date");
                }
                else
                {
                    // Set supervisor status to 1 (default value 0 for uninspected applications)
                    _appSubmit.SetSupervisorVisited(objFireApp, ref objReturnMsg);

                    if (objReturnMsg.ReturnValue == "OK")
                    {
                        objReturnMsg.ReturnValue = "OK";
                        objReturnMsg.ReturnMessage = "Status set to inspected.";
                    }
                    else
                    {
                        throw new Exception("Error occured setting status");
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
