<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SuperAdmin.Master" AutoEventWireup="true" CodeBehind="SuperAdmin1.aspx.cs" Inherits="TaskManagementSystem.SuperAdmin.SuperAdmin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .admin-btn{
            display:flex;
            gap:2rem;
        }
        .btn{
            width:140px;
            height:35px;
            padding:5px;
            border-radius:7px;
            border:1px solid red;

        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section id="main-content">
        <section class="wrapper site-min-height">
            <div class="admin-btn">
               <asp:Button ID="emplist" CssClass="btn" runat="server" Text="ShowEmployees"/>
               <asp:Button ID="addemp" CssClass="btn" runat="server" Text="AddEmployees" />
               <asp:Button ID="addtask" CssClass="btn" runat="server" Text="AddTask" />
            </div>
            </section>
       </section>
</asp:Content>
