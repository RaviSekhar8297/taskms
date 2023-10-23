<%@ Page Title="" Language="C#" MasterPageFile="~/TeamLeader/TeamLeader.Master" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="TaskManagementSystem.TeamLeader.AddEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
          .row{
             height:80vh !important;
            display:flex;
            flex-direction:column;
            justify-content:center;
            align-content:center;
           
        }
        #form {
            /* background-color:#84e184;*/
            height: 600px;
            padding: 5px 40px 40px 40px;
            justify-content: space-between;
            align-items: center;
             height: 200px;
            display: flex;
            flex-direction: row;
            gap: 0.1rem;
            /* padding: 5px 40px 40px 40px;*/
            justify-content: space-between;
            align-items: center;
            flex-wrap:wrap;
            align-self:center;
        }

        .reg {
            font-size: 35px;
            font-family: 'Agency FB';
            font-weight: 500;
            border-bottom-style: ridge;
            color:#4cff00;
        }

        .txt {
            height: 30px;
            border: 1px solid black;           
            border-radius: 5px;
        }
        .form-group{
            display:flex;
            flex-direction:column;
        }
       .btn {
            color: green;
            width:200px;
            height:45px;
            width:900px !important;
        }

        .btn-2{
            width:90%;
            height:100%;
            border-radius:5px;
            border:1px solid black;
        }
        .input-container {
            border: 1px solid black;
            height: 80% !important;
            padding: 20px;
            border-radius: 7px;
        }
        .txt1{
            width:200px;
            border-radius:5px;
            border:1px solid black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="main-content">
        <section class="wrapper site-min-height">
            <div></div>
              <center><b class="reg">Add Employee</b></center>
            <div class="row">
                <div class="col-md-6 col-md-offset-3 input-container" id="form">
                  
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="Id"></asp:Label>
                        <asp:TextBox ID="txtid" runat="server" CssClass="txt"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                        <asp:TextBox ID="txtname" runat="server" CssClass="txt"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
                        <asp:TextBox ID="txtemail" runat="server" CssClass="txt"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" Text="Phone"></asp:Label>
                        <asp:TextBox ID="txtphone" runat="server" CssClass="txt"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label5" runat="server" Text="Address"></asp:Label>
                        <asp:TextBox ID="txtaddress" runat="server" CssClass="txt"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label6" runat="server" Text="UserName"></asp:Label>
                        <asp:TextBox ID="txtuser" runat="server" CssClass="txt"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label7" runat="server" Text="PassWord"></asp:Label>
                        <asp:TextBox ID="txtpass" runat="server" CssClass="txt"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label8" runat="server" Text="DateOfJoin"></asp:Label>
                        <asp:TextBox ID="txtdatejoin" runat="server" CssClass="txt1" TextMode="Date"></asp:TextBox>
                    </div>
                    <div class="btn">
                        <asp:Button ID="Button1" runat="server" CssClass="btn-2" Text="Add" Font-Bold="true" ForeColor="Green"/>
                    </div>
                </div>
            </div>
        </section>
    </section>
</asp:Content>
