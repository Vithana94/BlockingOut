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
            if (objBlockingOut.RateNo == null || objBlockingOut.RateNo == "")
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
            if (objBlockingOut.LandPlan == null || objBlockingOut.LandPlan == "")
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
                        strSql = "INSERT INTO tbl_blockingout_applications( AppId ,UserId ,Applicant ,Address ,Email ,Telephone ,RateNo ,Location ,DivisionNo ,Street ,LandPlan ,SizeOfLand ,ElecBoardApp ,WaterBoardApp ,Entrance ,IfBuilDiv ,DatesofDev ,AppliedDate ,AppRejDate ,ExpDate)VALUES('@AppId' ,'@UserId'  ,'@Applicant'  ,'@Address' ,'@Email'  ,'@Telephone'  ,'@RateNo'  ,'@Location'  ,'@DivisionNo' ,'@Street'  ,'@LandPlan'  ,'@SizeOfLand'  ,'@ElecBoardApp'  ,'@WaterBoardApp'  ,'@Entrance'  ,'@IfBuilDiv'  ,'@DatesofDev' ,'@AppliedDate'  ,'@AppRejDate'  ,'@ExpDate' );";
                        cmd = new MySqlCommand(strSql, this.mySqlCon, this.mySqlTrans);
                        cmd.Parameters.AddWithValue("@CertificateId", objBlockingOut.AppID.ToString().Trim());
                        cmd.Parameters.AddWithValue("@CertificateId", objBlockingOut.UserID.ToString().Trim());
                        cmd.Parameters.AddWithValue("@CertificateId", objBlockingOut.Applicant.ToString().Trim());
                        cmd.Parameters.AddWithValue("@CertificateId", objBlockingOut.Address.ToString().Trim());
                        cmd.Parameters.AddWithValue("@CertificateId", objBlockingOut.Email.ToString().Trim());
                        cmd.Parameters.AddWithValue("@CertificateId", objBlockingOut.Telephone.ToString().Trim());
                        cmd.Parameters.AddWithValue("@CertificateId", objBlockingOut.RateNo.ToString().Trim());
                        cmd.Parameters.AddWithValue("@CertificateId", objBlockingOut.Location.ToString().Trim());
                        cmd.Parameters.AddWithValue("@CertificateId", objBlockingOut.DivisionNo.ToString().Trim());
                        cmd.Parameters.AddWithValue("@CertificateId", objBlockingOut.Street.ToString().Trim());
                        cmd.Parameters.AddWithValue("@CertificateId", objBlockingOut.LandPlan.ToString().Trim());
                        cmd.Parameters.AddWithValue("@CertificateId", objBlockingOut.SizeOfLand.ToString().Trim());
                        cmd.Parameters.AddWithValue("@CertificateId", objBlockingOut.ElecBoardApp.ToString().Trim());
                        cmd.Parameters.AddWithValue("@CertificateId", objBlockingOut.WaterBoardApp.ToString().Trim());
                        cmd.Parameters.AddWithValue("@CertificateId", objBlockingOut.Entrance.ToString().Trim());
                        cmd.Parameters.AddWithValue("@CertificateId", objBlockingOut.IfBuilDiv.ToString().Trim());
                        cmd.Parameters.AddWithValue("@CertificateId", objBlockingOut.DatesofDev.ToString().Trim());
                        cmd.Parameters.AddWithValue("@CertificateId", objBlockingOut.AppliedDate.ToString().Trim());
                        cmd.Parameters.AddWithValue("@CertificateId", "");
                        cmd.Parameters.AddWithValue("@CertificateId", "");                        
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
                        strSql = "SELECT * FROM tbl_firecertificate_index;";
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