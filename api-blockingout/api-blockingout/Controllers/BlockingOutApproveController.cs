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
    public class BlockingOutApproveController : ApiController
    {
        private IAppSubmit _appsubmit = null;
        private IGetDate _getDate = null;
        private IGetData _getData = null;
        private ISMS _sms = null;
        private IEmail _email = null;

        public BlockingOutApproveController(IAppSubmit IAppSubmit, IGetDate IGetDate, ISMS ISMS, IEmail IEmail, IGetData IGetData)
        {
            _appsubmit = IAppSubmit;
            _getDate = IGetDate;
            _sms = ISMS;
            _email = IEmail;
            _getData = IGetData;
        }

        // POST /api/BlockingOutApprove
        public ReturnMsgInfo Post([FromBody]BlockingOutApp objBlockingOut)
        {
            ReturnMsgInfo objReturnMsg = new ReturnMsgInfo();

            if (objBlockingOut.ClientID == null || objBlockingOut.ClientID == "")
            {
                throw new Exception("Invalid Client ID.");
            }
            else if (objBlockingOut.ID == 0)
            {
                throw new Exception("Invalid ID");
            }
            else
            {
                try
                {
                    if (_appsubmit.SetStatusApproved(objBlockingOut, ref objReturnMsg))
                    {
                        objReturnMsg.ReturnValue = "OK";
                        objReturnMsg.ReturnMessage = "Application Approved.";
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
