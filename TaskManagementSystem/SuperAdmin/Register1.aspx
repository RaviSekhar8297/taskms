<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SuperAdmin.Master" AutoEventWireup="true" CodeBehind="Register1.aspx.cs" Inherits="TaskManagementSystem.SuperAdmin.Register1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
         <style type="text/css">
       /* *{
            margin:0;
            padding:0;
            box-sizing:border-box;
            font-family:'Segoe UI',Tahoma,Verdana, Geneva, Tahoma, sans-serif,
        }
        body{
            color:#fff;
            display:flex;
            height:100vh;
            justify-content:center;
            align-items:center;
            background:linear-gradient(135deg,#05073a,#dc0606ca);
            padding:10px;
        }*/
        .container{
            max-width:700px;
            width:100%;
            padding:25px 30px;
            border-radius:25px;
          /* background:linear-gradient(135deg,#dc0606ca,#05073a);*/
          background:linear-gradient(#eacda3,#d6ae7b);
        }
        .container .header{
            font-size:25px;
            font-weight:500;
            position:relative;
            text-align:center;
            padding:0 0 20px 0;
        }
         .container .header::before{
             content:'';
             position:absolute;
             height:3px;
             left:0;
             bottom:0;
             width:100%;
             background:linear-gradient(135deg,#71b7e6,#9b5b);
         }
         .container .card-details{
             margin-top:25px;
             display:flex;
             flex-wrap:wrap;
             justify-content:space-between;
         }
         form .card-details .card-box{
             width:calc(100%/2-20px);
             margin-bottom:15px;
         }
         .card-details .card-box .details{
             display:block;
             font-weight:500;
             margin-bottom:5px;
         }
         .card-details .card-box txt{
             height:45px;
             width:100%;
             outline:none;
             border-radius:5px;
             border:1px solid #ccc;
             padding-left:15px;
             font-size:16px;
             border-bottom-width:2px;
             transition:all 0.3s ease;
         }
         .card-details .card-box txt:focus,.card-details .card-box txt:valid{
             border-color:#9b59b6;
         }
         .circle-form .circle-title{
             font-size:20px;
             font-weight:500;
             border-bottom:2px solid;
         }
         .circle-form .catagiry{
             margin-top:10px;
             margin-bottom:10px;
         }
         form .button{
             text-align:center;
         }
          form .button .btn{
              padding:10px 0;
              margin-top:10px;
              height:100%;
              width:50%;
              outline:none;
              color:#fff;
              border:none;
              font-size:18px;
              font-weight:500;
              border-radius:5px;
              letter-spacing:1px;
             /* background:linear-gradient(135deg,#05073a,#dc0606ca);*/
             background:white;
          }
           form .button .btn:hover{
              /* background:linear-gradient(135deg,#05073a,#dc0606ca);*/
           }

           @media(max-width:584px){
               .container{
                   max-width:100%;
               }
                form .card-details .card-box{
                    margin-bottom:15px;
                    width:100%;
                }
                 form .circle-form .catagiry{
                     width:100%;
                 }
                 .container form .card-details{
                    max-height:300px;
                    overflow:scroll;
                 }
                 /*.card-details::_webkit-scrollbar{
                     width:0;
                 }*/
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
      <section id="main-content">
        <section class="wrapper site-min-height">
               <div class="container">
           <div class="header">Registration</div>         
               <div class="card-details">
                   <div class="card-box">
                       <span class="details">Id</span>
                       <asp:TextBox ID="txtid" runat="server" onkeypress="return Numbersonly(event)"></asp:TextBox>
                   </div>
                    <div class="card-box">
                       <span class="details">Name</span>
                       <asp:TextBox ID="txtname" runat="server" CssClass="txt"></asp:TextBox>
                   </div>
                    <div class="card-box">
                       <span class="details">Email</span>
                       <asp:TextBox ID="txtemail" runat="server" CssClass="txt"></asp:TextBox>
                   </div>
                    <div class="card-box">
                       <span class="details">Phone</span>
                       <asp:TextBox ID="txtphone" runat="server" CssClass="txt"></asp:TextBox>
                   </div>
                    <div class="card-box">
                       <span class="details">Address</span>
                        <asp:DropDownList ID="ddladdress" runat="server" CssClass="txt" Height="29px" Width="181px">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>Hyd</asp:ListItem>
                            <asp:ListItem>Vizag</asp:ListItem>
                            <asp:ListItem>Goa</asp:ListItem>
                            <asp:ListItem>Chennai</asp:ListItem>
                            <asp:ListItem>Bng</asp:ListItem>
                        </asp:DropDownList>
                   </div>
                    <div class="card-box">
                       <span class="details">Username</span>
                       <asp:TextBox ID="txtusername" runat="server" CssClass="txt"></asp:TextBox>
                   </div>
                    <div class="card-box">
                       <span class="details">Password</span>
                       <asp:TextBox ID="txtpassword" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
                   </div>
                    <div class="card-box">
                       <%--<span class="details">Re_Password</span>
                       <asp:TextBox ID="txtrepassword" runat="server" CssClass="txt"></asp:TextBox>--%>
                        <span class="details">Dept</span>
                        <asp:DropDownList ID="ddldept" runat="server" DataSourceID="SqlDataSource1" AppendDataBoundItems="true" AutoPostBack="true" DataValueField="TeamName" DataTextField="TeamName" Height="29px" Width="181px" OnSelectedIndexChanged="ddldept_SelectedIndexChanged">
                            <asp:ListItem>--Select--</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TaskManagementConnectionString4 %>" SelectCommand="SELECT [TeamName] FROM [AddTeam]"></asp:SqlDataSource>
                   </div>
                    <div class="card-box">
                       <span class="details">AddedBy</span>
                       <asp:TextBox ID="txtaddedby" runat="server" CssClass="txt"></asp:TextBox>
                   </div>
               </div>
               <div class="circle-form">
                   <span class="circle-title">Role</span>
                   <div class="catagiry">
                       <asp:RadioButtonList ID="rblrole" runat="server" RepeatDirection="Vertical">                          
                            <asp:ListItem>Super Admin</asp:ListItem>
                            <asp:ListItem>Manager</asp:ListItem>
                            <asp:ListItem>Team Leader</asp:ListItem>
                            <asp:ListItem>Employee</asp:ListItem>
                       </asp:RadioButtonList>
                   </div>
               </div>
               <div class="button">
                    <asp:Button ID="Button1" runat="server" Text="Register" CssClass="btn" ForeColor="#003366" OnClick="Button1_Click"/>
               </div>
       </div>
            </section>
          </section>
</asp:Content>
