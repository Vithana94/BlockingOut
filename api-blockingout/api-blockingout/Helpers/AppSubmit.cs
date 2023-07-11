using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using api_rate.Models;
using MySql.Data.MySqlClient;
using System.Data;

namespace api_rate.Helpers
{
    public class AppSubmit : IAppSubmit
    {
        private MySqlConnection mySqlCon = null;
        private MySqlTransaction mySqlTrans;
        private DataTable dt;
        private DataSet ds;
        private MySqlDataAdapter da;
        private string strSql;
        private Connection_Main objConMain;
        private CommonFunctions objCmnFunctions = null;
        private MySqlCommand cmd = null;

        // Validate Municipal Council Application
        public bool ValidateApplication(FireCertificateApplication objFireAppDetails, ref ReturnMsgInfo returnMsg)
        {
            bool IsSuccess = true;
            objCmnFunctions = new CommonFunctions();

            // ClientID
            if (objFireAppDetails.ClientID == null || objFireAppDetails.ClientID == "")
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Invalid Client ID.";
                IsSuccess = false;
            }

            // User
            if (objFireAppDetails.user == null || objFireAppDetails.user == "")
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Invalid User.";
                IsSuccess = false;
            }

            // Company name 
            if (objFireAppDetails.CompanyName == null || objFireAppDetails.CompanyName == "")
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Invalid Company Name.";
                IsSuccess = false;
            }

            // Address
            if (objFireAppDetails.Address == null || objFireAppDetails.Address == "")
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Invalid Address.";
                IsSuccess = false;
            }

            // Telephone not null and validity
            if (objFireAppDetails.Telephone == null || objFireAppDetails.Telephone == "")
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Invalid telephone number.";
                IsSuccess = false;
            }
            else
            {
                if (objFireAppDetails.Telephone.ToString().Trim().Length != 10)
                {
                    returnMsg.ReturnValue = "Error";
                    returnMsg.ReturnMessage = "Applicant's Mobile Number length should be 10.";
                    IsSuccess = false;
                }
                else if (objFireAppDetails.Telephone.ToString().Trim().StartsWith("0") == false)
                {
                    returnMsg.ReturnValue = "Error";
                    returnMsg.ReturnMessage = "Invalid format in Applicant's Mobile Number. (0XXXXXXXXX)";
                    IsSuccess = false;
                }
                else if (objCmnFunctions.ValidatePhoneNoDigits(objFireAppDetails.Telephone.ToString().Trim()) == false)
                {
                    returnMsg.ReturnValue = "Error";
                    returnMsg.ReturnMessage = "Applicant's Mobile Number should contain only digits.";
                    IsSuccess = false;
                }
            }

            //Distance from council number input
            if (objFireAppDetails.DistanceFromCouncil == null || Decimal.Parse(objFireAppDetails.DistanceFromCouncil) < 0)
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Invalid Distance value.";
                IsSuccess = false;
            }

            //nature of business
            if (objFireAppDetails.NatureOfBusiness == null || objFireAppDetails.NatureOfBusiness == "")
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Invalid Nature of Business.";
                IsSuccess = false;
            }

            // Building plan attachment name 
            if (objFireAppDetails.CertificateId == null || objFireAppDetails.CertificateId == "")
            {
                if (objFireAppDetails.BuildingPlan == null || objFireAppDetails.BuildingPlan == "")
                {
                    returnMsg.ReturnValue = "Error";
                    returnMsg.ReturnMessage = "Building Plan is required.";
                    IsSuccess = false;
                }
            }

            // Total Land area
            if (objFireAppDetails.TotalLand == null || Decimal.Parse(objFireAppDetails.TotalLand) < 0)
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Invalid Land value.";
                IsSuccess = false;
            }

            // Road from council text
            if (objFireAppDetails.RoadFromCouncil == null || objFireAppDetails.RoadFromCouncil == "")
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Road from Council is required.";
                IsSuccess = false;
            }

            //Owner name text
            if (objFireAppDetails.OwnerName == null || objFireAppDetails.OwnerName == "")
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Owner name is required.";
                IsSuccess = false;
            }

            // Email Validation
            if (objFireAppDetails.Email != null && objFireAppDetails.Email != "" && objFireAppDetails.Email.Length > 0)
            {
                if (objCmnFunctions.IsValidEmail(objFireAppDetails.Email) == false)
                {
                    returnMsg.ReturnValue = "Error";
                    returnMsg.ReturnMessage = "Invalid Applicant's Email Address.";
                    IsSuccess = false;
                }
            }

            // Applicant Name
            if (objFireAppDetails.ApplicantName == null || objFireAppDetails.ApplicantName == "")
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Invalid Applicant Name.";
                IsSuccess = false;
            }

            // Owner Name
            if (objFireAppDetails.BOwnerName == null || objFireAppDetails.BOwnerName == "")
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Invalid Owner Name.";
                IsSuccess = false;
            }

            // Emergency Number
            if (objFireAppDetails.EmergencyContact == null || objFireAppDetails.EmergencyContact == "")
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Invalid Emergency Contact person.";
                IsSuccess = false;
            }

            // Buildning Address
            if (objFireAppDetails.BAddress == null || objFireAppDetails.BAddress == "")
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Invalid telephone number.";
                IsSuccess = false;
            }

            // Building Telephone
            if (objFireAppDetails.BTelephone == null || objFireAppDetails.BTelephone == "")
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Invalid telephone number.";
                IsSuccess = false;
            }
            else
            {
                if (objFireAppDetails.BTelephone.ToString().Trim().Length != 10)
                {
                    returnMsg.ReturnValue = "Error";
                    returnMsg.ReturnMessage = "Applicant's Telephoone Number length should be 10.";
                    IsSuccess = false;
                }
                else if (objFireAppDetails.BTelephone.ToString().Trim().StartsWith("0") == false)
                {
                    returnMsg.ReturnValue = "Error";
                    returnMsg.ReturnMessage = "Invalid format in Applicant's Telephone Number. (0XXXXXXXXX)";
                    IsSuccess = false;
                }
                else if (objCmnFunctions.ValidatePhoneNoDigits(objFireAppDetails.BTelephone.ToString().Trim()) == false)
                {
                    returnMsg.ReturnValue = "Error";
                    returnMsg.ReturnMessage = "Applicant's Telephone Number should contain only digits.";
                    IsSuccess = false;
                }
            }

            // Mobile
            if (objFireAppDetails.Mobile == null || objFireAppDetails.Mobile == "")
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Invalid mobile number.";
                IsSuccess = false;
            }
            else
            {
                if (objFireAppDetails.Mobile.ToString().Trim().Length != 10)
                {
                    returnMsg.ReturnValue = "Error";
                    returnMsg.ReturnMessage = "Applicant's Mobile Number length should be 10.";
                    IsSuccess = false;
                }
                else if (objFireAppDetails.Mobile.ToString().Trim().StartsWith("0") == false)
                {
                    returnMsg.ReturnValue = "Error";
                    returnMsg.ReturnMessage = "Invalid format in Applicant's Mobile Number. (0XXXXXXXXX)";
                    IsSuccess = false;
                }
                else if (objCmnFunctions.ValidatePhoneNoDigits(objFireAppDetails.Mobile.ToString().Trim()) == false)
                {
                    returnMsg.ReturnValue = "Error";
                    returnMsg.ReturnMessage = "Applicant's Mobile Number should contain only digits.";
                    IsSuccess = false;
                }
            }

            // Land Area number 
            if (Decimal.Parse(objFireAppDetails.LandArea) <= 0)
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Invalid Land Area.";
                IsSuccess = false;
            }

            // Capacity Number
            if (Decimal.Parse(objFireAppDetails.Capacity) <= 0)
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Invalid Capacity.";
                IsSuccess = false;
            }

            // Stories Number
            if (objFireAppDetails.Stories < 1)
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Invalid Number of stories.";
                IsSuccess = false;
            }

            // Plan Availability text
            //if (objFireAppDetails.PlanAvailability == null || objFireAppDetails.PlanAvailability == "")
            //{
            //    returnMsg.ReturnValue = "Error";
            //    returnMsg.ReturnMessage = "Invalid Plan information.";
            //    IsSuccess = false;
            //}

            // Exitways text
            if (objFireAppDetails.Exitways == null || objFireAppDetails.Exitways == "")
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Invalid Exitway information.";
                IsSuccess = false;
            }

            // Emergency Exits in text
            if (objFireAppDetails.EmergencyExits == null || objFireAppDetails.EmergencyExits == "")
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Invalid Emergency Exit Information.";
                IsSuccess = false;
            }

            // Day Manpower number
            if (objFireAppDetails.DayManpower < 0)
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Invalid Capacity.";
                IsSuccess = false;
            }

            // Night manpower number
            if (objFireAppDetails.NightManpower < 0)
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Invalid Capacity.";
                IsSuccess = false;
            }

            // Tank Capacity number
            if (Decimal.Parse(objFireAppDetails.TankCapacity) <= 0)
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Invalid Capacity.";
                IsSuccess = false;
            }

            // Fire hose location in text
            if (objFireAppDetails.FirehoseLocation == null || objFireAppDetails.FirehoseLocation == "")
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Invalid Fire hose location Information.";
                IsSuccess = false;
            }

            // Electricity phase (three or one)
            if (objFireAppDetails.ElecPhase == null || objFireAppDetails.ElecPhase == "")
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Invalid Electricity phase Information.";
                IsSuccess = false;
            }

            return IsSuccess;
        }

        // Submit Municipal Council Application
        public bool SaveApplication(FireCertificateApplication objFireAppDetails, ref ReturnMsgInfo returnMsg)
        {
            bool isSaved = false;
            Index objIndex = new Index();
            this.objConMain = new Connection_Main();

            objIndex = GetIndexes(objFireAppDetails, ref returnMsg);
            var certId = objIndex.Code.ToString().Trim() + objIndex.NextId.ToString().Trim();
            objFireAppDetails.CertificateId = certId;

            try
            {
                string conString = this.objConMain.Get_Main_Connection(objFireAppDetails.ClientID);
                if (conString == null || conString == "")
                {
                    returnMsg.ReturnValue = "Error";
                    returnMsg.ReturnMessage = "Connection not found.";
                }
                else
                {
                    this.mySqlCon = new MySqlConnection(conString);

                    if (this.mySqlCon.State.ToString() != "Open")
                    {
                        this.mySqlCon.Open();
                    }
                    else
                    {
                        returnMsg.ReturnValue = "Error";
                        returnMsg.ReturnMessage = "Connection was already opened.";
                    }

                    if (this.mySqlCon != null)
                    {
                        strSql = "INSERT INTO tbl_firecertificate_application(CertificateId, CompanyName, Address, Telephone, DistanceFromCouncil, NatureOfBusiness, BuildingDescription ,BuildingPlan, TotalLand, RoadFromCouncil, OwnerName, CurrentFirePlan, Status, Email, Supervisor, DateApplied, DateReviewed, user, DateIssued, DateAppRej, superVisit, DateActReview) VALUES (@CertificateId, @CompanyName, @Address, @Telephone, @DistanceFromCouncil, @NatureOfBusiness, @BuildingDescription,@BuildingPlan, @TotalLand, @RoadFromCouncil, @OwnerName, @CurrentFirePlan, @Status, @Email, @Supervisor, @DateApplied, @DateReviewed, @user, @DateIssued, @DateAppRej, @superVisit, @DateActReview); UPDATE tbl_firecertificate_index SET NextApplicationId=(NextApplicationId + 1);";
                        cmd = new MySqlCommand(strSql, this.mySqlCon, this.mySqlTrans);
                        cmd.Parameters.AddWithValue("@CertificateId", objFireAppDetails.CertificateId.ToString().Trim());
                        cmd.Parameters.AddWithValue("@CompanyName", objFireAppDetails.CompanyName);
                        cmd.Parameters.AddWithValue("@Address", objFireAppDetails.Address);
                        cmd.Parameters.AddWithValue("@Telephone", objFireAppDetails.Telephone);
                        cmd.Parameters.AddWithValue("@DistanceFromCouncil", objFireAppDetails.DistanceFromCouncil);
                        cmd.Parameters.AddWithValue("@NatureOfBusiness", objFireAppDetails.NatureOfBusiness);
                        cmd.Parameters.AddWithValue("@BuildingDescription", objFireAppDetails.BuildingDescription);
                        cmd.Parameters.AddWithValue("@BuildingPlan", objFireAppDetails.BuildingPlan);
                        cmd.Parameters.AddWithValue("@TotalLand", objFireAppDetails.TotalLand);
                        cmd.Parameters.AddWithValue("@RoadFromCouncil", objFireAppDetails.RoadFromCouncil);
                        cmd.Parameters.AddWithValue("@OwnerName", objFireAppDetails.OwnerName);
                        cmd.Parameters.AddWithValue("@CurrentFirePlan", objFireAppDetails.CurrentFirePlan);
                        cmd.Parameters.AddWithValue("@Status", Globals.PENDING.ToString().Trim());
                        cmd.Parameters.AddWithValue("@Email", objFireAppDetails.Email);
                        cmd.Parameters.AddWithValue("@Supervisor", "");
                        cmd.Parameters.AddWithValue("@DateApplied", objFireAppDetails.DateApplied);
                        cmd.Parameters.AddWithValue("@DateReviewed", "");
                        cmd.Parameters.AddWithValue("@DateIssued", "");
                        cmd.Parameters.AddWithValue("@DateAppRej", "");
                        cmd.Parameters.AddWithValue("@user", objFireAppDetails.user);
                        cmd.Parameters.AddWithValue("@superVisit", "0");
                        cmd.Parameters.AddWithValue("@DateActReview", "");
                        cmd.ExecuteNonQuery();
                        isSaved = true;

                        returnMsg.ReturnValue = "OK";
                        returnMsg.ReturnMessage = "Submitted successfully";
                    }
                }
            }
            catch (Exception ex)
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = ex.Message;
            }
            finally
            {
                if (this.mySqlCon != null)
                {
                    if (this.mySqlCon.State.ToString() == "Open")
                    {
                        this.mySqlCon.Close();
                    }
                }
            }
            return isSaved;
        }

        // Validate Fire Department Application
    }
}