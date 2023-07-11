using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using api_rate.Models;
using api_rate.Helpers;
using api_rate.Filters;
using System.Web.Http;
using System.Net.Http;

namespace api_rate.Controllers
{
    [JwtCustomAuth]
    public class BlockingOutByIdController : ApiController
    {
        private IGetData _getData = null;

        public BlockingOutByIdController(IGetData IGetData)
        {
            _getData = IGetData;
        }

        // POST /api/BlockingOutById
        public BlockingOutput Post([FromBody]BlockingOutApp objBlockingOut)
        {
            BlockingOutput objBlockingOutput = new BlockingOutput();
            BlockingOutApp objBlockingOutReturn = new BlockingOutApp();
            ReturnMsgInfo objReturnMsg = new ReturnMsgInfo();

            try
            {
                if (objBlockingOut.ClientID == null || objBlockingOut.ClientID == "")
                {
                    throw new Exception("Invalid Client ID.");
                }
                else if (objBlockingOut.ID == 0)
                {
                    throw new Exception("Application id is required");
                }
                else
                {
                    // get Blocking out application
                    objBlockingOutReturn = _getData.GetApplicationById(objBlockingOut, ref objReturnMsg);

                    if (objReturnMsg.ReturnValue != "OK")
                    {
                        throw new Exception("Error occurred when retrieve application details. " + objReturnMsg.ReturnMessage.ToString().Trim());
                    }
                }
            }
            catch (Exception ex)
            {
                objReturnMsg.ReturnValue = "Error";
                objReturnMsg.ReturnMessage = ex.Message.ToString().Trim();
            }

            objBlockingOutput.BlockingOutApplication = objBlockingOutReturn;
            objBlockingOutput.ReturnMsg = objReturnMsg;

            return objBlockingOutput;
        }
    }
}