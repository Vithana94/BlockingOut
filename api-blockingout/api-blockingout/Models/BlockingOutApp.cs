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
        public string Location { get; set; }
        public string AssessmentNo { get; set; }
        public string Street { get; set; }
        public string DivisionNo { get; set; }
        public string SurvPlanNo { get; set; }
        public string Surveyor { get; set; }
        public string SizeOfLand { get; set; }
        public string CurrentUse { get; set; }
        public string LandFill { get; set; }
        public string LevelsOfRoad { get; set; }
        public string AttLandDevCorp { get; set; }
        public string IfAggriLand { get; set; }
        public string AttGoviJana { get; set; }
        public string DevResMatters { get; set; }
        public string DevComMatters { get; set; }
        public string DevIndMatters { get; set; }
        public string DevOutMatters { get; set; }
        public string DevGrounds { get; set; }
        public string DevStreets { get; set; }
        public string DevOther { get; set; }
        public string InfWaterExist { get; set; }
        public string InfWaterProp { get; set; }
        public string InfEffExist { get; set; }
        public string InfEffProp { get; set; }
        public string InfDrainExist { get; set; }
        public string InfDrainProp { get; set; }
        public string InfElecExist { get; set; }
        public string InfElecProp { get; set; }
        public string IfBuilDiv { get; set; }
        public string DatesofDev { get; set; }
        public string OriginalPlan { get; set; }
        public string MoreThanHectare { get; set; }
        public string ElecBoardApp { get; set; }
        public string WaterBoardApp { get; set; }
        public string Entrance { get; set; }
        public string Status { get; set; }
        public string AppliedDate { get; set; }
        public string AppRejDate { get; set; }
        public string ExpDate { get; set; }

        public string StartDate { get; set; }
        public string EndDate { get; set; }
        
    }
}