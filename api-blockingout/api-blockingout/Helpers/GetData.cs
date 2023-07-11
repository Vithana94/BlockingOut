using api_rate.Models;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;


namespace api_rate.Helpers
{
    public class GetData : IGetData
    {
        private MySqlConnection mySqlCon = null;
        private string strSql;
        private DataTable dt;
        private DataSet ds;
        private MySqlDataAdapter da;
        private Connection_Main objConMain;

        // Get a Blocking Out application by its Id  
        public BlockingOutApp GetApplicationById(BlockingOutApp objApplication, ref ReturnMsgInfo returnMsg)
        {
            BlockingOutApp objRetBlockingOut = new BlockingOutApp();
            this.objConMain = new Connection_Main();

            string connString = this.objConMain.Get_Main_Connection(objApplication.ClientID);

            if (connString == null || connString == "")
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Connection not found";
            }
            else
            {
                try
                {
                    this.mySqlCon = new MySqlConnection(connString);
                    if (this.mySqlCon.State.ToString() != "Open")
                    {
                        this.mySqlCon.Open();
                    }
                    else
                    {
                        returnMsg.ReturnValue = "Error";
                        returnMsg.ReturnValue = "Connectoin was already opened.";
                    }
                    if (this.mySqlCon != null)
                    {
                        strSql = "SELECT * FROM tbl_blockingout_applications WHERE Id = '" + objApplication.ID + "';";
                        da = new MySqlDataAdapter(strSql, this.mySqlCon);
                        ds = new DataSet();
                        da.Fill(ds, "BlockingOut");
                        dt = ds.Tables["BlockingOut"];
                        if (dt.Rows.Count > 0)
                        {
                            foreach (DataRow dtRow in dt.Rows)
                            {
                                BlockingOutApp objBlockingOutDetails = new Models.BlockingOutApp();

                                objBlockingOutDetails.ID = (int)dtRow["Id"];
                                objBlockingOutDetails.AppID = dtRow["AppId"].ToString().Trim();
                                objBlockingOutDetails.UserID = dtRow["UserId"].ToString().Trim();
                                objBlockingOutDetails.Applicant = dtRow["Applicant"].ToString().Trim();
                                objBlockingOutDetails.Address = dtRow["Address"].ToString().Trim();
                                objBlockingOutDetails.Email = dtRow["Email"].ToString().Trim();
                                objBlockingOutDetails.Telephone = dtRow["Telephone"].ToString().Trim();
                                objBlockingOutDetails.Location = dtRow["Location"].ToString().Trim();
                                objBlockingOutDetails.AssessmentNo = dtRow["AssessmentNo"].ToString().Trim();
                                objBlockingOutDetails.Street = dtRow["Street"].ToString().Trim();
                                objBlockingOutDetails.DivisionNo = dtRow["DivisionNo"].ToString().Trim();
                                objBlockingOutDetails.SurvPlanNo = dtRow["SurvPlanNo"].ToString().Trim();
                                objBlockingOutDetails.Surveyor = dtRow["Surveyor"].ToString().Trim();
                                objBlockingOutDetails.SizeOfLand = dtRow["SizeOfLand"].ToString().Trim();
                                objBlockingOutDetails.CurrentUse = dtRow["CurrentUse"].ToString().Trim();
                                objBlockingOutDetails.DevLandBlock = dtRow["DevLandBlock"].ToString().Trim();
                                objBlockingOutDetails.LandFill = dtRow["LandFill"].ToString().Trim();
                                objBlockingOutDetails.LevelsOfRoad = dtRow["LevelsOfRoad"].ToString().Trim();
                                objBlockingOutDetails.AttLandDevCorp = dtRow["AttLandDevCorp"].ToString().Trim();
                                objBlockingOutDetails.IfAggriLand = dtRow["IfAggriLand"].ToString().Trim();
                                objBlockingOutDetails.AttGoviJana = dtRow["AttGoviJana"].ToString().Trim();
                                objBlockingOutDetails.DevResMatters = dtRow["DevResMatters"].ToString().Trim();
                                objBlockingOutDetails.DevComMatters = dtRow["DevComMatters"].ToString().Trim();
                                objBlockingOutDetails.DevIndMatters = dtRow["DevIndMatters"].ToString().Trim();
                                objBlockingOutDetails.DevOutMatters = dtRow["DevOutMatters"].ToString().Trim();
                                objBlockingOutDetails.DevGrounds = dtRow["DevGrounds"].ToString().Trim();
                                objBlockingOutDetails.DevStreets = dtRow["DevStreets"].ToString().Trim();
                                objBlockingOutDetails.DevOther = dtRow["DevOther"].ToString().Trim();
                                objBlockingOutDetails.InfWaterExist = dtRow["InfWaterExist"].ToString().Trim();
                                objBlockingOutDetails.InfWaterProp = dtRow["InfWaterProp"].ToString().Trim();
                                objBlockingOutDetails.InfEffExist = dtRow["InfEffExist"].ToString().Trim();
                                objBlockingOutDetails.InfEffProp = dtRow["InfEffProp"].ToString().Trim();
                                objBlockingOutDetails.InfDrainExist = dtRow["InfDrainExist"].ToString().Trim();
                                objBlockingOutDetails.InfDrainProp = dtRow["InfDrainProp"].ToString().Trim();
                                objBlockingOutDetails.InfElecExist = dtRow["InfElecExist"].ToString().Trim();
                                objBlockingOutDetails.InfElecProp = dtRow["InfElecProp"].ToString().Trim();
                                objBlockingOutDetails.IfBuilDiv = dtRow["IfBuilDiv"].ToString().Trim();
                                objBlockingOutDetails.DatesofDev = dtRow["DatesofDev"].ToString().Trim();
                                objBlockingOutDetails.OriginalPlan = dtRow["OriginalPlan"].ToString().Trim();
                                objBlockingOutDetails.MoreThanHectare = dtRow["MoreThanHectare"].ToString().Trim();
                                objBlockingOutDetails.ElecBoardApp = dtRow["ElecBoardApp"].ToString().Trim();
                                objBlockingOutDetails.WaterBoardApp = dtRow["WaterBoardApp"].ToString().Trim();
                                objBlockingOutDetails.Entrance = dtRow["Entrance"].ToString().Trim();

                                var appDate = (DateTime)dtRow["AppliedDate"];
                                objBlockingOutDetails.AppliedDate = appDate.ToString("yyyy/MM/dd HH:mm").Trim();

                                var appRejDate = (DateTime)dtRow["AppRejDate"];
                                if (appRejDate == DateTime.MinValue)
                                {
                                    objBlockingOutDetails.AppRejDate = "";
                                }
                                else
                                {
                                    objBlockingOutDetails.AppRejDate = appRejDate.ToString("yyyy/MM/dd HH:mm");
                                }

                                var expDate = (DateTime)dtRow["AppRejDate"];
                                if (expDate == DateTime.MinValue)
                                {
                                    objBlockingOutDetails.ExpDate = "";
                                }
                                else
                                {
                                    objBlockingOutDetails.ExpDate = expDate.ToString("yyyy/MM/dd HH:mm");
                                }

                                objRetBlockingOut = objBlockingOutDetails;
                            }
                            returnMsg.ReturnValue = "OK";
                            returnMsg.ReturnMessage = "Data Found";
                        }
                        else
                        {
                            returnMsg.ReturnValue = "Error";
                            returnMsg.ReturnMessage = "No data found";
                        }
                    }
                }
                catch (Exception ex)
                {
                    returnMsg.ReturnValue = "Error";
                    returnMsg.ReturnMessage = ex.Message;
                }
                if (this.mySqlCon != null)
                {
                    this.mySqlCon.Close();
                }
            }

