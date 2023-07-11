using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using api_rate.Models;

namespace api_rate.Helpers
{
    public interface IAppSubmit
    {
        // Validate Blocking out application
        bool ValidateApplication(BlockingOutApp objBlockingOut, ref ReturnMsgInfo returnMsg);

        // Save Blocking out application
        bool SaveApplication(BlockingOutApp objBlockingOut, ref ReturnMsgInfo returnMsg);
    }
}
