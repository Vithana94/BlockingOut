using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace api_rate.Models
{
    public class BlockingOutApp
    {
        public string ClientID { get; set; }
        public int ID { get; set; }
        public string AppID { get; set; }
        public string UserID { get; set; }
        public string Applicant { get; set; }
        public string Address { get; set; }
        public string Telephone { get; set; }
        public string Email { get; set; }
        public string RateNo { get; set; }
        public string Location { get; set; }
        public string DivisionNo { get; set; }
        public string Street { get; set; }
        public string LandPlan { get; set; }
        public string SizeOfLand { get; set; }
        public string ElecBoardApp { get; set; }
        public string WaterBoardApp { get; set; }
        public string Entrance { get; set; }
        public string IfBuilDiv { get; set; }
        public string DatesofDev { get; set; }
        public string AppliedDate { get; set; }
        public string AppRejDate { get; set; }
        public string ExpDate { get; set; }
  
        
    }
}