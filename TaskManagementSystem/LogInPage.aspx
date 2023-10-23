<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogInPage.aspx.cs" Inherits="TaskManagementSystem.LogInPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LogIn</title>
    <link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>    
    <link href="Assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="LogInStyleSheet1.css" rel="stylesheet" />
    <style type="text/css">
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <%-- <center>
         <div class="cover">                                           
              <div class="elements">
                     <div class="intro">                  
                          <asp:TextBox ID="txtuserId" runat="server" CssClass="txt1 txtstyle" placeholder="USERNAME" ForeColor="#CC0099" AutoCompleteType="Disabled"></asp:TextBox>
                          <asp:TextBox ID="txtPass2" runat="server" TextMode="Password" CssClass="txt1 txtstyle" placeholder="PASSWORD" ForeColor="#CC0099" AutoCompleteType="Disabled"></asp:TextBox>                         
                          <asp:Button ID="btnlogin" runat="server" Text="LOG IN" Font-Bold="True" ForeColor="Green" CssClass="txt1 btnstyle" OnClick="btnlogin_Click"/>                        
                     </div>
                  <div>
                      <asp:Button ID="Button1" runat="server" CssClass="btn2 btnstyle" Text="Register" OnClick="Button1_Click" />
                  </div>
               </div>
           </div> 
          </center>--%>

        <section>
            <div class="leaves">
                <div class="set">
                    <div> <img src="Images/leaf_01.png" /> </div>
                    <div><img src="Images/leaf_02.png" /></div>
                   <div> <img src="Images/leaf_03.png" /> </div>     
                   <div> <img src="Images/leaf_04.png" /></div>
                 </div>
                </div>
            <img src="Images/bg.jpg" class="bg"/>
            <img src="Images/girl.png" class="girl"/>
             <img src="Images/trees.png" class="trees"/>
            <div class="login">
                <h2>Sing In</h2>
                <div class="inputbox">
                     <asp:TextBox ID="txtuserId" runat="server" CssClass="txt1 txtstyle" placeholder="USERNAME" ForeColor="#CC0099" AutoCompleteType="Disabled"></asp:TextBox>
                </div>
                <div>
                     <asp:TextBox ID="txtPass2" runat="server" TextMode="Password" CssClass="txt1 txtstyle" placeholder="PASSWORD" ForeColor="#CC0099" AutoCompleteType="Disabled"></asp:TextBox> 
                </div>
                <div>
                  <asp:Button ID="Button2" runat="server" Text="LOG IN" Font-Bold="True" ForeColor="white" CssClass="btn1 btnstyle" OnClick="btnlogin_Click"/> 
                </div>
                <div class="group">
                    <a href="ForgotPassword.aspx">Change Password</a>
                    <a href="Register.aspx">Register Now</a>
                </div>
            </div>          
        </section>
    </form>
</body>
</html>
