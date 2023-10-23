<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Home.Master" AutoEventWireup="true" CodeBehind="AddManager.aspx.cs" Inherits="TaskManagementSystem.Admin.AddManager" %>
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
               <div class="row">
                <div class="col-md-6 col-md-offset-3 input-container" id="form">                 
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="ManagerId"></asp:Label>
                        <asp:TextBox ID="txtteamid" runat="server" CssClass="txt"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="ManagerName"></asp:Label>
                        <asp:TextBox ID="txtteamname" runat="server" CssClass="txt"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="CreateDate"></asp:Label>
                        <asp:TextBox ID="txtcreateddate" runat="server" CssClass="txt"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" Text="CreatedBy"></asp:Label>
                        <asp:TextBox ID="txtcreatedby" runat="server" CssClass="txt"></asp:TextBox>
                    </div>                   
                    <div class="btn">
                        <asp:Button ID="addmanager" runat="server" CssClass="btn-2" Text="Add Manager" Font-Bold="true" ForeColor="Green" OnClick="addmanager_Click"/>                 
                    </div>
                </div>
            </div>
            </section>
         </section>
</asp:Content>
