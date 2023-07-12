using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using api_rate.Models;
using api_rate.Filters;
using api_rate.Helpers;

namespace api_rate.Controllers
{
    [JwtCustomAuth]
    public class BlockingOutAssignSurvController : ApiController
    {
        private IAppSubmit _appsubmit = null;
        private IGetDate _getDate = null;
        private IGetData _getData = null;
        private ISMS _sms = null;
        private IEmail _email = null;

        public BlockingOutAssignSurvController(IAppSubmit IAppSubmit, IGetDate IGetDate, ISMS ISMS, IEmail IEmail, IGetData IGetData)
        {
            _appsubmit = IAppSubmit;
            _getDate = IGetDate;
            _sms = ISMS;
            _email = IEmail;
            _getData = IGetData;
        }

        // POST /api/BlockingOutAssignSurv
        public ReturnMsgInfo Post([FromBody]BlockingOutApp objBlockingOut)
        {
            ReturnMsgInfo objReturnMsg = new ReturnMsgInfo();

            if (objBlockingOut.ClientID == null || objBlockingOut.ClientID == "")
            {
                throw new Exception("Invalid Client ID.");
            }
            else if (objBlockingOut.Surveyor == null || objBlockingOut.Surveyor == "")
            {
                throw new Exception("Invalid Surveyor.");
            }
            else if (objBlockingOut.SurvayDate == null || objBlockingOut.SurvayDate == "")
            {
                throw new Exception("Invalid Survey Date");
            }
            else if (objBlockingOut.ID == 0)
            {
                throw new Exception("Invalid ID");
            }
            else
            {
                try
                {
                    if (_appsubmit.AssignSurveyor(objBlockingOut, ref objReturnMsg))
                    {
                        objReturnMsg.ReturnValue = "OK";
                        objReturnMsg.ReturnMessage = "Surveyor Assigned.";
                    }
                }
                catch (Exception ex)
                {
                    objReturnMsg.ReturnValue = "Error";
                    objReturnMsg.ReturnMessage = ex.Message.ToString().Trim();
                }
            }

            return objReturnMsg;
        }
    }
}
