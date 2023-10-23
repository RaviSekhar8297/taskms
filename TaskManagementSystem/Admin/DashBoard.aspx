<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Home.Master" AutoEventWireup="true" CodeBehind="DashBoard.aspx.cs" Inherits="TaskManagementSystem.Admin.DashBoard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .main-content{
           margin-left:500px;
        }
        .main .content{
            position:relative;
            margin-top:10vh;
            min-height:90vh;
        }
        .cards{
            padding:20px 15px;
            display:flex;
            flex-direction :row;
            align-items:center;
            justify-content:space-between;
            
        }
            .card{
              width: 350px;
            height: 150px;
            background: #c49a41;
            margin: 25px 10px;
            display: flex;
            flex-direction: row;
            justify-content: space-around;
            align-items: center;
            box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2) 0,6px,20px,0 rgba(0,0,0,0.19);
          }
    </style>
    <script type="text/javascript">
        function show() {
            var card = document.getElementById("sho");
            popup.classList.toggle("show");
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section id="main-content">
        <section class="wrapper site-min-height"> 
            <main>
        <div class="content">
            <div class="cards">
                <div class="card">
                    <div class="box">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red" Font-Size="20pt"></asp:Label>
                        <h3>Super Admin</h3>
                    </div>
                    <div class="icon-case">
                        <img src="../Images/students.png" />
                    </div>
                </div>
                 <div class="card">
                    <div class="box">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Red" Font-Size="20pt"></asp:Label>
                        <h3>Manager</h3>
                    </div>
                    <div class="icon-case">
                        <img src="../Images/students.png" />
                    </div>
                </div>
                 <div class="card">
                    <div class="box">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Red" Font-Size="20pt"></asp:Label>
                        <h3>Teams</h3>
                    </div>
                    <div class="icon-case">
                        <img src="../Images/students.png" />
                    </div>
                </div>
                 <div class="card">
                    <div class="box">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Red" Font-Size="20pt"></asp:Label>
                        <h3>Employees</h3>
                    </div>
                    <div class="icon-case">
                        <img src="../Images/students.png" />
                    </div>
                </div>
            </div>
        </div>
                </main>
            </section>
        </section>
</asp:Content>
