<%@ Page Title="" Language="C#" MasterPageFile="~/TeamLeader/TeamLeader.Master" AutoEventWireup="true" CodeBehind="TeamLeader3.aspx.cs" Inherits="TaskManagementSystem.TeamLeader.TeamLeader3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .admin-btn {
            display: flex;
            gap: 2rem;
            flex-direction:row;
            justify-content:space-between;
            align-items:center;
            width:97%;
        }

        .btn {
            width: 140px;
            height: 35px;
            padding: 5px;
            border-radius: 7px;
            border: 1px solid red;
        }
      
        .btn2{
            width:140px;
            height:35px;
            padding-left:10px;
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
                <asp:Button ID="addtask" CssClass="btn" runat="server" Text="AddTask" OnClick="addtask_Click" />
                <asp:Button ID="Button1" runat="server" Text="Show Task List" CssClass="btn" OnClick="Button1_Click"/>
            </div>
             <div>
                
            </div>
            <br />
            <br />
           
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
