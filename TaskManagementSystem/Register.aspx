<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="TaskManagementSystem.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width-device-width,initial-scale=1.0" />
    <link href="Assets/css/bootstrap.min.css" rel="stylesheet" />
    <%--<style type="text/css">
        .auto-style1 {
            width: 480px;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>--%>
    <style type="text/css">
        *{
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
        }
        .container{
            max-width:700px;
            width:100%;
            padding:25px 30px;
            border-radius:25px;
            background:linear-gradient(135deg,#dc0606ca,#05073a);
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
              background:linear-gradient(135deg,#05073a,#dc0606ca);
          }
           form .button .btn:hover{
               background:linear-gradient(135deg,#05073a,#dc0606ca);
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
</head>
<body>
    <form id="form1" runat="server">
       <div class="container">
           <div class="header">Registration</div>         
               <div class="card-details">
                   <div class="card-box">
                       <span class="details">EmpId</span>
                       <asp:TextBox ID="txtempid" runat="server" onkeypress="return Numbersonly(event)"></asp:TextBox>
                   </div>
                    <div class="card-box">
                       <span class="details">FirstName</span>
                       <asp:TextBox ID="txtfname" runat="server" CssClass="txt"></asp:TextBox>
                   </div>
                    <div class="card-box">
                       <span class="details">LastName</span>
                       <asp:TextBox ID="txtlname" runat="server" CssClass="txt"></asp:TextBox>
                   </div>
                    <div class="card-box">
                       <span class="details">Role</span>
                        <asp:RadioButton ID="rdbadmin" runat="server" Text="Admin" GroupName="Role"/>
                        <asp:RadioButton ID="rdbsuperadmin" runat="server" Text="SuperAdmin" GroupName="Role"/>
                        <asp:RadioButton ID="rdbmanager" runat="server" Text="Manager" GroupName="Role"/>
                        <asp:RadioButton ID="rdbteamleder" runat="server" Text="TeamLeader" GroupName="Role"/>
                        <asp:RadioButton ID="rdbemployee" runat="server" Text="Employee" GroupName="Role"/>
                   </div>
                  <div class="card-box">
                       <span class="details">DeptId</span>
                        <asp:DropDownList ID="ddldeptid" runat="server" CssClass="txt" Height="29px" Width="181px">                          
                        </asp:DropDownList>
                   </div>
                    <div class="card-box">
                       <span class="details">UserName</span>
                       <asp:TextBox ID="txtusername" runat="server" CssClass="txt"></asp:TextBox>
                   </div>
                   <div class="card-box">
                       <span class="details">PassWord</span>
                       <asp:TextBox ID="txtpassword" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
                   </div>
                    <div class="card-box">
                       <span class="details">Mobile</span>
                       <asp:TextBox ID="txtmobile" runat="server" CssClass="txt"></asp:TextBox>
                   </div>                   
                    <div class="card-box">
                       <span class="details">EmailId</span>
                       <asp:TextBox ID="txtemail" runat="server" CssClass="txt"></asp:TextBox>
                   </div>
                    <div class="card-box">
                       <span class="details">DOJ</span>
                       <asp:TextBox ID="txtdoj" runat="server" CssClass="txt" TextMode="Date"></asp:TextBox>
                   </div>
                    <div class="card-box">
                       <span class="details">DOB </span>
                       <asp:TextBox ID="txtdob" runat="server" CssClass="txt" TextMode="Date"></asp:TextBox>
                   </div>
                    <div class="card-box">
                       <span class="details">CreatedBy</span>
                       <asp:TextBox ID="txtcreatedby" runat="server" CssClass="txt"></asp:TextBox>                     
                   </div>
                    <div class="card-box">
                       <span class="details">CreatedDate</span>
                       <asp:TextBox ID="txtcreateddate" runat="server" CssClass="txt" TextMode="Date"></asp:TextBox>
                   </div>
                    <div class="card-box">
                       <span class="details">ModifiedBy</span>
                       <asp:TextBox ID="txtmodifiedby" runat="server" CssClass="txt"></asp:TextBox>                     
                   </div>
                    <div class="card-box">
                       <span class="details">ModifiedDate</span>
                       <asp:TextBox ID="txtmodifieddate" runat="server" CssClass="txt" TextMode="Date"></asp:TextBox>
                   </div>
               </div>            
               <div class="button">
                    <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" CssClass="btn"/>
               </div>
       </div>
    </form>
</body>
</html>