            return objRetBlockingOut;
        }

        // Get a Blocking Out application by App Id
        public BlockingOutApp GetApplicationByAppId(BlockingOutApp objApplication, ref ReturnMsgInfo returnMsg)
        {
            BlockingOutApp objRetBlockingOut = new BlockingOutApp();
            this.objConMain = new Connection_Main();

            string connString = this.objConMain.Get_Main_Connection(objApplication.ClientID);

            if (connString == null || connString == "")
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Connection not found";
            }
            else
            {
                try
                {
                    this.mySqlCon = new MySqlConnection(connString);
                    if (this.mySqlCon.State.ToString() != "Open")
                    {
                        this.mySqlCon.Open();
                    }
                    else
                    {
                        returnMsg.ReturnValue = "Error";
                        returnMsg.ReturnValue = "Connectoin was already opened.";
                    }
                    if (this.mySqlCon != null)
                    {
                        strSql = "SELECT * FROM tbl_blockingout_applications WHERE AppId = '" + objApplication.AppID + "';";
                        da = new MySqlDataAdapter(strSql, this.mySqlCon);
                        ds = new DataSet();
                        da.Fill(ds, "BlockingOut");
                        dt = ds.Tables["BlockingOut"];
                        if (dt.Rows.Count > 0)
                        {
                            foreach (DataRow dtRow in dt.Rows)
                            {
                                BlockingOutApp objBlockingOutDetails = new Models.BlockingOutApp();

                                objBlockingOutDetails.ID = (int)dtRow["Id"];
                                objBlockingOutDetails.AppID = dtRow["AppId"].ToString().Trim();
                                objBlockingOutDetails.UserID = dtRow["UserId"].ToString().Trim();
                                objBlockingOutDetails.Applicant = dtRow["Applicant"].ToString().Trim();
                                objBlockingOutDetails.Address = dtRow["Address"].ToString().Trim();
                                objBlockingOutDetails.Email = dtRow["Email"].ToString().Trim();
                                objBlockingOutDetails.Telephone = dtRow["Telephone"].ToString().Trim();
                                objBlockingOutDetails.Location = dtRow["Location"].ToString().Trim();
                                objBlockingOutDetails.AssessmentNo = dtRow["AssessmentNo"].ToString().Trim();
                                objBlockingOutDetails.Street = dtRow["Street"].ToString().Trim();
                                objBlockingOutDetails.DivisionNo = dtRow["DivisionNo"].ToString().Trim();
                                objBlockingOutDetails.SurvPlanNo = dtRow["SurvPlanNo"].ToString().Trim();
                                objBlockingOutDetails.Surveyor = dtRow["Surveyor"].ToString().Trim();
                                objBlockingOutDetails.SizeOfLand = dtRow["SizeOfLand"].ToString().Trim();
                                objBlockingOutDetails.CurrentUse = dtRow["CurrentUse"].ToString().Trim();
                                objBlockingOutDetails.DevLandBlock = dtRow["DevLandBlock"].ToString().Trim();
                                objBlockingOutDetails.LandFill = dtRow["LandFill"].ToString().Trim();
                                objBlockingOutDetails.LevelsOfRoad = dtRow["LevelsOfRoad"].ToString().Trim();
                                objBlockingOutDetails.AttLandDevCorp = dtRow["AttLandDevCorp"].ToString().Trim();
                                objBlockingOutDetails.IfAggriLand = dtRow["IfAggriLand"].ToString().Trim();
                                objBlockingOutDetails.AttGoviJana = dtRow["AttGoviJana"].ToString().Trim();
                                objBlockingOutDetails.DevResMatters = dtRow["DevResMatters"].ToString().Trim();
                                objBlockingOutDetails.DevComMatters = dtRow["DevComMatters"].ToString().Trim();
                                objBlockingOutDetails.DevIndMatters = dtRow["DevIndMatters"].ToString().Trim();
                                objBlockingOutDetails.DevOutMatters = dtRow["DevOutMatters"].ToString().Trim();
                                objBlockingOutDetails.DevGrounds = dtRow["DevGrounds"].ToString().Trim();
                                objBlockingOutDetails.DevStreets = dtRow["DevStreets"].ToString().Trim();
                                objBlockingOutDetails.DevOther = dtRow["DevOther"].ToString().Trim();
                                objBlockingOutDetails.InfWaterExist = dtRow["InfWaterExist"].ToString().Trim();
                                objBlockingOutDetails.InfWaterProp = dtRow["InfWaterProp"].ToString().Trim();
                                objBlockingOutDetails.InfEffExist = dtRow["InfEffExist"].ToString().Trim();
                                objBlockingOutDetails.InfEffProp = dtRow["InfEffProp"].ToString().Trim();
                                objBlockingOutDetails.InfDrainExist = dtRow["InfDrainExist"].ToString().Trim();
                                objBlockingOutDetails.InfDrainProp = dtRow["InfDrainProp"].ToString().Trim();
                                objBlockingOutDetails.InfElecExist = dtRow["InfElecExist"].ToString().Trim();
                                objBlockingOutDetails.InfElecProp = dtRow["InfElecProp"].ToString().Trim();
                                objBlockingOutDetails.IfBuilDiv = dtRow["IfBuilDiv"].ToString().Trim();
                                objBlockingOutDetails.DatesofDev = dtRow["DatesofDev"].ToString().Trim();
                                objBlockingOutDetails.OriginalPlan = dtRow["OriginalPlan"].ToString().Trim();
                                objBlockingOutDetails.MoreThanHectare = dtRow["MoreThanHectare"].ToString().Trim();
                                objBlockingOutDetails.ElecBoardApp = dtRow["ElecBoardApp"].ToString().Trim();
                                objBlockingOutDetails.WaterBoardApp = dtRow["WaterBoardApp"].ToString().Trim();
                                objBlockingOutDetails.Entrance = dtRow["Entrance"].ToString().Trim();

                                var appDate = (DateTime)dtRow["AppliedDate"];
                                objBlockingOutDetails.AppliedDate = appDate.ToString("yyyy/MM/dd HH:mm").Trim();

                                var appRejDate = (DateTime)dtRow["AppRejDate"];
                                if (appRejDate == DateTime.MinValue)
                                {
                                    objBlockingOutDetails.AppRejDate = "";
                                }
                                else
                                {
                                    objBlockingOutDetails.AppRejDate = appRejDate.ToString("yyyy/MM/dd HH:mm");
                                }

                                var expDate = (DateTime)dtRow["AppRejDate"];
                                if (expDate == DateTime.MinValue)
                                {
                                    objBlockingOutDetails.ExpDate = "";
                                }
                                else
                                {
                                    objBlockingOutDetails.ExpDate = expDate.ToString("yyyy/MM/dd HH:mm");
                                }

                                objRetBlockingOut = objBlockingOutDetails;
                            }
                            returnMsg.ReturnValue = "OK";
                            returnMsg.ReturnMessage = "Data Found";
                        }
                        else
                        {
                            returnMsg.ReturnValue = "Error";
                            returnMsg.ReturnMessage = "No data found";
                        }
                    }
                }
                catch (Exception ex)
                {
                    returnMsg.ReturnValue = "Error";
                    returnMsg.ReturnMessage = ex.Message;
                }
                if (this.mySqlCon != null)
                {
                    this.mySqlCon.Close();
                }
            }

