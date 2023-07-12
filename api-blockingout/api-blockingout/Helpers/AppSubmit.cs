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

        // Validate Blocking out application
        public bool ValidateApplication(BlockingOutApp objBlockingOut, ref ReturnMsgInfo returnMsg)
        {
            bool IsSuccess = true;
            objCmnFunctions = new CommonFunctions();

            // ClientID
            if (objBlockingOut.ClientID == null || objBlockingOut.ClientID == "")
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Invalid Client ID.";
                IsSuccess = false;
            }

            // User
            if (objBlockingOut.UserID == null || objBlockingOut.UserID == "")
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Invalid User.";
                IsSuccess = false;
            }

            // Company name 
            if (objBlockingOut.Applicant == null || objBlockingOut.Applicant == "")
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Invalid Applicant Name.";
                IsSuccess = false;
            }

            // Address
            if (objBlockingOut.Address == null || objBlockingOut.Address == "")
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Invalid Address.";
                IsSuccess = false;
            }

            // Telephone not null and validity
            if (objBlockingOut.Telephone == null || objBlockingOut.Telephone == "")
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Invalid telephone number.";
                IsSuccess = false;
            }
            else
            {
                if (objBlockingOut.Telephone.ToString().Trim().Length != 10)
                {
                    returnMsg.ReturnValue = "Error";
                    returnMsg.ReturnMessage = "Applicant's Mobile Number length should be 10.";
                    IsSuccess = false;
                }
                else if (objBlockingOut.Telephone.ToString().Trim().StartsWith("07") == false)
                {
                    returnMsg.ReturnValue = "Error";
                    returnMsg.ReturnMessage = "Invalid format in Applicant's Mobile Number. (07XXXXXXXX)";
                    IsSuccess = false;
                }
                else if (objCmnFunctions.ValidatePhoneNoDigits(objBlockingOut.Telephone.ToString().Trim()) == false)
                {
                    returnMsg.ReturnValue = "Error";
                    returnMsg.ReturnMessage = "Applicant's Mobile Number should contain only digits.";
                    IsSuccess = false;
                }
            }

            // Email Validation
            if (objBlockingOut.Email != null && objBlockingOut.Email != "" && objBlockingOut.Email.Length > 0)
            {
                if (objCmnFunctions.IsValidEmail(objBlockingOut.Email) == false)
                {
                    returnMsg.ReturnValue = "Error";
                    returnMsg.ReturnMessage = "Invalid Applicant's Email Address.";
                    IsSuccess = false;
                }
            }

            //Rate Number 
            if (objBlockingOut.AssessmentNo == null || objBlockingOut.AssessmentNo == "")
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Invalid Rate Number.";
                IsSuccess = false;
            }

            //Location 
            if (objBlockingOut.Location == null || objBlockingOut.Location == "")
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Invalid Location.";
                IsSuccess = false;
            }

            //Division Number 
            if (objBlockingOut.DivisionNo == null || objBlockingOut.DivisionNo == "")
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Invalid Division Number.";
                IsSuccess = false;
            }

            //Street 
            if (objBlockingOut.Street == null || objBlockingOut.Street == "")
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Invalid Street.";
                IsSuccess = false;
            }

            //Land Plan 
            if (objBlockingOut.OriginalPlan == null || objBlockingOut.OriginalPlan == "")
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Invalid Land Plan.";
                IsSuccess = false;
            }

            //Size Of Land 
            if (objBlockingOut.SizeOfLand == null || objBlockingOut.SizeOfLand == "")
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Invalid Land Size.";
                IsSuccess = false;
            }

            //Entrance 
            if (objBlockingOut.Entrance == null || objBlockingOut.Entrance == "")
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Invalid Entrance info.";
                IsSuccess = false;
            }

            //Location 
            if (objBlockingOut.DatesofDev == null || objBlockingOut.DatesofDev == "")
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Invalid Dates of Development.";
                IsSuccess = false;
            }

            return IsSuccess;
        }

        // Save Blocking out application
        public bool SaveApplication(BlockingOutApp objBlockingOut, ref ReturnMsgInfo returnMsg)
        {
            bool isSaved = false;
            Index objIndex = new Index();
            this.objConMain = new Connection_Main();

            objIndex = GetIndexes(objBlockingOut, ref returnMsg);
            var certId = objIndex.Code.ToString().Trim() + objIndex.NextId.ToString().Trim();
            objBlockingOut.AppID = certId;

            try
            {
                string conString = this.objConMain.Get_Main_Connection(objBlockingOut.ClientID);
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
                        strSql = "INSERT INTO tbl_blockingout_applications( AppId ,UserId ,Applicant ,Address ,Email ,Telephone ,Location ,AssessmentNo ,Street ,DivisionNo ,SurvPlanNo ,Surveyor ,SizeOfLand ,CurrentUse ,LandFill ,LevelsOfRoad ,AttLandDevCorp ,IfAggriLand ,AttGoviJana ,DevResMatters ,DevComMatters ,DevIndMatters ,DevOutMatters ,DevGrounds ,DevStreets ,DevOther ,InfWaterExist ,InfWaterProp ,InfEffExist ,InfEffProp ,InfDrainExist ,InfDrainProp ,InfElecExist ,InfElecProp ,IfBuilDiv ,DatesofDev ,OriginalPlan ,MoreThanHectare ,ElecBoardApp ,WaterBoardApp ,Entrance ,Status ,AppliedDate ,AppRejDate ,ExpDate) VALUES (@AppId ,@UserId ,@Applicant ,@Address ,@Email ,@Telephone ,@Location ,@AssessmentNo ,@Street ,@DivisionNo ,@SurvPlanNo ,@Surveyor ,@SizeOfLand ,@CurrentUse ,@LandFill ,@LevelsOfRoad ,@AttLandDevCorp ,@IfAggriLand ,@AttGoviJana ,@DevResMatters ,@DevComMatters ,@DevIndMatters ,@DevOutMatters ,@DevGrounds ,@DevStreets ,@DevOther ,@InfWaterExist ,@InfWaterProp ,@InfEffExist ,@InfEffProp ,@InfDrainExist ,@InfDrainProp ,@InfElecExist ,@InfElecProp ,@IfBuilDiv ,@DatesofDev ,@OriginalPlan ,@MoreThanHectare ,@ElecBoardApp ,@WaterBoardApp ,@Entrance, @Status ,@AppliedDate ,@AppRejDate ,@ExpDate); UPDATE tbl_blockingout_index SET NextApplicationId=(NextApplicationId + 1);";
                        cmd = new MySqlCommand(strSql, this.mySqlCon, this.mySqlTrans);
                        cmd.Parameters.AddWithValue("@AppId", objBlockingOut.AppID.ToString().Trim());
                        cmd.Parameters.AddWithValue("@UserID", objBlockingOut.UserID.ToString().Trim());
                        cmd.Parameters.AddWithValue("@Applicant", objBlockingOut.Applicant.ToString().Trim());
                        cmd.Parameters.AddWithValue("@Address", objBlockingOut.Address.ToString().Trim());
                        cmd.Parameters.AddWithValue("@Email", objBlockingOut.Email.ToString().Trim());
                        cmd.Parameters.AddWithValue("@Telephone", objBlockingOut.Telephone.ToString().Trim());
                        cmd.Parameters.AddWithValue("@Location", objBlockingOut.Location.ToString().Trim());
                        cmd.Parameters.AddWithValue("@AssessmentNo", objBlockingOut.AssessmentNo.ToString().Trim());
                        cmd.Parameters.AddWithValue("@Street", objBlockingOut.Street.ToString().Trim());
                        cmd.Parameters.AddWithValue("@DivisionNo", objBlockingOut.DivisionNo.ToString().Trim());
                        cmd.Parameters.AddWithValue("@SurvPlanNo", objBlockingOut.SurvPlanNo.ToString().Trim());
                        cmd.Parameters.AddWithValue("@Surveyor", "");
                        cmd.Parameters.AddWithValue("@SizeOfLand", objBlockingOut.SizeOfLand.ToString().Trim());
                        cmd.Parameters.AddWithValue("@CurrentUse", objBlockingOut.CurrentUse.ToString().Trim());
                        cmd.Parameters.AddWithValue("@LandFill", objBlockingOut.LandFill.ToString().Trim());
                        cmd.Parameters.AddWithValue("@LevelsOfRoad", objBlockingOut.LevelsOfRoad.ToString().Trim());
                        cmd.Parameters.AddWithValue("@AttLandDevCorp", objBlockingOut.AttLandDevCorp.ToString().Trim());
                        cmd.Parameters.AddWithValue("@IfAggriLand", objBlockingOut.IfAggriLand.ToString().Trim());
                        cmd.Parameters.AddWithValue("@AttGoviJana", objBlockingOut.AttGoviJana.ToString().Trim());
                        cmd.Parameters.AddWithValue("@DevResMatters", objBlockingOut.DevResMatters.ToString().Trim());
                        cmd.Parameters.AddWithValue("@DevComMatters", objBlockingOut.DevComMatters.ToString().Trim());
                        cmd.Parameters.AddWithValue("@DevIndMatters", objBlockingOut.DevIndMatters.ToString().Trim());
                        cmd.Parameters.AddWithValue("@DevOutMatters", objBlockingOut.DevOutMatters.ToString().Trim());
                        cmd.Parameters.AddWithValue("@DevGrounds", objBlockingOut.DevGrounds.ToString().Trim());
                        cmd.Parameters.AddWithValue("@DevStreets", objBlockingOut.DevStreets.ToString().Trim());
                        cmd.Parameters.AddWithValue("@DevOther", objBlockingOut.DevOther.ToString().Trim());
                        cmd.Parameters.AddWithValue("@InfWaterExist", objBlockingOut.InfWaterExist.ToString().Trim());
                        cmd.Parameters.AddWithValue("@InfWaterProp", objBlockingOut.InfWaterProp.ToString().Trim());
                        cmd.Parameters.AddWithValue("@InfEffExist", objBlockingOut.InfEffExist.ToString().Trim());
                        cmd.Parameters.AddWithValue("@InfEffProp", objBlockingOut.InfEffProp.ToString().Trim());
                        cmd.Parameters.AddWithValue("@InfDrainExist", objBlockingOut.InfDrainExist.ToString().Trim());
                        cmd.Parameters.AddWithValue("@InfDrainProp", objBlockingOut.InfDrainProp.ToString().Trim());
                        cmd.Parameters.AddWithValue("@InfElecExist", objBlockingOut.InfElecExist.ToString().Trim());
                        cmd.Parameters.AddWithValue("@InfElecProp", objBlockingOut.InfElecProp.ToString().Trim());
                        cmd.Parameters.AddWithValue("@IfBuilDiv", objBlockingOut.IfBuilDiv.ToString().Trim());
                        cmd.Parameters.AddWithValue("@DatesofDev", objBlockingOut.DatesofDev.ToString().Trim());
                        cmd.Parameters.AddWithValue("@OriginalPlan", objBlockingOut.OriginalPlan.ToString().Trim());
                        cmd.Parameters.AddWithValue("@MoreThanHectare", objBlockingOut.MoreThanHectare.ToString().Trim());                        
                        cmd.Parameters.AddWithValue("@ElecBoardApp", objBlockingOut.ElecBoardApp.ToString().Trim());
                        cmd.Parameters.AddWithValue("@WaterBoardApp", objBlockingOut.WaterBoardApp.ToString().Trim());
                        cmd.Parameters.AddWithValue("@Entrance", objBlockingOut.Entrance.ToString().Trim());
                        cmd.Parameters.AddWithValue("@Status", Globals.PENDING.ToString().Trim());
                        cmd.Parameters.AddWithValue("@AppliedDate", objBlockingOut.AppliedDate.ToString().Trim());
                        cmd.Parameters.AddWithValue("@AppRejDate", "");
                        cmd.Parameters.AddWithValue("@ExpDate", "");                        
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

        // Get Indexes
        public Index GetIndexes(BlockingOutApp objBlockingOut, ref ReturnMsgInfo objReturnMsg)
        {
            Index objIndexes = new Index();
            this.objConMain = new Connection_Main();

            string conString = this.objConMain.Get_Main_Connection(objBlockingOut.ClientID);
            if (conString == null || conString == "")
            {
                objReturnMsg.ReturnValue = "Error";
                objReturnMsg.ReturnMessage = "Connection not found.";
            }
            else
            {
                try
                {
                    this.mySqlCon = new MySqlConnection(conString);
                    if (this.mySqlCon.State.ToString() != "Open")
                    {
                        this.mySqlCon.Open();
                    }
                    else
                    {
                        objReturnMsg.ReturnValue = "Error";
                        objReturnMsg.ReturnMessage = "Connection was already opened.";
                    }
                    if (this.mySqlCon != null)
                    {
                        strSql = "SELECT * FROM tbl_blockingout_index;";
                        da = new MySqlDataAdapter(strSql, this.mySqlCon);
                        ds = new DataSet();
                        da.Fill(ds, "Application");
                        dt = ds.Tables["Application"];
                        if (dt.Rows.Count > 0)
                        {
                            foreach (DataRow dtRow in dt.Rows)
                            {
                                Index objIndex = new Index();
                                objIndex.Code = dtRow["Code"].ToString().Trim();
                                objIndex.NextId = (int)dtRow["NextApplicationId"];
                                objIndex.NextPayment = (int)dtRow["NextPaymentId"];

                                objIndexes = objIndex;
                            }
                            objReturnMsg.ReturnValue = "OK";
                            objReturnMsg.ReturnMessage = "Data found";
                        }
                        else
                        {
                            objReturnMsg.ReturnValue = "Error";
                            objReturnMsg.ReturnMessage = "No data found";
                        }
                    }
                }
                catch (Exception ex)
                {
                    objReturnMsg.ReturnValue = "Error";
                    objReturnMsg.ReturnMessage = ex.Message;
                }
                finally
                {
                    if (this.mySqlCon != null)
                    {
                        this.mySqlCon.Close();
                    }
                }
            }


            return objIndexes;
        }

    }
}