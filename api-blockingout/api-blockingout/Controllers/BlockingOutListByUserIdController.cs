using api_rate.Filters;
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
    public class BlockingOutListByUserIdController : ApiController
    {
        private IGetData _getData = null;

        public BlockingOutListByUserIdController(IGetData IGetData)
        {
            _getData = IGetData;
        }

        //POST /api/BlockingOutListByUserId
        public BlockingListOutput Post([FromBody]BlockingOutApp objBlockingOutApp)
        {
            BlockingListOutput objBlockingListoutput = new BlockingListOutput();
            ReturnMsgInfo objReturnMsg = new ReturnMsgInfo();
            List<BlockingOutApp> lstBlockingOut = new List<BlockingOutApp>();

            try
            {
                if (objBlockingOutApp.ClientID == null || objBlockingOutApp.ClientID == "")
                {
                    throw new Exception("Invalid Client ID.");
                }
                else if (objBlockingOutApp.UserID == null || objBlockingOutApp.UserID == "")
                {
                    throw new Exception("Invalid User.");
                }
                else
                {
                    // get fire applications list
                    lstBlockingOut = _getData.GetApplicationsByUserId(objBlockingOutApp, ref objReturnMsg);

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

            objBlockingListoutput.ListBlockingOutApps = lstBlockingOut;
            objBlockingListoutput.ReturnMsg = objReturnMsg;

            return objBlockingListoutput;
        }
    }
}