            return objRetBlockingOut;
        }

        // Get List of Blocking Out applications by username
        public List<BlockingOutApp> GetApplicationsByUserId(BlockingOutApp objApplication, ref ReturnMsgInfo returnMsg)
        {
            List<BlockingOutApp> lstRetBlockingOut = new List<BlockingOutApp>();
            this.objConMain = new Connection_Main();

            string connString = this.objConMain.Get_Main_Connection(objApplication.ClientID);

            if (connString == null || connString == "")
            {
                returnMsg.ReturnValue = "Error";
                returnMsg.ReturnMessage = "Connection not found";
            }
            else
            {
                try
                {
                    this.mySqlCon = new MySqlConnection(connString);
                    if (this.mySqlCon.State.ToString() != "Open")
                    {
                        this.mySqlCon.Open();
                    }
                    else
                    {
                        returnMsg.ReturnValue = "Error";
                        returnMsg.ReturnValue = "Connectoin was already opened.";
                    }
                    if (this.mySqlCon != null)
                    {
                        strSql = "SELECT * FROM tbl_blockingout_applications WHERE UserId = '" + objApplication.UserID + "';";
                        da = new MySqlDataAdapter(strSql, this.mySqlCon);
                        ds = new DataSet();
                        da.Fill(ds, "BlockingOut");
                        dt = ds.Tables["BlockingOut"];
                        if (dt.Rows.Count > 0)
                        {
                            foreach (DataRow dtRow in dt.Rows)
                            {
                                BlockingOutApp objBlockingOutDetails = new Models.BlockingOutApp();

                                objBlockingOutDetails.ID = (int)dtRow["Id"];
                                objBlockingOutDetails.AppID = dtRow["AppId"].ToString().Trim();
                                objBlockingOutDetails.UserID = dtRow["UserId"].ToString().Trim();
                                objBlockingOutDetails.Applicant = dtRow["Applicant"].ToString().Trim();
                                objBlockingOutDetails.Address = dtRow["Address"].ToString().Trim();
                                objBlockingOutDetails.Email = dtRow["Email"].ToString().Trim();
                                objBlockingOutDetails.Telephone = dtRow["Telephone"].ToString().Trim();
                                objBlockingOutDetails.Location = dtRow["Location"].ToString().Trim();
                                objBlockingOutDetails.AssessmentNo = dtRow["AssessmentNo"].ToString().Trim();
                                objBlockingOutDetails.Street = dtRow["Street"].ToString().Trim();
                                objBlockingOutDetails.DivisionNo = dtRow["DivisionNo"].ToString().Trim();
                                objBlockingOutDetails.SurvPlanNo = dtRow["SurvPlanNo"].ToString().Trim();
                                objBlockingOutDetails.Surveyor = dtRow["Surveyor"].ToString().Trim();
                                objBlockingOutDetails.SizeOfLand = dtRow["SizeOfLand"].ToString().Trim();
                                objBlockingOutDetails.CurrentUse = dtRow["CurrentUse"].ToString().Trim();
                                objBlockingOutDetails.DevLandBlock = dtRow["DevLandBlock"].ToString().Trim();
                                objBlockingOutDetails.LandFill = dtRow["LandFill"].ToString().Trim();
                                objBlockingOutDetails.LevelsOfRoad = dtRow["LevelsOfRoad"].ToString().Trim();
                                objBlockingOutDetails.AttLandDevCorp = dtRow["AttLandDevCorp"].ToString().Trim();
                                objBlockingOutDetails.IfAggriLand = dtRow["IfAggriLand"].ToString().Trim();
                                objBlockingOutDetails.AttGoviJana = dtRow["AttGoviJana"].ToString().Trim();
                                objBlockingOutDetails.DevResMatters = dtRow["DevResMatters"].ToString().Trim();
                                objBlockingOutDetails.DevComMatters = dtRow["DevComMatters"].ToString().Trim();
                                objBlockingOutDetails.DevIndMatters = dtRow["DevIndMatters"].ToString().Trim();
                                objBlockingOutDetails.DevOutMatters = dtRow["DevOutMatters"].ToString().Trim();
                                objBlockingOutDetails.DevGrounds = dtRow["DevGrounds"].ToString().Trim();
                                objBlockingOutDetails.DevStreets = dtRow["DevStreets"].ToString().Trim();
                                objBlockingOutDetails.DevOther = dtRow["DevOther"].ToString().Trim();
                                objBlockingOutDetails.InfWaterExist = dtRow["InfWaterExist"].ToString().Trim();
                                objBlockingOutDetails.InfWaterProp = dtRow["InfWaterProp"].ToString().Trim();
                                objBlockingOutDetails.InfEffExist = dtRow["InfEffExist"].ToString().Trim();
                                objBlockingOutDetails.InfEffProp = dtRow["InfEffProp"].ToString().Trim();
                                objBlockingOutDetails.InfDrainExist = dtRow["InfDrainExist"].ToString().Trim();
                                objBlockingOutDetails.InfDrainProp = dtRow["InfDrainProp"].ToString().Trim();
                                objBlockingOutDetails.InfElecExist = dtRow["InfElecExist"].ToString().Trim();
                                objBlockingOutDetails.InfElecProp = dtRow["InfElecProp"].ToString().Trim();
                                objBlockingOutDetails.IfBuilDiv = dtRow["IfBuilDiv"].ToString().Trim();
                                objBlockingOutDetails.DatesofDev = dtRow["DatesofDev"].ToString().Trim();
                                objBlockingOutDetails.OriginalPlan = dtRow["OriginalPlan"].ToString().Trim();
                                objBlockingOutDetails.MoreThanHectare = dtRow["MoreThanHectare"].ToString().Trim();
                                objBlockingOutDetails.ElecBoardApp = dtRow["ElecBoardApp"].ToString().Trim();
                                objBlockingOutDetails.WaterBoardApp = dtRow["WaterBoardApp"].ToString().Trim();
                                objBlockingOutDetails.Entrance = dtRow["Entrance"].ToString().Trim();

                                var appDate = (DateTime)dtRow["AppliedDate"];
                                objBlockingOutDetails.AppliedDate = appDate.ToString("yyyy/MM/dd HH:mm").Trim();

                                var appRejDate = (DateTime)dtRow["AppRejDate"];
                                if (appRejDate == DateTime.MinValue)
                                {
                                    objBlockingOutDetails.AppRejDate = "";
                                }
                                else
                                {
                                    objBlockingOutDetails.AppRejDate = appRejDate.ToString("yyyy/MM/dd HH:mm");
                                }

                                var expDate = (DateTime)dtRow["AppRejDate"];
                                if (expDate == DateTime.MinValue)
                                {
                                    objBlockingOutDetails.ExpDate = "";
                                }
                                else
                                {
                                    objBlockingOutDetails.ExpDate = expDate.ToString("yyyy/MM/dd HH:mm");
                                }

                                lstRetBlockingOut.Add(objBlockingOutDetails);
                            }
                            returnMsg.ReturnValue = "OK";
                            returnMsg.ReturnMessage = "Data Found";
                        }
                        else
                        {
                            returnMsg.ReturnValue = "Error";
                            returnMsg.ReturnMessage = "No data found";
                        }
                    }
                }
                catch (Exception ex)
                {
                    returnMsg.ReturnValue = "Error";
                    returnMsg.ReturnMessage = ex.Message;
                }
                if (this.mySqlCon != null)
                {
                    this.mySqlCon.Close();
                }
            }

            return lstRetBlockingOut;
        }
    }
}