<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Help-doc.aspx.cs" Inherits="api_rate.Help_doc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <style>
        .pre {
            display: block;
            padding: 9.5px;
            margin: 0 0 10px;
            font-size: 13px;
            line-height: 1.428571429;
            color: #a5a3a3;
            word-break: break-all;
            word-wrap: break-word;
            background-color: #f5f5f5;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .left-div {
            height: 80%;
            top: 0;
            bottom: 0;
            z-index: 3;
            position: fixed;
        }
        .right-div {
            border-left: solid 1px white;
            margin-left: 20%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
            <div class="col-md-2 left-div" >
                <div><asp:Label ID="lblGetData" runat="server" Text="To Get Data" Font-Bold="true" Font-Size="Larger"></asp:Label></div>
                <div><a href="#apiAppListuser" style="color:orange!important; font-size:small">01. Get List of Applications By User</a></div>
                <div><a href="#apiAppbyId" style="color:orange!important; font-size:small">02. Get An Application By Id</a></div>
                <div><a href="#apiAppByIdUserID" style="color:orange!important; font-size:small">03. Get An Application By Id And UserId</a></div>
                <br />
                <div><a href="#apiAppSubmit" style=" font-size:small">05. Submit Application</a></div>                
                <br />
                <div><a href="#apiAppApprove" style="color:red!important; font-size:small" >07. Approve Application</a></div>
                <div><a href="#apiAppReject" style="color:red!important; font-size:small" >08. Reject Application</a></div>
                <div><a href="#apiAssignSurvayor" style="color:red!important; font-size:small" >12. Assign Surveyor</a></div>
                <br />
                <div><a href="#apiChargebyId" style=" font-size:small">14. Charges</a></div>
                <div><a href="#apiPaymentSubmit" style=" font-size:small">15. Submit Payment</a></div>
                <div><a href="#apiBankReturn" style="font-size:small" >16. Bank Return Message Saving</a></div>                       
                <br />
                <div><a href="#apiApprovedbyDate" style="color:orange!important; font-size:small" >18. Approved Municipal applications by date</a></div>
                <div><a href="#apiRejectedbyDate" style="color:orange!important; font-size:small" >19. Rejected Municipal applications by date</a></div>
                <div><a href="#apiAssignedbyDate" style="color:orange!important; font-size:small" >21. Assigned Municipal applications by date</a></div>           
                <div><a href="#apiIssuedbyDate" style="color:orange!important; font-size:small" >23. Issued Municipal applications by date</a></div> 
            </div>
            <div class="col-md-8 right-div">
                <h3>API Help Document</h3>
                <hr />
                <%--=================================== 01. Get List of Applications By User ====================================================--%>
                <div id="apiAppListuser">
                    <h3 class="heading">Get List of Applications By User</h3>
                    <div>
                        <div>
                            <div>Introduction</div>
                        </div>
                        <div class="pre row">
                            <div class="col-sm-12 ">This API helps to get a list of applications by userID</div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>Base URL</div>
                        </div>
                        <div class="pre row">
                            <div class="col-sm-12 ">https://blocking-api.nekfa.com/api/BlockingOutListByUserId</div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>Request type</div>
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-3 ">Method</div>
                                <div class="col-sm-9">POST</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 ">Content type</div>
                                <div class="col-sm-9">application/json</div>
                            </div>
                        </div>
                    </div>

                    <div>
                        <div>
                            <div>List of parameters</div>
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-2 ">ClientID</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    To identify user.
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "ClientID":"TestId"
                                    }
                                </div>
                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">UserID</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    To identify user.
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "UserID":"155"
                                    }
                                </div>
                            </div>
                            <br />
                        </div>
                    </div>
                    <div style="height: 400px; overflow-y: scroll; overflow-x: hidden;">
                        <div>
                            <div>Response</div>
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-3 ">Response type</div>
                                <div class="col-sm-9">JSON</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 ">Response Status</div>
                                <div class="col-sm-9">200 - OK</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 ">Response values</div>
                                <div class="col-sm-9">
                                    { 
                                    &nbsp;&nbsp;"ListBlockingOutApps": [
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp; {
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"ClientID": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Id": 1,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"AppID": "BO1",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"UserID": "155",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Applicant": "name",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Address": "Company1, Colombo 07.",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Telephone": "0710859897",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Email": "useremail@mail.com",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Location": "location",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"AssessmentNo": "232",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Street": "street",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DivisionNo": "Div",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"SurvPlanNo": "10",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Surveyor": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"SizeOfLand": "45",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"CurrentUse": "use of land",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"LandFill": "no",
                                    <br />     
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"LevelsOfRoad": "1",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"AttLandDevCorp": "attachment.name",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"IfAggriLand": "no",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"AttGoviJana": "attachment.name",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DevResMatters": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DevComMatters": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DevIndMatters": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DevGrounds": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DevOutMatters": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DevStreets": "",
                                    <br />                                    
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DevOther": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"InfWaterExist": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"InfWaterProp": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"InfEffExist": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"InfEffProp": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"InfDrainExist": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"InfDrainProp": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"InfElecExist": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"InfElecProp": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"IfBuilDiv": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DatesofDev": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"OriginalPlan": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"MoreThanHectare": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"ElecBoardApp": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"WaterBoardApp": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Entrance": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Status": "Paid",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"AppliedDate": "2023/07/12 02:18",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"AppRejDate": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"ExpDate": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; }
                                    <br />
                                     ],
                                    <br />
                                    "ReturnMsg": {
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; "ReturnValue": "OK",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; "ReturnMessage": "Data found",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; "AppId": 0
                                    <br />
                                     }
                                    <br />
                                    }
                                </div>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>ReturnMessageInfo List</div>
                            <br />
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-12 ">
                                    "ReturnMessageInfo" is 2nd arry of the response and it has two objects "ReturnValue" and "ReturnMessage".
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">Description</div>
                                <div class="col-sm-2 ">ReturnValue</div>
                                <div class="col-sm-5">ReturnMessage</div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">If process successfully complete</div>
                                <div class="col-sm-2 ">"OK"</div>
                                <div class="col-sm-5">"Data found etc..."</div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">If any error occured</div>
                                <div class="col-sm-2 ">"Error"</div>
                                <div class="col-sm-5">"Invalid Client ID, Connection not found etc..."</div>

                            </div>
                        </div>
                    </div>
                </div>
                <%--=================================== 02. Get An Application By Id ============================================================--%>
                <div id="apiAppbyId">
                    <h3 class="heading">Get An Application By Id</h3>
                    <div>
                        <div>
                            <div>Introduction</div>
                        </div>
                        <div class="pre row">
                            <div class="col-sm-12 ">This API helps to get an application by ID</div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>Base URL</div>
                        </div>
                        <div class="pre row">
                            <div class="col-sm-12 ">https://blocking-api.nekfa.com/api/BlockingOutById</div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>Request type</div>
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-3 ">Method</div>
                                <div class="col-sm-9">POST</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 ">Content type</div>
                                <div class="col-sm-9">application/json</div>
                            </div>
                        </div>
                    </div>

                    <div>
                        <div>
                            <div>List of parameters</div>
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-2 ">ClientID</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    To identify user.
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "ClientID":"TestId"
                                    }
                                </div>
                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">ID</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    To identify application.
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">Int</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "ID": 200
                                    }
                                </div>
                            </div>
                            <br />
                        </div>
                    </div>
                    <div style="height: 400px; overflow-y: scroll; overflow-x: hidden;">
                        <div>
                            <div>Response</div>
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-3 ">Response type</div>
                                <div class="col-sm-9">JSON</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 ">Response Status</div>
                                <div class="col-sm-9">200 - OK</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 ">Response values</div>
                                <div class="col-sm-9">
                                    { 
                                    &nbsp;&nbsp;"BlockingOutApplication": [
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp; {
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"ClientID": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Id": 1,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"AppID": "BO1",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"UserID": "155",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Applicant": "name",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Address": "Company1, Colombo 07.",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Telephone": "0710859897",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Email": "useremail@mail.com",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Location": "location",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"AssessmentNo": "232",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Street": "street",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DivisionNo": "Div",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"SurvPlanNo": "10",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Surveyor": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"SizeOfLand": "45",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"CurrentUse": "use of land",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"LandFill": "no",
                                    <br />     
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"LevelsOfRoad": "1",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"AttLandDevCorp": "attachment.name",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"IfAggriLand": "no",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"AttGoviJana": "attachment.name",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DevResMatters": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DevComMatters": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DevIndMatters": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DevGrounds": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DevOutMatters": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DevStreets": "",
                                    <br />                                    
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DevOther": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"InfWaterExist": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"InfWaterProp": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"InfEffExist": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"InfEffProp": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"InfDrainExist": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"InfDrainProp": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"InfElecExist": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"InfElecProp": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"IfBuilDiv": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DatesofDev": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"OriginalPlan": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"MoreThanHectare": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"ElecBoardApp": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"WaterBoardApp": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Entrance": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Status": "Paid",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"AppliedDate": "2023/07/12 02:18",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"AppRejDate": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"ExpDate": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; },
                                    <br />
                                    "ReturnMsg": {
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; "ReturnValue": "OK",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; "ReturnMessage": "Data found",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; "AppId": 0
                                    <br />
                                     }
                                    <br />
                                    }
                                </div>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>ReturnMessageInfo List</div>
                            <br />
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-12 ">
                                    "ReturnMessageInfo" is 2nd arry of the response and it has two objects "ReturnValue" and "ReturnMessage".
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">Description</div>
                                <div class="col-sm-2 ">ReturnValue</div>
                                <div class="col-sm-5">ReturnMessage</div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">If process successfully complete</div>
                                <div class="col-sm-2 ">"OK"</div>
                                <div class="col-sm-5">"Data found etc..."</div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">If any error occured</div>
                                <div class="col-sm-2 ">"Error"</div>
                                <div class="col-sm-5">"Invalid Client ID, Connection not found etc..."</div>

                            </div>
                        </div>
                    </div>
                </div>
                <%--=================================== 02. Get An Application By Id And UserId =================================================--%>
                <div id="apiAppByIdUserID">
                    <h3 class="heading">Get An Application By Id And UserId</h3>
                    <div>
                        <div>
                            <div>Introduction</div>
                        </div>
                        <div class="pre row">
                            <div class="col-sm-12 ">This API helps to get an application by ID and UserID</div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>Base URL</div>
                        </div>
                        <div class="pre row">
                            <div class="col-sm-12 ">https://blocking-api.nekfa.com/api/BlockingOutByUserIdAndId</div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>Request type</div>
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-3 ">Method</div>
                                <div class="col-sm-9">POST</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 ">Content type</div>
                                <div class="col-sm-9">application/json</div>
                            </div>
                        </div>
                    </div>

                    <div>
                        <div>
                            <div>List of parameters</div>
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-2 ">ClientID</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    To identify user.
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "ClientID":"TestId"
                                    }
                                </div>
                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">ID</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    To identify application.
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">Int</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "ID": 200
                                    }
                                </div>
                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">UserID</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    To identify user.
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "UserID": "295"
                                    }
                                </div>
                            </div>
                            <br />
                        </div>
                    </div>
                    <div style="height: 400px; overflow-y: scroll; overflow-x: hidden;">
                        <div>
                            <div>Response</div>
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-3 ">Response type</div>
                                <div class="col-sm-9">JSON</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 ">Response Status</div>
                                <div class="col-sm-9">200 - OK</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 ">Response values</div>
                                <div class="col-sm-9">
                                    { 
                                    &nbsp;&nbsp;"BlockingOutApplication": [
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp; {
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"ClientID": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Id": 1,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"AppID": "BO1",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"UserID": "155",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Applicant": "name",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Address": "Company1, Colombo 07.",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Telephone": "0710859897",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Email": "useremail@mail.com",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Location": "location",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"AssessmentNo": "232",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Street": "street",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DivisionNo": "Div",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"SurvPlanNo": "10",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Surveyor": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"SizeOfLand": "45",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"CurrentUse": "use of land",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"LandFill": "no",
                                    <br />     
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"LevelsOfRoad": "1",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"AttLandDevCorp": "attachment.name",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"IfAggriLand": "no",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"AttGoviJana": "attachment.name",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DevResMatters": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DevComMatters": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DevIndMatters": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DevGrounds": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DevOutMatters": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DevStreets": "",
                                    <br />                                    
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DevOther": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"InfWaterExist": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"InfWaterProp": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"InfEffExist": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"InfEffProp": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"InfDrainExist": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"InfDrainProp": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"InfElecExist": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"InfElecProp": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"IfBuilDiv": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DatesofDev": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"OriginalPlan": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"MoreThanHectare": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"ElecBoardApp": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"WaterBoardApp": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Entrance": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Status": "Paid",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"AppliedDate": "2023/07/12 02:18",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"AppRejDate": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"ExpDate": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; },
                                    <br />
                                    "ReturnMsg": {
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; "ReturnValue": "OK",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; "ReturnMessage": "Data found",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; "AppId": 0
                                    <br />
                                     }
                                    <br />
                                    }
                                </div>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>ReturnMessageInfo List</div>
                            <br />
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-12 ">
                                    "ReturnMessageInfo" is 2nd arry of the response and it has two objects "ReturnValue" and "ReturnMessage".
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">Description</div>
                                <div class="col-sm-2 ">ReturnValue</div>
                                <div class="col-sm-5">ReturnMessage</div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">If process successfully complete</div>
                                <div class="col-sm-2 ">"OK"</div>
                                <div class="col-sm-5">"Data found etc..."</div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">If any error occured</div>
                                <div class="col-sm-2 ">"Error"</div>
                                <div class="col-sm-5">"Invalid Client ID, Connection not found etc..."</div>

                            </div>
                        </div>
                    </div>
                </div>
                <%--=================================== 05. Submit Application ==================================================================--%>
                <div id="apiAppSubmit">
                    <h3 class="heading">Submit Application</h3>
                    <div>
                        <div>
                            <div>Introduction</div>
                        </div>
                        <div class="pre row">
                            <div class="col-sm-12 ">This API helps to submit a blocking out application </div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>Base URL</div>
                        </div>
                        <div class="pre row">
                            <div class="col-sm-12 ">https://blocking-api.nekfa.com/api/AppSubmit</div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>Request type</div>
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-3 ">Method</div>
                                <div class="col-sm-9">POST</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 ">Content type</div>
                                <div class="col-sm-9">application/json</div>
                            </div>
                        </div>
                    </div>

                    <div style="height: 400px; overflow-y: scroll; overflow-x: hidden;">
                        <div>
                            <div>List of parameters</div>
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-2 ">ClientID</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    To identify user.
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "ClientID":"TestId"
                                    }
                                </div>
                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">UserID</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    To identify user.
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "User":"166"
                                    }
                                </div>

                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">Applicant</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    Applicant Name
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">string</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "Applicant": "ApplicantName"
                                    }
                                </div>
                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">Address</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    Address
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">string</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "Address": "Colombo"
                                    }
                                </div>
                            </div>
                            <br />

                            <div class="row">
                            <div class="col-sm-2 ">Telephone</div>
                            <div class="col-sm-2 ">Description</div>
                            <div class="col-sm-8 ">
                                Telephone number
                            </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">string</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "Telephone": "0711898989"
                                    }
                                </div>
                            </div>
                            <br />

                            <div class="row">
                            <div class="col-sm-2 ">Email</div>
                            <div class="col-sm-2 ">Description</div>
                            <div class="col-sm-8 ">
                                Email
                            </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "Email": "user@mail.com"
                                    }
                                </div>
                            </div>
                            <br />

                            <div class="row">
                            <div class="col-sm-2 ">Location</div>
                            <div class="col-sm-2 ">Description</div>
                            <div class="col-sm-8 ">
                                Location name
                            </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "Location": "Location"
                                    }
                                </div>
                            </div>
                            <br />

                            <div class="row">
                            <div class="col-sm-2 ">AssessmentNo</div>
                            <div class="col-sm-2 ">Description</div>
                            <div class="col-sm-8 ">
                                Assessment Number
                            </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "AssessmentNo": "34"
                                    }
                                </div>
                            </div>
                            <br />

                            <div class="row">
                            <div class="col-sm-2 ">Street</div>
                            <div class="col-sm-2 ">Description</div>
                            <div class="col-sm-8 ">
                                Street name
                            </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "Street": "Street"
                                    }
                                </div>
                            </div>
                            <br />

                            <div class="row">
                            <div class="col-sm-2 ">DivisionNo</div>
                            <div class="col-sm-2 ">Description</div>
                            <div class="col-sm-8 ">
                                Division Number
                            </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">No</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "DivisionNo": "DivisionNo"
                                    }
                                </div>
                            </div>
                            <br />

                            <div class="row">
                            <div class="col-sm-2 ">SurvPlanNo</div>
                            <div class="col-sm-2 ">Description</div>
                            <div class="col-sm-8 ">
                                Survay Plan Number
                            </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "SurvPlanNo": "5454"
                                    }
                                </div>
                            </div>
                            <br />

                            <div class="row">
                            <div class="col-sm-2 ">SizeOfLand</div>
                            <div class="col-sm-2 ">Description</div>
                            <div class="col-sm-8 ">
                                Size Of Land
                            </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "SizeOfLand": "45"
                                    }
                                </div>
                            </div>
                            <br />

                            <div class="row">
                            <div class="col-sm-2 ">CurrentUse</div>
                            <div class="col-sm-2 ">Description</div>
                            <div class="col-sm-8 ">
                                Current Use of land
                            </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "CurrentUse": "Current Use"
                                    }
                                </div>
                            </div>
                            <br />

                            <div class="row">
                            <div class="col-sm-2 ">LandFill</div>
                            <div class="col-sm-2 ">Description</div>
                            <div class="col-sm-8 ">
                                If Land is Filled for development
                            </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "LandFill": "LandFill"
                                    }
                                </div>
                            </div>
                            <br />                                                      

                            <div class="row">
                                <div class="col-sm-2 ">LevelsOfRoad</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    Levels Of Road
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "LevelsOfRoad": "Levels Of Road"
                                    }
                                </div>

                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">AttLandDevCorp</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    Attachment name of letter from land develeopment corporation
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "AttLandDevCorp": "AttLandDevCorp"
                                    }
                                </div>

                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">IfAggriLand</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    If its an aggricultural land
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">No</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "IfAggriLand": "yes"
                                    }
                                </div>

                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">AttGoviJana</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    Attachment from Govi Jana Seva Saba
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "AttGoviJana": "AttGoviJana"
                                    }
                                </div>

                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">DevResMatters</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    Develeopment for Residential Matters
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "DevResMatters": "DevResMatters."
                                    }
                                </div>

                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">DevComMatters</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    Development for commercial matters
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">No</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "DevComMatters": ""
                                    }
                                </div>

                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">DevIndMatters</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    Develeopment for Industrial Matters
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">No</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "DevIndMatters": ""
                                    }
                                </div>

                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">DevOutMatters</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    Develeopment for Outdoor areas
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "DevOutMatters": ""
                                    }
                                </div>

                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">DevGrounds</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    Development for playgrounds
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "DevGrounds": ""
                                    }
                                </div>

                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">DevStreets</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    Development of Streets
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "DevStreets": ""
                                    }
                                </div>

                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">DevOther</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    Other developments
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "DevOther": ""
                                    }
                                </div>

                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">InfWaterExist</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    Information about existing water supply
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "InfWaterExist": ""
                                    }
                                </div>

                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">InfWaterProp</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    information about proposed water supply
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "InfWaterProp": ""
                                    }
                                </div>

                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">InfEffExist</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    Information about existing effluent water management
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">No</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "InfEffExist": ""
                                    }
                                </div>

                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">InfEffProp</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    Information about proposed effluent water management
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">No</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "InfEffProp": ""
                                    }
                                </div>

                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">InfDrainExist</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    Information about existing dranage
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">No</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "InfDrainExist": ""
                                    }
                                </div>

                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">InfDrainProp</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    Information about proposed dranage
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "InfDrainProp": ""
                                    }
                                </div>

                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">InfElecExist</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    Information about existing electricity
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "InfElecExist": ""
                                    }
                                </div>

                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">InfElecProp</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    Information about proposed electricity
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "InfElecProp": ""
                                    }
                                </div>

                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">IfBuilDiv</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    If a building is divided
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "IfBuilDiv": ""
                                    }
                                </div>

                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">DatesofDev</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    Estimated dates for development
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "DatesofDev": ""
                                    }
                                </div>

                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">OriginalPlan</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    attachment of original plan of land
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "OriginalPlan": ""
                                    }
                                </div>

                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">MoreThanHectare</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    if land is More Than one Hectare
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "MoreThanHectare": "Yes"
                                    }
                                </div>

                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">ElecBoardApp</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    Attachment of approval from electricity board
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "ElecBoardApp": ""
                                    }
                                </div>

                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">WaterBoardApp</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    Attachment of approval from water board
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "WaterBoardApp": ""
                                    }
                                </div>

                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">Entrance</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    attachment of entrance to land
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "Entrance": ""
                                    }
                                </div>

                            </div>
                            <br />

                        </div>
                    </div>
                    <div style="overflow-y: hidden; overflow-x: hidden;">
                        <div>
                            <div>Response</div>
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-3 ">Response type</div>
                                <div class="col-sm-9">JSON</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 ">Response Status</div>
                                <div class="col-sm-9">200 - OK</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 ">Response values</div>
                                <div class="col-sm-9">
                                    { 
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"ReturnValue": "OK",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"ReturnMessage": "Application details successfully submitted.",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"AppId": 260
                                    <br />
                                    }
                                </div>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>ReturnMessageInfo List</div>
                            <br />
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-12 ">
                                    "ReturnMessageInfo" is 2nd arry of the response and it has two objects "ReturnValue" and "ReturnMessage".
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">Description</div>
                                <div class="col-sm-2 ">ReturnValue</div>
                                <div class="col-sm-5">ReturnMessage</div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">If process successfully complete</div>
                                <div class="col-sm-2 ">"OK"</div>
                                <div class="col-sm-5">"Data found etc..."</div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">If any error occured</div>
                                <div class="col-sm-2 ">"Error"</div>
                                <div class="col-sm-5">"Invalid Client ID, Connection not found etc..."</div>

                            </div>
                        </div>
                    </div>
                </div>
                <%--=================================== 07. Approve Application =================================================================--%>
                <div id="apiAppApprove">
                    <h3 class="heading">Approve Application</h3>
                    <div>
                        <div>
                            <div>Introduction</div>
                        </div>
                        <div class="pre row">
                            <div class="col-sm-12 ">This API helps to approve an application</div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>Base URL</div>
                        </div>
                        <div class="pre row">
                            <div class="col-sm-12 ">https://blocking-api.nekfa.com/api/BlockingOutApprove</div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>Request type</div>
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-3 ">Method</div>
                                <div class="col-sm-9">POST</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 ">Content type</div>
                                <div class="col-sm-9">application/json</div>
                            </div>
                        </div>
                    </div>

                    <div>
                        <div>
                            <div>List of parameters</div>
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-2 ">ID</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    Application id.
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">int</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "ID": 201
                                    }
                                </div>

                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">ClientID</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    To identify user.
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "ClientID":"TestId"
                                    }
                                </div>
                            </div>
                            <br />


                        </div>
                    </div>
                    <div style="overflow-y: hidden; overflow-x: hidden;">
                        <div>
                            <div>Response</div>
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-3 ">Response type</div>
                                <div class="col-sm-9">JSON</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 ">Response Status</div>
                                <div class="col-sm-9">200 - OK</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 ">Response values</div>
                                <div class="col-sm-9">
                                    { 
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"ReturnValue": "OK",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"ReturnMessage": "Application Approved.",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"AppId": 0
                                    <br />
                                    }
                                </div>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>ReturnMessageInfo List</div>
                            <br />
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-12 ">
                                    "ReturnMessageInfo" is 2nd arry of the response and it has two objects "ReturnValue" and "ReturnMessage".
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">Description</div>
                                <div class="col-sm-2 ">ReturnValue</div>
                                <div class="col-sm-5">ReturnMessage</div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">If process successfully complete</div>
                                <div class="col-sm-2 ">"OK"</div>
                                <div class="col-sm-5">"Data found etc..."</div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">If any error occured</div>
                                <div class="col-sm-2 ">"Error"</div>
                                <div class="col-sm-5">"Invalid Client ID, Connection not found etc..."</div>

                            </div>
                        </div>
                    </div>
                </div>
                <%--=================================== 08. Reject Application ==================================================================--%>
                <div id="apiAppReject">
                    <h3 class="heading">Reject Municipal Application</h3>
                    <div>
                        <div>
                            <div>Introduction</div>
                        </div>
                        <div class="pre row">
                            <div class="col-sm-12 ">This API helps to reject a municipal application</div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>Base URL</div>
                        </div>
                        <div class="pre row">
                            <div class="col-sm-12 ">https://firecertificate-api.nekfa.com/api/FireAppReject</div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>Request type</div>
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-3 ">Method</div>
                                <div class="col-sm-9">POST</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 ">Content type</div>
                                <div class="col-sm-9">application/json</div>
                            </div>
                        </div>
                    </div>

                    <div>
                        <div>
                            <div>List of parameters</div>
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-2 ">Id</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    Application id.
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">Int</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "Id": 201
                                    }
                                </div>

                            </div>
                            <br />
                             <div class="row">
                                <div class="col-sm-2 ">RejectReason</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    Reject reason
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">No</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "RejectReason": "Reject Reason"
                                    }
                                </div>

                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">ClientID</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    To identify user.
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "ClientID":"TestId"
                                    }
                                </div>
                            </div>
                            <br />


                        </div>
                    </div>
                    <div style="overflow-y: hidden; overflow-x: hidden;">
                        <div>
                            <div>Response</div>
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-3 ">Response type</div>
                                <div class="col-sm-9">JSON</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 ">Response Status</div>
                                <div class="col-sm-9">200 - OK</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 ">Response values</div>
                                <div class="col-sm-9">
                                    { 
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"ReturnValue": "OK",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"ReturnMessage": "Application Successfully rejected.",
                                    <br />
                                    }
                                </div>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>ReturnMessageInfo List</div>
                            <br />
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-12 ">
                                    "ReturnMessageInfo" is 2nd arry of the response and it has two objects "ReturnValue" and "ReturnMessage".
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">Description</div>
                                <div class="col-sm-2 ">ReturnValue</div>
                                <div class="col-sm-5">ReturnMessage</div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">If process successfully complete</div>
                                <div class="col-sm-2 ">"OK"</div>
                                <div class="col-sm-5">"Data found etc..."</div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">If any error occured</div>
                                <div class="col-sm-2 ">"Error"</div>
                                <div class="col-sm-5">"Invalid Client ID, Connection not found etc..."</div>

                            </div>
                        </div>
                    </div>
                </div>                
                <%--=================================== 12. Assign Surveyor =====================================================================--%>
                <div id="apiAssignSurvayor">
                    <h3 class="heading">Assign Surveyor</h3>
                    <div>
                        <div>
                            <div>Introduction</div>
                        </div>
                        <div class="pre row">
                            <div class="col-sm-12 ">This API helps to assign a Surveyor to an application </div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>Base URL</div>
                        </div>
                        <div class="pre row">
                            <div class="col-sm-12 ">https://blocking-api.nekfa.com/api/BlockingOutAssignSurv</div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>Request type</div>
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-3 ">Method</div>
                                <div class="col-sm-9">POST</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 ">Content type</div>
                                <div class="col-sm-9">application/json</div>
                            </div>
                        </div>
                    </div>

                    <div>
                        <div>
                            <div>List of parameters</div>
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-2 ">Id</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    Application id.
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">int</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "Id": 201
                                    }
                                </div>

                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">ClientID</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    To identify user.
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "ClientID":"TestId"
                                    }
                                </div>
                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">Surveyor</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    Surveyor Name
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "Surveyor":"Surveyor 1"
                                    }
                                </div>
                            </div>
                            <br />

                             <div class="row">
                                <div class="col-sm-2 ">SurvayDate</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    Survay Date
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">DateTime</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "SurvayDate":"2023/06/12 13:00"
                                    }
                                </div>
                            </div>
                            <br />
                        </div>
                    </div>
                    <div style="overflow-y: hidden; overflow-x: hidden;">
                        <div>
                            <div>Response</div>
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-3 ">Response type</div>
                                <div class="col-sm-9">JSON</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 ">Response Status</div>
                                <div class="col-sm-9">200 - OK</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 ">Response values</div>
                                <div class="col-sm-9">
                                    { 
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"ReturnValue": "OK",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"ReturnMessage": "Surveyor Assigned",
                                    <br />
                                    }
                                </div>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>ReturnMessageInfo List</div>
                            <br />
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-12 ">
                                    "ReturnMessageInfo" is 2nd arry of the response and it has two objects "ReturnValue" and "ReturnMessage".
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">Description</div>
                                <div class="col-sm-2 ">ReturnValue</div>
                                <div class="col-sm-5">ReturnMessage</div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">If process successfully complete</div>
                                <div class="col-sm-2 ">"OK"</div>
                                <div class="col-sm-5">"Data found etc..."</div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">If any error occured</div>
                                <div class="col-sm-2 ">"Error"</div>
                                <div class="col-sm-5">"Invalid Client ID, Connection not found etc..."</div>

                            </div>
                        </div>
                    </div>
                </div>                
                <%--=================================== 14. Charges =============================================================================--%>
                <div id="apiChargebyId">
                    <h3 class="heading">Charges</h3>
                    <div>
                        <div>
                            <div>Introduction</div>
                        </div>
                        <div class="pre row">
                            <div class="col-sm-12 ">This API helps to get all Charges</div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>Base URL</div>
                        </div>
                        <div class="pre row">
                            <div class="col-sm-12 ">https://firecertificate-api.nekfa.com/api/Charges</div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>Request type</div>
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-3 ">Method</div>
                                <div class="col-sm-9">POST</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 ">Content type</div>
                                <div class="col-sm-9">application/json</div>
                            </div>
                        </div>
                    </div>

                    <div>
                        <div>
                            <div>List of parameters</div>
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-2 ">ClientID</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    To identify user.
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "ClientID":"TestId"
                                    }
                                </div>

                            </div>

                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">Id</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    Charge Id.
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">int</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "Id":1
                                    }
                                </div>

                            </div>

                            <br />
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>Response</div>
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-3 ">Response type</div>
                                <div class="col-sm-9">JSON</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 ">Response Status</div>
                                <div class="col-sm-9">200 - OK</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 ">Response values</div>
                                <div class="col-sm-9">
                                    { 
                                    &nbsp;&nbsp;"ListFireApplication": [
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp; {
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Id": "1",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"ChargeName": "Inspection",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Amount": 1500.00,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"ClientID": null
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; }
                                    <br />
                                     ],
                                    <br />
                                    "ReturnMessageInfo": {
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; "ReturnValue": "OK",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; "ReturnMessage": "Data found"
                                    <br />
                                     }
                                    <br />
                                    }
                                </div>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>ReturnMessageInfo List</div>
                            <br />
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-12 ">
                                    "ReturnMessageInfo" is 2nd arry of the response and it has two objects "ReturnValue" and "ReturnMessage".
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">Description</div>
                                <div class="col-sm-2 ">ReturnValue</div>
                                <div class="col-sm-5">ReturnMessage</div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">If process successfully complete</div>
                                <div class="col-sm-2 ">"OK"</div>
                                <div class="col-sm-5">"Data found etc..."</div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">If any error occured</div>
                                <div class="col-sm-2 ">"Error"</div>
                                <div class="col-sm-5">"Invalid Client ID, Connection not found etc..."</div>

                            </div>
                        </div>
                    </div>
                </div>
                <%--=================================== 15. Submit Payment ======================================================================--%>
                <div id="apiPaymentSubmit">
                    <h3 class="heading">Submit Payment</h3>
                    <div>
                        <div>
                            <div>Introduction</div>
                        </div>
                        <div class="pre row">
                            <div class="col-sm-12 ">This API helps to submit payment details</div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>Base URL</div>
                        </div>
                        <div class="pre row">
                            <div class="col-sm-12 ">https://firecertificate-api.nekfa.com/api/Payment</div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>Request type</div>
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-3 ">Method</div>
                                <div class="col-sm-9">POST</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 ">Content type</div>
                                <div class="col-sm-9">application/json</div>
                            </div>
                        </div>
                    </div>

                    <div style="overflow-y: hidden; overflow-x: hidden;">
                        <div>
                            <div>List of parameters</div>
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-2 ">Id</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    Application id.
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">int</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "Id": 210
                                    }
                                </div>

                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">ClientID</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    To identify user.
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "ClientID":"TestId"
                                    }
                                </div>

                            </div>
                            <br />    
                            
                            <div class="row">
                                <div class="col-sm-2 ">CollectMethod</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    To identify user.
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">No</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "CollectMethod":"1"
                                    }
                                </div>

                            </div>
                            <br />                       
                        </div>
                    </div>
                    <div style="overflow-y: hidden; overflow-x: hidden;">
                        <div>
                            <div>Response</div>
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-3 ">Response type</div>
                                <div class="col-sm-9">JSON</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 ">Response Status</div>
                                <div class="col-sm-9">200 - OK</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 ">Response values</div>
                                <div class="col-sm-9">
                                    { 
                                    <br />
                                    &nbsp;&nbsp;"PaymentDetails": [
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp; {
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"BankCharges": 200.00,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"ConsultantFee": 0.0,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"InspectionFees": 0.0,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"TotalPayment": 20200.00,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"AnnualCertificate": 20000.00,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Postal": 1.44,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"ClientID": "TestId",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"OrderID": "14FC19",
                                    <br /> 
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; }
                                    <br />
                                     ],
                                    <br />
                                    "ReturnMessageInfo": {
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; "ReturnValue": "OK",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; "ReturnMessage": "Data found"
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; "AppId": 0
                                    <br /> 
                                    }
                                    <br />
                                    }
                                </div>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>ReturnMessageInfo List</div>
                            <br />
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-12 ">
                                    "ReturnMessageInfo" is 2nd arry of the response and it has two objects "ReturnValue" and "ReturnMessage".
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">Description</div>
                                <div class="col-sm-2 ">ReturnValue</div>
                                <div class="col-sm-5">ReturnMessage</div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">If process successfully complete</div>
                                <div class="col-sm-2 ">"OK"</div>
                                <div class="col-sm-5">"Data found etc..."</div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">If any error occured</div>
                                <div class="col-sm-2 ">"Error"</div>
                                <div class="col-sm-5">"Invalid Client ID, Connection not found etc..."</div>

                            </div>
                        </div>
                    </div>
                </div>
                <%--=================================== 16. Bank Return Message Saving ==========================================================--%>
                <div id="apiBankReturn">
                            <h3 class="heading">Bank Return Message Saving</h3>
                            <div>
                                <div>
                                    <div>Introduction</div>
                                </div>
                                <div class="pre row">
                                    <div class="col-sm-12 ">This API helps to save return bank message to the database and updating the status of the application</div>
                                </div>
                            </div>
                            <div>
                                <div>
                                    <div>Base URL</div>
                                </div>
                                <div class="pre row">
                                    <div class="col-sm-12 ">https://firecertificate-api.nekfa.com/api/SaveBankMsg</div>
                                </div>
                            </div>
                            <div>
                                <div>
                                    <div>Request type</div>
                                </div>
                                <div class="pre">
                                    <div class="row">
                                        <div class="col-sm-3 ">Method</div>
                                        <div class="col-sm-9">POST</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-3 ">Content type</div>
                                        <div class="col-sm-9">application/json</div>
                                    </div>
                                </div>


                            </div>

                            <div>
                                <div>
                                    <div>List of parameters</div>
                                </div>
                                <div class="pre">


                                    <div class="row">
                                        <div class="col-sm-2 ">OrderID</div>
                                        <div class="col-sm-2 ">Description</div>
                                        <div class="col-sm-8 ">
                                            Logged Users Id
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-2 "></div>
                                        <div class="col-sm-2 ">Required</div>
                                        <div class="col-sm-8 ">Yes</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-2 "></div>
                                        <div class="col-sm-2 ">Data type</div>
                                        <div class="col-sm-8 ">string</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-2 "></div>
                                        <div class="col-sm-2 ">Example</div>
                                        <div class="col-sm-8 ">
                                            {
                                      "OrderID":"14FC19"
                                    }
                                        </div>

                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-sm-2 ">ClientID</div>
                                        <div class="col-sm-2 ">Description</div>
                                        <div class="col-sm-8 ">
                                            Database client id
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-2 "></div>
                                        <div class="col-sm-2 ">Required</div>
                                        <div class="col-sm-8 ">Yes</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-2 "></div>
                                        <div class="col-sm-2 ">Data type</div>
                                        <div class="col-sm-8 ">String</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-2 "></div>
                                        <div class="col-sm-2 ">Example</div>
                                        <div class="col-sm-8 ">
                                            {
                                      "ClientID":"TestID"
                                    }
                                        </div>

                                    </div>
                                    <br />

                                    <div class="row">
                                        <div class="col-sm-2 ">ResponseCode</div>
                                        <div class="col-sm-2 ">Description</div>
                                        <div class="col-sm-8 ">
                                            Response Code from the Bank portal
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-2 "></div>
                                        <div class="col-sm-2 ">Required</div>
                                        <div class="col-sm-8 ">Yes</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-2 "></div>
                                        <div class="col-sm-2 ">Data type</div>
                                        <div class="col-sm-8 ">int</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-2 "></div>
                                        <div class="col-sm-2 ">Example</div>
                                        <div class="col-sm-8 ">
                                            {
                                      "ResponseCode" : 1
                                    }
                                        </div>

                                    </div>
                                    <br />

                                    <div class="row">
                                        <div class="col-sm-2 ">ReasonCode</div>
                                        <div class="col-sm-2 ">Description</div>
                                        <div class="col-sm-8 ">
                                            Reason Code from the bank portal
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-2 "></div>
                                        <div class="col-sm-2 ">Required</div>
                                        <div class="col-sm-8 ">Yes</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-2 "></div>
                                        <div class="col-sm-2 ">Data type</div>
                                        <div class="col-sm-8 ">int</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-2 "></div>
                                        <div class="col-sm-2 ">Example</div>
                                        <div class="col-sm-8 ">
                                            {
                                      "ReasonCode" : 1
                                    }
                                        </div>

                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-sm-2 ">ReasonCodeDesc</div>
                                        <div class="col-sm-2 ">Description</div>
                                        <div class="col-sm-8 ">
                                            Reason Code Description from the bank portal
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-2 "></div>
                                        <div class="col-sm-2 ">Required</div>
                                        <div class="col-sm-8 ">Yes</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-2 "></div>
                                        <div class="col-sm-2 ">Data type</div>
                                        <div class="col-sm-8 ">string</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-2 "></div>
                                        <div class="col-sm-2 ">Example</div>
                                        <div class="col-sm-8 ">
                                            {
                                      "ReasonCodeDesc" : "Approved"
                                    }
                                        </div>

                                    </div>
                                    <br />

                                    <div class="row">
                                        <div class="col-sm-2 ">ReferenceNo</div>
                                        <div class="col-sm-2 ">Description</div>
                                        <div class="col-sm-8 ">
                                            Reference No from the bank portal
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-2 "></div>
                                        <div class="col-sm-2 ">Required</div>
                                        <div class="col-sm-8 ">Yes</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-2 "></div>
                                        <div class="col-sm-2 ">Data type</div>
                                        <div class="col-sm-8 ">string</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-2 "></div>
                                        <div class="col-sm-2 ">Example</div>
                                        <div class="col-sm-8 ">
                                            {
                                      "ReferenceNo" : "45636238"
                                    }
                                        </div>

                                    </div>
                                    <br />

                                    <div class="row">
                                        <div class="col-sm-2 ">PaddedCardNo</div>
                                        <div class="col-sm-2 ">Description</div>
                                        <div class="col-sm-8 ">
                                            Padded Card No from the bank portal
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-2 "></div>
                                        <div class="col-sm-2 ">Required</div>
                                        <div class="col-sm-8 ">Yes</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-2 "></div>
                                        <div class="col-sm-2 ">Data type</div>
                                        <div class="col-sm-8 ">string</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-2 "></div>
                                        <div class="col-sm-2 ">Example</div>
                                        <div class="col-sm-8 ">
                                            {
                                      "PaddedCardNo" : "XXXXXXXXXXXX8119"
                                    }
                                        </div>

                                    </div>
                                    <br />

                                    <div class="row">
                                        <div class="col-sm-2 ">AuthCode</div>
                                        <div class="col-sm-2 ">Description</div>
                                        <div class="col-sm-8 ">
                                            Authorization Code from the bank portal
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-2 "></div>
                                        <div class="col-sm-2 ">Required</div>
                                        <div class="col-sm-8 ">Yes</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-2 "></div>
                                        <div class="col-sm-2 ">Data type</div>
                                        <div class="col-sm-8 ">string</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-2 "></div>
                                        <div class="col-sm-2 ">Example</div>
                                        <div class="col-sm-8 ">
                                            {
                                      "AuthCode" : "162242",
                                    }
                                        </div>

                                    </div>
                                    <br />

                                    <div class="row">
                                        <div class="col-sm-2 ">BillToFirstName</div>
                                        <div class="col-sm-2 ">Description</div>
                                        <div class="col-sm-8 ">
                                            Bill to first name from the bank portal
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-2 "></div>
                                        <div class="col-sm-2 ">Required</div>
                                        <div class="col-sm-8 ">No</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-2 "></div>
                                        <div class="col-sm-2 ">Data type</div>
                                        <div class="col-sm-8 ">string</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-2 "></div>
                                        <div class="col-sm-2 ">Example</div>
                                        <div class="col-sm-8 ">
                                            {
                                      "BillToFirstName" : "Sawsiri Sampath"
                                    }
                                        </div>

                                    </div>
                                    <br />

                                    <div class="row">
                                        <div class="col-sm-2 ">BillToMiddleName</div>
                                        <div class="col-sm-2 ">Description</div>
                                        <div class="col-sm-8 ">
                                            Bill to middle name from the bank portal
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-2 "></div>
                                        <div class="col-sm-2 ">Required</div>
                                        <div class="col-sm-8 ">No</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-2 "></div>
                                        <div class="col-sm-2 ">Data type</div>
                                        <div class="col-sm-8 ">string</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-2 "></div>
                                        <div class="col-sm-2 ">Example</div>
                                        <div class="col-sm-8 ">
                                            {
                                      "BillToMiddleName" : ""
                                    }
                                        </div>

                                    </div>
                                    <br />

                                    <div class="row">
                                        <div class="col-sm-2 ">BillToLastName</div>
                                        <div class="col-sm-2 ">Description</div>
                                        <div class="col-sm-8 ">
                                            Bill to Last name from the bank portal
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-2 "></div>
                                        <div class="col-sm-2 ">Required</div>
                                        <div class="col-sm-8 ">No</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-2 "></div>
                                        <div class="col-sm-2 ">Data type</div>
                                        <div class="col-sm-8 ">string</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-2 "></div>
                                        <div class="col-sm-2 ">Example</div>
                                        <div class="col-sm-8 ">
                                            {
                                      "BillToLastName" : "",
                                    }
                                        </div>

                                    </div>
                                    <br />

                                    <div class="row">
                                        <div class="col-sm-2 ">Signature</div>
                                        <div class="col-sm-2 ">Description</div>
                                        <div class="col-sm-8 ">
                                            Signature from the bank portal
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-2 "></div>
                                        <div class="col-sm-2 ">Required</div>
                                        <div class="col-sm-8 ">No</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-2 "></div>
                                        <div class="col-sm-2 ">Data type</div>
                                        <div class="col-sm-8 ">string</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-2 "></div>
                                        <div class="col-sm-2 ">Example</div>
                                        <div class="col-sm-8 ">
                                            {
                                      "Signature" : ""
                                    }
                                        </div>

                                    </div>
                                    <br />

                                    <div class="row">
                                        <div class="col-sm-2 ">SignatureMethod</div>
                                        <div class="col-sm-2 ">Description</div>
                                        <div class="col-sm-8 ">
                                            Signature Method from the bank portal
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-2 "></div>
                                        <div class="col-sm-2 ">Required</div>
                                        <div class="col-sm-8 ">No</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-2 "></div>
                                        <div class="col-sm-2 ">Data type</div>
                                        <div class="col-sm-8 ">string</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-2 "></div>
                                        <div class="col-sm-2 ">Example</div>
                                        <div class="col-sm-8 ">
                                            {
                                      "SignatureMethod" : ""
                                    }
                                        </div>

                                    </div>
                                    <br />

                                    
                                </div>
                            </div>
                            <div style="height: 170px; overflow-y: scroll; overflow-x: hidden;">
                                <div>
                                    <div>Response</div>
                                </div>
                                <div class="pre">
                                    <div class="row">
                                        <div class="col-sm-3 ">Response type</div>
                                        <div class="col-sm-9">JSON</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-3 ">Response Status</div>
                                        <div class="col-sm-9">200 - OK</div>
                                    </div>

                                    <div class="row">
                                        <div class="col-sm-3 ">Response values</div>
                                     <div class="col-sm-9">

                                            "PaidDetails": { 
                                            <br />
                                            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "OrderID": "14FC19",
                                            <br />
                                            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "CertificateId": "FC25",
                                            <br />
                                            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "ServiceName": "Fire Certificate",
                                            <br />
                                            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "ApplicantName": "Nipuna",
                                            <br />
                                            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "ApplicantAddress": "4th Floor, Colombo 02",
                                            <br />
                                            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "ApplicantMobile": "0761955360",
                                            <br />
                                            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "BankCharges": 200.00,
                                            <br />
                                            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "ConsultantFee": 2400.00,
                                            <br />
                                            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "InspectionFees": "1500.00,
                                            <br />
                                            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "AnnualCertificate": 0.00,
                                            <br />
                                            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Postal": 1.44,
                                            <br />
                                            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "TotalPayment": 4600.00,
                                            <br />                                                                                     
                                            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "ClientID": "testId",
                                            <br />
                                            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "ApplicantionId": 255,
                                            <br />
                                            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "Email": "user@gmail.com",
                                            <br />
                                            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "ResponseCode": 1,
                                            <br />
                                            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "ReasonCode": 1,
                                            <br />
                                            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "ReferenceNo": "45636238",
                                            <br />
                                            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "BillToFirstName": "Nipuna",
                                            <br />
                                            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "BillToMiddleName": "",
                                            <br />
                                            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "BillToLastName": "",
                                            <br />
                                            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "PaddedCardNo": "XXXXXXXXXXXX8119",
                                            <br />
                                            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "ResultTime": "2023/06/22 15:18"
                                            <br />
                                            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; }
                                            <br />
                                            "ReturnMsg": { 
                                            <br />
                                            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "ReturnValue": "OK",
                                            <br />
                                            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "ReturnMessage": "Payment Success ",
                                            <br />
                                            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "AppId": 0
                                            <br />  
                                            }
                                            <br />
                                            <br />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div>
                                
                                <div class="pre">
                                    <div class="row">
                                        <div class="col-sm-12 ">
                                            "ReturnMessageInfo" is 2nd arry of the response and it has two objects "ReturnValue" and "ReturnMessage".
                                        </div>
                                    </div>
                                    <br />
                                    <br />
                                    <div class="row">
                                        <div class="col-sm-5 ">Description</div>
                                        <div class="col-sm-2 ">ReturnValue</div>
                                        <div class="col-sm-5">ReturnMessage</div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-sm-5 ">If process successfully complete</div>
                                        <div class="col-sm-2 ">"OK"</div>
                                        <div class="col-sm-5">"Application details successfully submitted etc..."</div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-sm-5 ">If any error occured</div>
                                        <div class="col-sm-2 ">"Error"</div>
                                        <div class="col-sm-5">"Invalid Client ID, Connection not found etc..."</div>

                                    </div>
                                </div>
                            </div>
                        </div>
                <%--=================================== 18. Approved Municipal applications by date =============================================--%>
                <div id="apiApprovedbyDate">
                    <h3 class="heading">Get Approved Municipal Applications Between given dates</h3>
                    <div>
                        <div>
                            <div>Introduction</div>
                        </div>
                        <div class="pre row">
                            <div class="col-sm-12 ">This API helps to get a list of approved municipal council applications between given dates</div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>Base URL</div>
                        </div>
                        <div class="pre row">
                            <div class="col-sm-12 ">https://firecertificate-api.nekfa.com/api/FireAppApprovedByDate</div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>Request type</div>
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-3 ">Method</div>
                                <div class="col-sm-9">POST</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 ">Content type</div>
                                <div class="col-sm-9">application/json</div>
                            </div>
                        </div>
                    </div>

                    <div>
                        <div>
                            <div>List of parameters</div>
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-2 ">StartDate</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    Start date of the search
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "StartDate":"2023/06/01 00:00"
                                    }
                                </div>

                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">EndDate</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    End date of the search
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "EndDate":"2023/06/01 00:00"
                                    }
                                </div>

                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">ClientID</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    To identify user.
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "ClientID":"TestId"
                                    }
                                </div>

                            </div>

                            <br />
                        </div>
                    </div>
                    <div style="height: 400px; overflow-y: scroll; overflow-x: hidden;">
                        <div>
                            <div>Response</div>
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-3 ">Response type</div>
                                <div class="col-sm-9">JSON</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 ">Response Status</div>
                                <div class="col-sm-9">200 - OK</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 ">Response values</div>
                                <div class="col-sm-9">
                                    { 
                                    &nbsp;&nbsp;"ListFireApplication": [
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp; {
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Id": 1,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"CertificateId": "FC004",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"CompanyName": "Company1",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Address": "Company1, Colombo 07.",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Telephone": "0710859897",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DistanceFromCouncil": 7,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"NatureOfBusiness": "Sales",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"BuildingPlan": "plan.pdf",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"BuildingDescription": "Building Description in text",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"TotalLand": 10,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"RoadFromCouncil": "Highlevel rd.",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"OwnerName": "Owner Name",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"CurrentFirePlan": "Fire Extinguishers",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Status": "Pending",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Email": "useremail@mail.com",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DateApplied": "2023-06-23",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DateReviewed": "2023-06-23",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DateActReview": "2023-07-12",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DateIssued": "2023-06-23",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DateAppRej": "2023-06-23",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"ClientID": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Supervisor": ""
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"StartDate": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"EndDate": null
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"RejectReason": "",
                                    <br />                                    
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "ApplicantName": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "BOwnerName": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "LesseeName": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "EmergencyContact": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "BAddress": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "OtherAddresses": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "DistRoadSigns": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "ShortestRoad": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "BTelephone": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "Mobile": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "LandArea": 0,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "Capacity": 0,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "Stories": 0,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "Construction": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "BuildType": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "UnapprovedBuildings": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "PlanAvailability": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "Exitways": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "EmergencyExits": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "DayManpower": 0,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "NightManpower": 0,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "TankCapacity": 0,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "CommonTank": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "FirehoseLocation": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "ElecPhase": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "Generator": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "CurrentCircuit": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "SupervisorVisited": "1",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "CollectMethod": ""
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; }
                                    <br />
                                     ],
                                    <br />
                                    &nbsp;&nbsp;"ListPayment": [
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp; {
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Id": 1,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"CertificateId": "FC004",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Note": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"TotAmt": 1500.00,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"User": "TstUser",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Date": "6/2/2023 13:00:",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"PaymentType": "Bank",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"PaidDescription": "Description",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"PaymentID": "123",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"BillNo": "B112",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"BankCharges": 100.00,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"ConsultantFee": 1500.00,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"InspectionFees": 5000.00,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"AnnualCertificate": 0.00,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Postal": 1.44,
                                    <br />                                                                                                                                                   
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; }
                                    <br />
                                     ],
                                    <br />
                                    "ReturnMessageInfo": {
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; "ReturnValue": "OK",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; "ReturnMessage": "Data found"
                                    <br />
                                     }
                                    <br />
                                    }
                                </div>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>ReturnMessageInfo List</div>
                            <br />
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-12 ">
                                    "ReturnMessageInfo" is 2nd arry of the response and it has two objects "ReturnValue" and "ReturnMessage".
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">Description</div>
                                <div class="col-sm-2 ">ReturnValue</div>
                                <div class="col-sm-5">ReturnMessage</div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">If process successfully complete</div>
                                <div class="col-sm-2 ">"OK"</div>
                                <div class="col-sm-5">"Data found etc..."</div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">If any error occured</div>
                                <div class="col-sm-2 ">"Error"</div>
                                <div class="col-sm-5">"Invalid Client ID, Connection not found etc..."</div>

                            </div>
                        </div>
                    </div>
                </div>
                <%--=================================== 19. Rejected Municipal applications by date =============================================--%>
                <div id="apiRejectedbyDate">
                    <h3 class="heading">Get Rejected Municipal Applications Between given dates</h3>
                    <div>
                        <div>
                            <div>Introduction</div>
                        </div>
                        <div class="pre row">
                            <div class="col-sm-12 ">This API helps to get a list of rejected municipal council applications between given dates</div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>Base URL</div>
                        </div>
                        <div class="pre row">
                            <div class="col-sm-12 ">https://firecertificate-api.nekfa.com/api/FireAppRejectedByDate</div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>Request type</div>
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-3 ">Method</div>
                                <div class="col-sm-9">POST</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 ">Content type</div>
                                <div class="col-sm-9">application/json</div>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>List of parameters</div>
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-2 ">StartDate</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    Start date of the search
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "StartDate":"2023/06/01 00:00"
                                    }
                                </div>
                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">EndDate</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    End date of the search
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "EndDate":"2023/06/01 00:00"
                                    }
                                </div>

                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">ClientID</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    To identify user.
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "ClientID":"TestId"
                                    }
                                </div>

                            </div>

                            <br />
                        </div>
                    </div>
                    <div style="height: 400px; overflow-y: scroll; overflow-x: hidden;">
                        <div>
                            <div>Response</div>
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-3 ">Response type</div>
                                <div class="col-sm-9">JSON</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 ">Response Status</div>
                                <div class="col-sm-9">200 - OK</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 ">Response values</div>
                                <div class="col-sm-9">
                                    { 
                                    &nbsp;&nbsp;"ListFireApplication": [
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp; {
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Id": 1,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"CertificateId": "FC004",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"CompanyName": "Company1",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Address": "Company1, Colombo 07.",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Telephone": "0710859897",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DistanceFromCouncil": 7,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"NatureOfBusiness": "Sales",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"BuildingPlan": "plan.pdf",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"BuildingDescription": "Building Description in text",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"TotalLand": 10,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"RoadFromCouncil": "Highlevel rd.",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"OwnerName": "Owner Name",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"CurrentFirePlan": "Fire Extinguishers",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Status": "Rejected",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Email": "useremail@mail.com",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DateApplied": "2023-06-23",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DateReviewed": "2023-06-23",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DateActReview": "2023-07-12",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DateIssued": "2023-06-23",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DateAppRej": "2023-06-23",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"ClientID": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Supervisor": ""
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"StartDate": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"EndDate": null
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"RejectReason": "dgahksgdhdasdasdasdaasgdasd",
                                    <br />                                    
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "ApplicantName": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "BOwnerName": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "LesseeName": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "EmergencyContact": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "BAddress": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "OtherAddresses": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "DistRoadSigns": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "ShortestRoad": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "BTelephone": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "Mobile": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "LandArea": 0,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "Capacity": 0,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "Stories": 0,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "Construction": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "BuildType": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "UnapprovedBuildings": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "PlanAvailability": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "Exitways": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "EmergencyExits": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "DayManpower": 0,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "NightManpower": 0,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "TankCapacity": 0,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "CommonTank": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "FirehoseLocation": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "ElecPhase": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "Generator": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "CurrentCircuit": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "SupervisorVisited": "1",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "CollectMethod": ""
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; }
                                    <br />
                                     ],
                                    <br />
                                    &nbsp;&nbsp;"ListPayment": [
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp; {
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Id": 1,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"CertificateId": "FC004",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Note": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"TotAmt": 1500.00,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"User": "TstUser",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Date": "6/2/2023 13:00:",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"PaymentType": "Bank",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"PaidDescription": "Description",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"PaymentID": "123",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"BillNo": "B112",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"BankCharges": 100.00,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"ConsultantFee": 1500.00,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"InspectionFees": 5000.00,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"AnnualCertificate": 0.00,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Postal": 1.44,
                                    <br />                                                                                                                                                   
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; }
                                    <br />
                                     ],
                                    <br />
                                    "ReturnMessageInfo": {
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; "ReturnValue": "OK",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; "ReturnMessage": "Data found"
                                    <br />
                                     }
                                    <br />
                                    }
                                </div>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>ReturnMessageInfo List</div>
                            <br />
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-12 ">
                                    "ReturnMessageInfo" is 2nd arry of the response and it has two objects "ReturnValue" and "ReturnMessage".
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">Description</div>
                                <div class="col-sm-2 ">ReturnValue</div>
                                <div class="col-sm-5">ReturnMessage</div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">If process successfully complete</div>
                                <div class="col-sm-2 ">"OK"</div>
                                <div class="col-sm-5">"Data found etc..."</div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">If any error occured</div>
                                <div class="col-sm-2 ">"Error"</div>
                                <div class="col-sm-5">"Invalid Client ID, Connection not found etc..."</div>

                            </div>
                        </div>
                    </div>
                </div>
                <%--=================================== 21. Assigned Municipal applications by date =============================================--%>
                <div id="apiAssignedbyDate">
                    <h3 class="heading">Get Assigned Municipal Applications Between given dates</h3>
                    <div>
                        <div>
                            <div>Introduction</div>
                        </div>
                        <div class="pre row">
                            <div class="col-sm-12 ">This API helps to get a list of municipal council applications that got a supervisor assigned between given dates</div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>Base URL</div>
                        </div>
                        <div class="pre row">
                            <div class="col-sm-12 ">https://firecertificate-api.nekfa.com/api/FireAppAssignedByDate</div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>Request type</div>
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-3 ">Method</div>
                                <div class="col-sm-9">POST</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 ">Content type</div>
                                <div class="col-sm-9">application/json</div>
                            </div>
                        </div>
                    </div>

                    <div>
                        <div>
                            <div>List of parameters</div>
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-2 ">StartDate</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    Start date of the search
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "StartDate":"2023/06/01 00:00"
                                    }
                                </div>

                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">EndDate</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    End date of the search
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "EndDate":"2023/06/01 00:00"
                                    }
                                </div>

                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">ClientID</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    To identify user.
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "ClientID":"TestId"
                                    }
                                </div>

                            </div>

                            <br />
                        </div>
                    </div>
                    <div style="height: 400px; overflow-y: scroll; overflow-x: hidden;">
                        <div>
                            <div>Response</div>
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-3 ">Response type</div>
                                <div class="col-sm-9">JSON</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 ">Response Status</div>
                                <div class="col-sm-9">200 - OK</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 ">Response values</div>
                                <div class="col-sm-9">
                                    { 
                                    &nbsp;&nbsp;"ListFireApplication": [
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp; {
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Id": 1,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"CertificateId": "FC004",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"CompanyName": "Company1",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Address": "Company1, Colombo 07.",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Telephone": "0710859897",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DistanceFromCouncil": 7,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"NatureOfBusiness": "Sales",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"BuildingPlan": "plan.pdf",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"BuildingDescription": "Building Description in text",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"TotalLand": 10,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"RoadFromCouncil": "Highlevel rd.",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"OwnerName": "Owner Name",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"CurrentFirePlan": "Fire Extinguishers",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Status": "Assigned",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Email": "useremail@mail.com",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DateApplied": "2023-06-23",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DateReviewed": "2023-06-23",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DateActReview": "2023-07-12",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DateIssued": "2023-06-23",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DateAppRej": "2023-06-23",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"ClientID": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Supervisor": ""
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"StartDate": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"EndDate": null
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"RejectReason": "",
                                    <br />                                    
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "ApplicantName": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "BOwnerName": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "LesseeName": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "EmergencyContact": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "BAddress": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "OtherAddresses": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "DistRoadSigns": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "ShortestRoad": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "BTelephone": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "Mobile": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "LandArea": 0,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "Capacity": 0,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "Stories": 0,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "Construction": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "BuildType": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "UnapprovedBuildings": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "PlanAvailability": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "Exitways": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "EmergencyExits": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "DayManpower": 0,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "NightManpower": 0,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "TankCapacity": 0,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "CommonTank": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "FirehoseLocation": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "ElecPhase": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "Generator": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "CurrentCircuit": null,                                    
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "SupervisorVisited": "1",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "CollectMethod": ""
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; }
                                    <br />
                                     ],
                                    <br />
                                    &nbsp;&nbsp;"ListPayment": [
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp; {
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Id": 1,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"CertificateId": "FC004",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Note": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"TotAmt": 1500.00,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"User": "TstUser",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Date": "6/2/2023 13:00:",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"PaymentType": "Bank",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"PaidDescription": "Description",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"PaymentID": "123",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"BillNo": "B112",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"BankCharges": 100.00,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"ConsultantFee": 1500.00,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"InspectionFees": 5000.00,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"AnnualCertificate": 0.00,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Postal": 1.44,
                                    <br />                                                                                                                                                   
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; }
                                    <br />
                                     ],
                                    <br />                                    
                                    "ReturnMessageInfo": {
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; "ReturnValue": "OK",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; "ReturnMessage": "Data found"
                                    <br />
                                     }
                                    <br />
                                    }
                                </div>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>ReturnMessageInfo List</div>
                            <br />
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-12 ">
                                    "ReturnMessageInfo" is 2nd arry of the response and it has two objects "ReturnValue" and "ReturnMessage".
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">Description</div>
                                <div class="col-sm-2 ">ReturnValue</div>
                                <div class="col-sm-5">ReturnMessage</div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">If process successfully complete</div>
                                <div class="col-sm-2 ">"OK"</div>
                                <div class="col-sm-5">"Data found etc..."</div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">If any error occured</div>
                                <div class="col-sm-2 ">"Error"</div>
                                <div class="col-sm-5">"Invalid Client ID, Connection not found etc..."</div>

                            </div>
                        </div>
                    </div>
                </div>
                <%--=================================== 23. Issued Municipal applications by date ===============================================--%>
                <div id="apiIssuedbyDate">
                    <h3 class="heading">Get Paid Municipal Applications Between given dates</h3>
                    <div>
                        <div>
                            <div>Introduction</div>
                        </div>
                        <div class="pre row">
                            <div class="col-sm-12 ">This API helps to get a list of municipal council applications of issued certificates between given dates</div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>Base URL</div>
                        </div>
                        <div class="pre row">
                            <div class="col-sm-12 ">https://firecertificate-api.nekfa.com/api/FireAppIssuedByDate</div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>Request type</div>
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-3 ">Method</div>
                                <div class="col-sm-9">POST</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 ">Content type</div>
                                <div class="col-sm-9">application/json</div>
                            </div>
                        </div>
                    </div>

                    <div>
                        <div>
                            <div>List of parameters</div>
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-2 ">StartDate</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    Start date of the search
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "StartDate":"2023/06/01 00:00"
                                    }
                                </div>

                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">EndDate</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    End date of the search
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "EndDate":"2023/06/01 00:00"
                                    }
                                </div>

                            </div>
                            <br />

                            <div class="row">
                                <div class="col-sm-2 ">ClientID</div>
                                <div class="col-sm-2 ">Description</div>
                                <div class="col-sm-8 ">
                                    To identify user.
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Required</div>
                                <div class="col-sm-8 ">Yes</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Data type</div>
                                <div class="col-sm-8 ">String</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2 "></div>
                                <div class="col-sm-2 ">Example</div>
                                <div class="col-sm-8 ">
                                    {
                                      "ClientID":"TestId"
                                    }
                                </div>

                            </div>

                            <br />
                        </div>
                    </div>
                    <div style="height: 400px; overflow-y: scroll; overflow-x: hidden;">
                        <div>
                            <div>Response</div>
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-3 ">Response type</div>
                                <div class="col-sm-9">JSON</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 ">Response Status</div>
                                <div class="col-sm-9">200 - OK</div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 ">Response values</div>
                                <div class="col-sm-9">
                                    { 
                                    &nbsp;&nbsp;"ListFireApplication": [
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp; {
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "Id": 1,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "CertificateId": "FC004",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "CompanyName": "Company1",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "Address": "Company1, Colombo 07.",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "Telephone": "0710859897",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "DistanceFromCouncil": 7,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "NatureOfBusiness": "Sales",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "BuildingPlan": "plan.pdf",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "BuildingDescription": "Building Description in text",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "TotalLand": 10,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "RoadFromCouncil": "Highlevel rd.",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "OwnerName": "Owner Name",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "CurrentFirePlan": "Fire Extinguishers",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "Status": "Issued",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "Email": "useremail@mail.com",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "DateApplied": "2023-06-23",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "DateReviewed": "2023-06-23",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DateActReview": "2023-07-12",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DateIssued": "2023-06-23",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"DateAppRej": "2023-06-23",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "ClientID": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "Supervisor": ""
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "StartDate": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "EndDate": null
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "RejectReason": "",
                                    <br />                                    
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "ApplicantName": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "BOwnerName": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "LesseeName": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "EmergencyContact": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "BAddress": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "OtherAddresses": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "DistRoadSigns": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "ShortestRoad": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "BTelephone": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "Mobile": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "LandArea": 0,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "Capacity": 0,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "Stories": 0,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "Construction": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "BuildType": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "UnapprovedBuildings": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "PlanAvailability": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "Exitways": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "EmergencyExits": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "DayManpower": 0,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "NightManpower": 0,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "TankCapacity": 0,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "CommonTank": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "FirehoseLocation": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "ElecPhase": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "Generator": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "CurrentCircuit": null,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "SupervisorVisited": "1",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; "CollectMethod": ""
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; }
                                    <br />
                                     ],
                                    <br />
                                    &nbsp;&nbsp;"ListPayment": [
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp; {
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Id": 1,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"CertificateId": "FC004",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Note": "",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"TotAmt": 1500.00,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"User": "TstUser",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Date": "6/2/2023 13:00:",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"PaymentType": "Bank",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"PaidDescription": "Description",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"PaymentID": "123",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"BillNo": "B112",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"BankCharges": 100.00,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"ConsultantFee": 1500.00,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"InspectionFees": 5000.00,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"AnnualCertificate": 0.00,
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;"Postal": 1.44,
                                    <br />                                                                                                                                                   
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; }
                                    <br />
                                     ],
                                    <br />
                                    "ReturnMessageInfo": {
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; "ReturnValue": "OK",
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; "ReturnMessage": "Data found"
                                    <br />
                                     }
                                    <br />
                                    }
                                </div>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div>
                            <div>ReturnMessageInfo List</div>
                            <br />
                        </div>
                        <div class="pre">
                            <div class="row">
                                <div class="col-sm-12 ">
                                    "ReturnMessageInfo" is 2nd arry of the response and it has two objects "ReturnValue" and "ReturnMessage".
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">Description</div>
                                <div class="col-sm-2 ">ReturnValue</div>
                                <div class="col-sm-5">ReturnMessage</div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">If process successfully complete</div>
                                <div class="col-sm-2 ">"OK"</div>
                                <div class="col-sm-5">"Data found etc..."</div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-5 ">If any error occured</div>
                                <div class="col-sm-2 ">"Error"</div>
                                <div class="col-sm-5">"Invalid Client ID, Connection not found etc..."</div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
