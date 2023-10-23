<%@ Page Title="" Language="C#" MasterPageFile="~/Employe/Employee.Master" AutoEventWireup="true" CodeBehind="DashBoard4.aspx.cs" Inherits="TaskManagementSystem.Employe.DashBoard4" %>
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
              width:350px;
              height:150px;
              background:#c49a41;
              margin:25px 10px;
              display:flex;
              flex-direction:row;
              justify-content:space-around;
              align-items:center;
              box-shadow:0 4px 8px 0 rgba(0,0,0,0.2) 0,6px,20px,0 rgba(0,0,0,0.19);
          }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section id="main-content">
        <section class="wrapper site-min-height"> 
        <main>
        <div class="content">
            <div class="cards">
                <div class="card">
                    <div class="box">
                        <h2>2</h2>
                        <h4>Super Admin</h4>
                    </div>
                    <div class="icon-case">
                        <img src="../Images/students.png" />
                    </div>
                </div>
                 <div class="card">
                    <div class="box">
                        <h2>4</h2>
                        <h4>Manager</h4>
                    </div>
                    <div class="icon-case">
                        <img src="../Images/students.png" />
                    </div>
                </div>
                 <div class="card">
                    <div class="box">
                        <h2>5</h2>
                        <h4>Teams</h4>
                    </div>
                    <div class="icon-case">
                        <img src="../Images/students.png" />
                    </div>
                </div>
                 <div class="card">
                    <div class="box">
                        <h2>30</h2>
                        <h4>Employees</h4>
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
