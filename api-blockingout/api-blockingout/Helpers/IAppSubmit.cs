﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using api_rate.Models;

namespace api_rate.Helpers
{
    public interface IAppSubmit
    {
        // Validate Municipal Council Application
        bool ValidateApplication(FireCertificateApplication objAppDetails, ref ReturnMsgInfo returnMsg);

        // Submit Municipal Council Application 
        bool SaveApplication(FireCertificateApplication objAppDetails, ref ReturnMsgInfo returnMsg);

        // Validate Fire Department Application
        bool ValidateSupervisorApplication(FireSupervisorApplication objSuperAppDetails, ref ReturnMsgInfo returnMsg);

        // Submit Fire Department Application
        bool SaveSupervisorApplication(FireSupervisorApplication objSuperAppDetails, ref ReturnMsgInfo returnMsg);

        // Set Application status Approved
        bool SetStatusApprove(FireCertificateApplication objFireApp, ref ReturnMsgInfo objReturnMsg);

        // Set Application status Rejected
        bool SetStatusReject(FireCertificateApplication objFireApp, ref ReturnMsgInfo objReturnMsg);

        // Assign Supervisor
        bool AssignSupervisor(FireCertificateApplication objFireApp, ref ReturnMsgInfo objRetuenMsg);

        // Validate Payment
        bool ValidatePayment(PaymentDetails objPayment, ref ReturnMsgInfo objReturnMsg);

        // Add payment
        PaymentDetails AddPayment(PaymentDetails objPayment, ref ReturnMsgInfo objReturnMsg);

        // Update Municipal Application
        bool UpdateFireCertificate(FireCertificateApplication objFireApp, ref ReturnMsgInfo objReturnMsg);
    
        // Submit complete Application
        bool SubmitApplication(CompleteApp objCompleteApp, ref ReturnMsgInfo objReturnMsg);

        // Update Fire department App
        bool UpdateSuperApplication(FireSupervisorApplication objFireSuperApp, ref ReturnMsgInfo returnMsg);
        
        // SET Super application
        FireSupervisorApplication SetFireSuperApp(FireCertificateApplication objFireApp, ref ReturnMsgInfo returnMsg);

        // Set status Hold
        bool SetStatusHold(FireCertificateApplication objFireApp, ref ReturnMsgInfo objReturnMsg);
        
        // Validate bank return message
        bool ValidateBankReturn(BankReturnMessage objPaidDetails, ref ReturnMsgInfo objReturnMsg);

        // Submit bank return
        BankReturnMessage SubmitBankReturn(BankReturnMessage objPaidDetails, ref ReturnMsgInfo objReturnMsg);

        // Set status paid 
        bool SetStatusPaid(FireCertificateApplication objFireApp, ref ReturnMsgInfo objReturnMsg);

        //Set Status issued
        bool SetStatusIssued(FireCertificateApplication objFireApp, ref ReturnMsgInfo objReturnMsg);

        // Set supervisor status 1
        bool SetSupervisorVisited(FireCertificateApplication objFireApp, ref ReturnMsgInfo objReturnMsg);
        
        // Set status paid for certificate
        bool SetStatusPaidForCert(FireCertificateApplication objFireApp, ref ReturnMsgInfo objReturnMsg);

        // Set Collect method
        bool SetCollectMethod(FireCertificateApplication objFireApp, ref ReturnMsgInfo objReturnMsg);
    }
}
