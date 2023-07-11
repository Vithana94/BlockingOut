﻿using api_rate.Models;
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

        // Get one Fire application by its Id  
        //public FireCertificateApplication GetApplicationById(FireCertificateApplication objApplication, ref ReturnMsgInfo returnMsg)
        //{
        //    FireCertificateApplication objFireApplication = new FireCertificateApplication();
        //    this.objConMain = new Connection_Main();

        //    string connString = this.objConMain.Get_Main_Connection(objApplication.ClientID);

        //    if (connString == null || connString == "")
        //    {
        //        returnMsg.ReturnValue = "Error";
        //        returnMsg.ReturnMessage = "Connection not found";
        //    }
        //    else
        //    {
        //        try
        //        {
        //            this.mySqlCon = new MySqlConnection(connString);
        //            if (this.mySqlCon.State.ToString() != "Open")
        //            {
        //                this.mySqlCon.Open();
        //            }
        //            else
        //            {
        //                returnMsg.ReturnValue = "Error";
        //                returnMsg.ReturnValue = "Connectoin was already opened.";
        //            }
        //            if (this.mySqlCon != null)
        //            {
        //                strSql = "SELECT * FROM tbl_firecertificate_application WHERE Id = '" + objApplication.Id + "';";
        //                da = new MySqlDataAdapter(strSql, this.mySqlCon);
        //                ds = new DataSet();
        //                da.Fill(ds, "FireApplication");
        //                dt = ds.Tables["FireApplication"];
        //                if (dt.Rows.Count > 0)
        //                {
        //                    foreach (DataRow dtRow in dt.Rows)
        //                    {
        //                        FireCertificateApplication objFireAppDetails = new Models.FireCertificateApplication();
        //                        objFireAppDetails.Id = (int)dtRow["Id"];
        //                        objFireAppDetails.CertificateId = dtRow["CertificateId"].ToString().Trim();
        //                        objFireAppDetails.user = dtRow["user"].ToString().Trim();
        //                        objFireAppDetails.CompanyName = dtRow["CompanyName"].ToString().Trim();
        //                        objFireAppDetails.Address = dtRow["Address"].ToString().Trim();
        //                        objFireAppDetails.Telephone = dtRow["Telephone"].ToString().Trim();
        //                        objFireAppDetails.DistanceFromCouncil = dtRow["DistanceFromCouncil"].ToString().Trim();
        //                        objFireAppDetails.NatureOfBusiness = dtRow["NatureOfBusiness"].ToString().Trim();
        //                        objFireAppDetails.BuildingDescription = dtRow["BuildingDescription"].ToString().Trim();
        //                        objFireAppDetails.BuildingPlan = dtRow["BuildingPlan"].ToString().Trim();
        //                        objFireAppDetails.TotalLand = dtRow["TotalLand"].ToString().Trim();
        //                        objFireAppDetails.RoadFromCouncil = dtRow["RoadFromCouncil"].ToString().Trim();
        //                        objFireAppDetails.OwnerName = dtRow["OwnerName"].ToString().Trim();
        //                        objFireAppDetails.CurrentFirePlan = dtRow["CurrentFirePlan"].ToString().Trim();
        //                        objFireAppDetails.Status = dtRow["Status"].ToString().Trim();
        //                        objFireAppDetails.CollectMethod = dtRow["CollectMethod"].ToString().Trim();
        //                        objFireAppDetails.Email = dtRow["Email"].ToString().Trim();
        //                        objFireAppDetails.SupervisorVisited = dtRow["superVisit"].ToString().Trim();
        //                        var appDate = (DateTime)dtRow["DateApplied"];
        //                        objFireAppDetails.DateApplied = appDate.ToString("yyyy-MM-dd");

        //                        var revDate = (DateTime)dtRow["DateReviewed"];
        //                        if (revDate == DateTime.MinValue)
        //                        {
        //                            objFireAppDetails.DateReviewed = "";
        //                        }
        //                        else
        //                        {
        //                            objFireAppDetails.DateReviewed = revDate.ToString("yyyy-MM-dd");
        //                        }

        //                        var issDate = (DateTime)dtRow["DateIssued"];
        //                        if (issDate == DateTime.MinValue)
        //                        {
        //                            objFireAppDetails.DateIssued = "";
        //                        }
        //                        else
        //                        {
        //                            objFireAppDetails.DateIssued = issDate.ToString("yyyy-MM-dd");
        //                        }

        //                        var appRejDate = (DateTime)dtRow["DateAppRej"];
        //                        if (appRejDate == DateTime.MinValue)
        //                        {
        //                            objFireAppDetails.DateAppRej = "";
        //                        }
        //                        else
        //                        {
        //                            objFireAppDetails.DateAppRej = appRejDate.ToString("yyyy-MM-dd");
        //                        }

        //                        var actRevDate = (DateTime)dtRow["DateActReview"];
        //                        if (actRevDate == DateTime.MinValue || actRevDate == null)
        //                        {
        //                            objFireAppDetails.DateActReview = "";
        //                        }
        //                        else
        //                        {
        //                            objFireAppDetails.DateActReview = actRevDate.ToString("yyyy-MM-dd");
        //                        }

        //                        objFireAppDetails.Supervisor = dtRow["Supervisor"].ToString().Trim();
        //                        objFireAppDetails.RejectReason = dtRow["RejectReason"].ToString().Trim();
        //                        objFireApplication = objFireAppDetails;
        //                    }
        //                    returnMsg.ReturnValue = "OK";
        //                    returnMsg.ReturnMessage = "Data Found";
        //                }
        //                else
        //                {
        //                    returnMsg.ReturnValue = "Error";
        //                    returnMsg.ReturnMessage = "No data found";
        //                }
        //            }
        //        }
        //        catch (Exception ex)
        //        {
        //            returnMsg.ReturnValue = "Error";
        //            returnMsg.ReturnMessage = ex.Message;
        //        }
        //        if (this.mySqlCon != null)
        //        {
        //            this.mySqlCon.Close();
        //        }
        //    }

        //    return objFireApplication;
        //}

        // Get Application by Certificate Id
        //public FireCertificateApplication GetApplicationByCertId(FireCertificateApplication objApplication, ref ReturnMsgInfo returnMsg)
        //{
        //    FireCertificateApplication objFireApplication = new FireCertificateApplication();
        //    this.objConMain = new Connection_Main();

        //    string connString = this.objConMain.Get_Main_Connection(objApplication.ClientID);

        //    if (connString == null || connString == "")
        //    {
        //        returnMsg.ReturnValue = "Error";
        //        returnMsg.ReturnMessage = "Connection not found";
        //    }
        //    else
        //    {
        //        try
        //        {
        //            this.mySqlCon = new MySqlConnection(connString);
        //            if (this.mySqlCon.State.ToString() != "Open")
        //            {
        //                this.mySqlCon.Open();
        //            }
        //            else
        //            {
        //                returnMsg.ReturnValue = "Error";
        //                returnMsg.ReturnValue = "Connectoin was already opened.";
        //            }
        //            if (this.mySqlCon != null)
        //            {
        //                strSql = "SELECT * FROM tbl_firecertificate_application WHERE CertificateId = '" + objApplication.CertificateId + "';";
        //                da = new MySqlDataAdapter(strSql, this.mySqlCon);
        //                ds = new DataSet();
        //                da.Fill(ds, "FireApplication");
        //                dt = ds.Tables["FireApplication"];
        //                if (dt.Rows.Count > 0)
        //                {
        //                    foreach (DataRow dtRow in dt.Rows)
        //                    {
        //                        FireCertificateApplication objFireAppDetails = new Models.FireCertificateApplication();
        //                        objFireAppDetails.Id = (int)dtRow["Id"];
        //                        objFireAppDetails.CertificateId = dtRow["CertificateId"].ToString().Trim();
        //                        objFireAppDetails.CompanyName = dtRow["CompanyName"].ToString().Trim();
        //                        objFireAppDetails.Address = dtRow["Address"].ToString().Trim();
        //                        objFireAppDetails.Telephone = dtRow["Telephone"].ToString().Trim();
        //                        objFireAppDetails.DistanceFromCouncil = dtRow["DistanceFromCouncil"].ToString().Trim();
        //                        objFireAppDetails.NatureOfBusiness = dtRow["NatureOfBusiness"].ToString().Trim();
        //                        objFireAppDetails.BuildingDescription = dtRow["BuildingDescription"].ToString().Trim();
        //                        objFireAppDetails.BuildingPlan = dtRow["BuildingPlan"].ToString().Trim();
        //                        objFireAppDetails.TotalLand = dtRow["TotalLand"].ToString().Trim();
        //                        objFireAppDetails.RoadFromCouncil = dtRow["RoadFromCouncil"].ToString().Trim();
        //                        objFireAppDetails.OwnerName = dtRow["OwnerName"].ToString().Trim();
        //                        objFireAppDetails.CurrentFirePlan = dtRow["CurrentFirePlan"].ToString().Trim();
        //                        objFireAppDetails.Status = dtRow["Status"].ToString().Trim();
        //                        objFireAppDetails.CollectMethod = dtRow["CollectMethod"].ToString().Trim();
        //                        objFireAppDetails.Email = dtRow["Email"].ToString().Trim();
        //                        objFireAppDetails.SupervisorVisited = dtRow["superVisit"].ToString().Trim();
        //                        var appDate = (DateTime)dtRow["DateApplied"];
        //                        objFireAppDetails.DateApplied = appDate.ToString("yyyy-MM-dd");
        //                        var revDate = (DateTime)dtRow["DateReviewed"];
        //                        if (revDate == DateTime.MinValue)
        //                        {
        //                            objFireAppDetails.DateReviewed = "";
        //                        }
        //                        else
        //                        {
        //                            objFireAppDetails.DateReviewed = revDate.ToString("yyyy-MM-dd");

        //                        }

        //                        var issDate = (DateTime)dtRow["DateIssued"];
        //                        if (issDate == DateTime.MinValue)
        //                        {
        //                            objFireAppDetails.DateIssued = "";
        //                        }
        //                        else
        //                        {
        //                            objFireAppDetails.DateIssued = issDate.ToString("yyyy-MM-dd");
        //                        }

        //                        var appRejDate = (DateTime)dtRow["DateAppRej"];
        //                        if (appRejDate == DateTime.MinValue)
        //                        {
        //                            objFireAppDetails.DateAppRej = "";
        //                        }
        //                        else
        //                        {
        //                            objFireAppDetails.DateAppRej = appRejDate.ToString("yyyy-MM-dd");
        //                        }

        //                        var actRevDate = (DateTime)dtRow["DateActReview"];
        //                        if (actRevDate == DateTime.MinValue || actRevDate == null)
        //                        {
        //                            objFireAppDetails.DateActReview = "";
        //                        }
        //                        else
        //                        {
        //                            objFireAppDetails.DateActReview = actRevDate.ToString("yyyy-MM-dd");
        //                        }

        //                        objFireAppDetails.Supervisor = dtRow["Supervisor"].ToString().Trim();
        //                        objFireAppDetails.RejectReason = dtRow["RejectReason"].ToString().Trim();

        //                        objFireApplication = objFireAppDetails;
        //                    }
        //                    returnMsg.ReturnValue = "OK";
        //                    returnMsg.ReturnMessage = "Data Found";
        //                }
        //                else
        //                {
        //                    returnMsg.ReturnValue = "Error";
        //                    returnMsg.ReturnMessage = "No data found";
        //                }
        //            }
        //        }
        //        catch (Exception ex)
        //        {
        //            returnMsg.ReturnValue = "Error";
        //            returnMsg.ReturnMessage = ex.Message;
        //        }
        //        if (this.mySqlCon != null)
        //        {
        //            this.mySqlCon.Close();
        //        }
        //    }

        //    return objFireApplication;
        //}

        // Get List of fire applications by username
        //public List<FireCertificateApplication> GetAppDetailsByUsr(FireCertificateApplication objFireApplication, ref ReturnMsgInfo returnMsg)
        //{
        //    List<FireCertificateApplication> lstFireApplication = new List<FireCertificateApplication>();
        //    this.objConMain = new Connection_Main();

        //    string conString = this.objConMain.Get_Main_Connection(objFireApplication.ClientID);
        //    if (conString == null || conString == "")
        //    {
        //        returnMsg.ReturnValue = "Error";
        //        returnMsg.ReturnMessage = "Connection not found.";
        //    }
        //    else
        //    {
        //        try
        //        {
        //            this.mySqlCon = new MySqlConnection(conString);
        //            if (this.mySqlCon.State.ToString() != "Open")
        //            {
        //                this.mySqlCon.Open();
        //            }
        //            else
        //            {
        //                returnMsg.ReturnValue = "Error";
        //                returnMsg.ReturnMessage = "Connection was already opened.";
        //            }
        //            if (this.mySqlCon != null)
        //            {
        //                strSql = "SELECT * FROM tbl_firecertificate_application WHERE User = '" + objFireApplication.user + "';";
        //                da = new MySqlDataAdapter(strSql, this.mySqlCon);
        //                ds = new DataSet();
        //                da.Fill(ds, "Application");
        //                dt = ds.Tables["Application"];
        //                if (dt.Rows.Count > 0)
        //                {
        //                    foreach (DataRow dtRow in dt.Rows)
        //                    {
        //                        FireCertificateApplication objFireAppDetails = new Models.FireCertificateApplication();
        //                        objFireAppDetails.Id = (int)dtRow["Id"];
        //                        objFireAppDetails.CertificateId = dtRow["CertificateId"].ToString().Trim();
        //                        objFireAppDetails.CompanyName = dtRow["CompanyName"].ToString().Trim();
        //                        objFireAppDetails.Address = dtRow["Address"].ToString().Trim();
        //                        objFireAppDetails.user = dtRow["user"].ToString().Trim();
        //                        objFireAppDetails.Telephone = dtRow["Telephone"].ToString().Trim();
        //                        objFireAppDetails.DistanceFromCouncil = dtRow["DistanceFromCouncil"].ToString().Trim();
        //                        objFireAppDetails.NatureOfBusiness = dtRow["NatureOfBusiness"].ToString().Trim();
        //                        objFireAppDetails.BuildingDescription = dtRow["BuildingDescription"].ToString().Trim();
        //                        objFireAppDetails.BuildingPlan = dtRow["BuildingPlan"].ToString().Trim();
        //                        objFireAppDetails.TotalLand = dtRow["TotalLand"].ToString().Trim();
        //                        objFireAppDetails.RoadFromCouncil = dtRow["RoadFromCouncil"].ToString().Trim();
        //                        objFireAppDetails.OwnerName = dtRow["OwnerName"].ToString().Trim();
        //                        objFireAppDetails.CurrentFirePlan = dtRow["CurrentFirePlan"].ToString().Trim();
        //                        objFireAppDetails.Email = dtRow["Email"].ToString().Trim();
        //                        objFireAppDetails.SupervisorVisited = dtRow["superVisit"].ToString().Trim();
        //                        objFireAppDetails.RejectReason = dtRow["RejectReason"].ToString().Trim();
        //                        objFireAppDetails.Status = dtRow["Status"].ToString().Trim();
        //                        objFireAppDetails.CollectMethod = dtRow["CollectMethod"].ToString().Trim();
        //                        var appDate = (DateTime)dtRow["DateApplied"];
        //                        objFireAppDetails.DateApplied = appDate.ToString("yyyy-MM-dd");
        //                        var revDate = (DateTime)dtRow["DateReviewed"];
        //                        if (revDate == DateTime.MinValue)
        //                        {
        //                            objFireAppDetails.DateReviewed = "";
        //                        }
        //                        else
        //                        {
        //                            objFireAppDetails.DateReviewed = revDate.ToString("yyyy-MM-dd");

        //                        }
        //                        var issDate = (DateTime)dtRow["DateIssued"];
        //                        if (issDate == DateTime.MinValue)
        //                        {
        //                            objFireAppDetails.DateIssued = "";
        //                        }
        //                        else
        //                        {
        //                            objFireAppDetails.DateIssued = issDate.ToString("yyyy-MM-dd");
        //                        }

        //                        var appRejDate = (DateTime)dtRow["DateAppRej"];
        //                        if (appRejDate == DateTime.MinValue)
        //                        {
        //                            objFireAppDetails.DateAppRej = "";
        //                        }
        //                        else
        //                        {
        //                            objFireAppDetails.DateAppRej = appRejDate.ToString("yyyy-MM-dd");
        //                        }

        //                        var actRevDate = (DateTime)dtRow["DateActReview"];
        //                        if (actRevDate == DateTime.MinValue || actRevDate == null)
        //                        {
        //                            objFireAppDetails.DateActReview = "";
        //                        }
        //                        else
        //                        {
        //                            objFireAppDetails.DateActReview = actRevDate.ToString("yyyy-MM-dd");
        //                        }

        //                        objFireAppDetails.Supervisor = dtRow["Supervisor"].ToString().Trim();

        //                        lstFireApplication.Add(objFireAppDetails);
        //                    }
        //                    returnMsg.ReturnValue = "OK";
        //                    returnMsg.ReturnMessage = "Data found";
        //                }
        //                else
        //                {
        //                    returnMsg.ReturnValue = "Error";
        //                    returnMsg.ReturnMessage = "No data found";
        //                }
        //            }
        //        }
        //        catch (Exception ex)
        //        {
        //            returnMsg.ReturnValue = "Error";
        //            returnMsg.ReturnMessage = ex.Message;
        //        }
        //        finally
        //        {
        //            if (this.mySqlCon != null)
        //            {
        //                this.mySqlCon.Close();
        //            }
        //        }
        //    }
        //    return lstFireApplication;
        //}

        // Get List of all fire applications
    }
}