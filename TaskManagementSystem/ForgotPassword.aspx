<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="TaskManagementSystem.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="ForgotStyle.css" rel="stylesheet" />
    <link href="Assets/css/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .background-image{
            /*background-image:url();*/
             background:linear-gradient(135deg,#05073a,#dc0606ca);
            background-repeat:no-repeat;
            background-size:cover;
            position:fixed;
            top:0;
            bottom:0;
            left:0;
            right:0;
        }
        a:hover{
            text-decoration:none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="background-image">
            <div class="container">
                <div class="row align-items-center" style="height:100vh !important">
                    <div class="col-4 max-auto" style="max-width:none;">
                        <div class="card" style="width:20rem;">
                            <div class="card-body">
                                <div class="form-group col-12">
                                    <h5>Change Password</h5>
                                </div>
                               <form>
                                    <div class="form-row">
                                        <div class="form-group col-12">
                                            <span>Id</span><br />
                                            <asp:TextBox ID="txtid" runat="server"></asp:TextBox>  
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Id" ControlToValidate="txtid" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                   </div>
                                   <div class="form-row">
                                        <div class="form-group col-12">
                                            <span>New Password</span>
                                            <asp:TextBox ID="txtnewpassword" runat="server"></asp:TextBox>                                          
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Password" ControlToValidate="txtnewpassword" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                   </div>
                                    <div class="form-row">
                                        <div class="form-group col-12">
                                            <span>Confirm Password</span>
                                            <asp:TextBox ID="txtcofirmpassword" runat="server"></asp:TextBox>
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Password" ControlToValidate="txtcofirmpassword" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Not Match" ControlToCompare="txtnewpassword" ControlToValidate="txtcofirmpassword" ForeColor="Red"></asp:CompareValidator>
                                        </div>
                                   </div>
                                    <div class="form-row">
                                        <div class="form-group col-12">
                                            <asp:Button ID="Button1" runat="server" Text="Set PassWord" OnClick="Button1_Click"/>                                          
                                        </div>
                                   </div>
                                    <div class="form-row">
                                        <div class="form-group col-12">
                                            <a href="LogInPage.aspx" class="bluish-text"><b>Sign Now</b></a>                                         
                                        </div>
                                   </div>
                               </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
