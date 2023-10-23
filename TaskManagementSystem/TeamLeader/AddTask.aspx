<%@ Page Title="" Language="C#" MasterPageFile="~/TeamLeader/TeamLeader.Master" AutoEventWireup="true" CodeBehind="AddTask.aspx.cs" Inherits="TaskManagementSystem.TeamLeader.AddTask" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>
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
            height: 200px;
            display: flex;
            flex-direction: row;
            gap: 0.1rem;
            /* padding: 5px 40px 40px 40px;*/
            justify-content: space-between;
            align-items: center;
            flex-wrap:wrap;
            align-self:center;
             border:1px solid red;
        }

        .reg {
            font-size: 35px;
            font-family: 'Agency FB';
            font-weight: 500;
            border-bottom-style: ridge;
            color: #4cff00;
        }

        .txt {
            height: 25px;
            border: 1px solid black;
            border-radius: 5px;
            outline:none;
        }

        .form-group {
            display: flex;
            flex-direction: column;
            cursor:pointer;
            outline:none;
        }

        .btn {
            color: green;
            width:200px;
            height:45px;
        }

        .btn-2{
            width:90%;
            height:100%;
        }

        .auto-style1 {
            border: 1px solid black;
            border-radius: 5px;
        }
        .input-container{
            border : 1px solid black;
            height:80% !important;
            padding:20px;
            border-radius:7px;
            width:800px !important;
           /* display:flex;
            flex-direction:row;
            justify-content:space-between;
            align-items:center;
            flex-wrap:wrap;*/
        }
    </style>
    <script type='text/javascript'>
        function Numbersonly(event) {
            event = (event) ? event : window.event;
            var charCode = (event.which) ? event.which : event.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                return false;
            }
            return true;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <section id="main-content">
        <section class="wrapper site-min-height">
            <div class="row">
                <div class="col-md-6 col-md-offset-3 input-container" id="form">
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="EmpId"></asp:Label>
                        <asp:TextBox ID="txtempid" runat="server" CssClass="txt" onkeypress="return Numbersonly(event)" AutoCompleteType="Disabled"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="EmpName"></asp:Label>
                        <asp:DropDownList ID="ddlempname" runat="server" DataSourceID="SqlDataSource1" AppendDataBoundItems="true" AutoPostBack="true" DataTextField="Name" DataValueField="Name" OnSelectedIndexChanged="ddlempname_SelectedIndexChanged" Height="30px" Width="196px" CssClass="txt">
                            <asp:ListItem Value="0" Text="--Select--"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TaskManagementConnectionString2 %>" SelectCommand="SELECT [Name] FROM [Employee]"></asp:SqlDataSource>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="TaskName"></asp:Label>
                        <asp:TextBox ID="txttask" runat="server" CssClass="txt"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" Text="StartDate"></asp:Label>
                        <asp:TextBox ID="txtstartdate" runat="server" CssClass="txt" AutoCompleteType="Disabled"></asp:TextBox>
                        <ajax:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtstartdate" />
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label5" runat="server" Text="ExpectedDate"></asp:Label>
                        <asp:TextBox ID="txtexdate" runat="server" CssClass="auto-style1" OnTextChanged="txtexdate_TextChanged" Width="196px" AutoCompleteType="Disabled"></asp:TextBox>
                        <ajax:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txtexdate" />
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label6" runat="server" Text="TotalDays"></asp:Label>
                        <asp:TextBox ID="txtdays" runat="server" CssClass="txt" ReadOnly="true"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label7" runat="server" Text="Status"></asp:Label>
                        <asp:TextBox ID="txtstatus" runat="server" CssClass="txt"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label8" runat="server" Text="Remarks"></asp:Label>
                        <asp:TextBox ID="txtremarks" runat="server" CssClass="txt"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label9" runat="server" Text="Percentage"></asp:Label>
                        <asp:TextBox ID="txtpersent" runat="server" CssClass="txt"></asp:TextBox>
                    </div>
                    <div class="btn">
                        <asp:Button ID="Button1" runat="server" Text="AddTask" CssClass="btn-2" Font-Bold="true" ForeColor="Green" OnClick="Button1_Click" />
                    </div>
                </div>
            </div>
        </section>
    </section>
</asp:Content>
