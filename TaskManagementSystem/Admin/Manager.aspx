<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Home.Master" AutoEventWireup="true" CodeBehind="Manager.aspx.cs" Inherits="TaskManagementSystem.Admin.Manager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .admin-btn{
            display:flex;
            gap:2rem;
        }
        .btn{
            width:140px;
            height:38px;
            padding:5px;
            border-radius:7px;
            border:1px solid red; 
            margin-left:60em;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <section id="main-content">
        <section class="wrapper site-min-height"> 
             <div class="admin-btn">               
                <asp:Button ID="addmanager" CssClass="btn" runat="server" Text="AddManager" Font-Bold="True" ForeColor="#FF0066" OnClick="addmanager_Click"/>             
            </div>
            </section>
        </section>
</asp:Content>
