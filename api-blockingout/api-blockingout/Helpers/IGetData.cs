using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using api_rate.Models;

namespace api_rate.Helpers
{
    public interface IGetData
    {
        // Get a Blocking Out application by its Id         
        BlockingOutApp GetApplicationById(BlockingOutApp objApplication, ref ReturnMsgInfo returnMsg);

        // Get a Blocking Out application by App Id
        BlockingOutApp GetApplicationByAppId(BlockingOutApp objApplication, ref ReturnMsgInfo returnMsg);

        // Get List of Blocking Out applications by username
        List<BlockingOutApp> GetApplicationsByUserId(BlockingOutApp objApplication, ref ReturnMsgInfo returnMsg);

        // Get Application by UserId and Id
        BlockingOutApp GetApplicationByUserIdAndId(BlockingOutApp objApplication, ref ReturnMsgInfo returnMsg);
    }
}