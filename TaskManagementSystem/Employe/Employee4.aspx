<%@ Page Title="" Language="C#" MasterPageFile="~/Employe/Employee.Master" AutoEventWireup="true" CodeBehind="Employee4.aspx.cs" Inherits="TaskManagementSystem.Employe.Employee4" %>
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
               <asp:Button ID="Button1" CssClass="btn" runat="server" Text="ShowEmployees" OnClick="Button1_Click" Font-Bold="True" ForeColor="#FF0066"/>                 
            </div>
            <br /><br />
            <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            </section>
        </section>
</asp:Content>
