using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace api_rate.Models
{
    public class Globals
    {
        // Application Status
        public static string PENDING = "Pending";
        public static string PAID = "Processing Fee Paid";
        public static string ASSIGNED = "Surveyor Assigned";
        public static string APPROVED = "Approved";
        public static string REJECTED = "Rejected";


        // Payment Description
        public static string INSPECTION = "Inspection";
        public static string ANNUAL = "Certificate";
        public static string Counseling = "Counseling";
        public static string Bank = "Bank";
        public static string Postal = "Postal";
    }
}