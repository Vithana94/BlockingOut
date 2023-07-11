using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace api_rate.Models
{
    public class BlockingListOutput
    {
        public List<BlockingOutApp> ListBlockingOutApps { get; set; }
        public ReturnMsgInfo ReturnMsg { get; set; }
    }
}