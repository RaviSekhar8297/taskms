<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SuperAdmin.Master" AutoEventWireup="true" CodeBehind="Admin1.aspx.cs" Inherits="TaskManagementSystem.SuperAdmin.Admin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .img{
            padding:300px;
            text-align:center;
           overflow:hidden;
         
          border-radius:5rem;
          
        }
        .img >:nth-child(1){
            width:500px;
            height:80px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="main-content">
        <section class="wrapper site-min-height"> 
        <div class="img">   
           <img src="../Images/result.gif" />
        </div>
            </section>
        </section>
</asp:Content>
