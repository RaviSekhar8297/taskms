<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Home.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="TaskManagementSystem.Admin.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
    <section id="main-content">
        <section class="wrapper site-min-height"> 
            
              <%--  <div class="row">
                    <div class="col-md-8">
                        <asp:Label ID="Label1" runat="server" Text="Id :"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </div>
                </div>   --%>   
            
            <%--<div class="container-fluid">
                    <div class="col-md-12">
                        <!--Total Start-->
                        <div class="col-md-3 col-sm-4 mb darkblue-panel pn" style="height: 100%; background: #FF9800; border-radius: 10px; border-right: 2px solid #FFF;">
                            <div class="">     
                                <div class="col-md-4">
                                    <h3 class="mt" style="margin-top: 0px; margin-bottom: 0px;"><i class="fa fa-user fa-3x" style="color: #fff;"></i></h3>
                                </div>
                                <div class="col-md-8">
                                    <div class="darkblue-header" style="margin-bottom: 1px; padding: 1px;">
                                        <h4 style="color: #fff"><strong>Total</strong></h4>
                                    </div>
                                    <footer>
                                        <div class="centered">
                                            <h4 style="margin-top: 1px; margin-bottom: 1px;"><i class="fa fa-user"></i>
                                                <asp:Label ID="lblTotal" runat="server"></asp:Label>
                                            </h4>
                                        </div>
                                    </footer>
                                </div>
                            </div>
                        </div>
                        <!--Total End-->

                        <!--Presents Start-->
                        <div class="col-md-3 col-sm-4 mb darkblue-panel pn" style="height: 100%; background: forestgreen; border-radius: 10px; border-right: 2px solid #FFF;">
                            <div class="">
                                <div class="col-md-4">
                                    <h3 class="mt" style="margin-top: 0px; margin-bottom: 0px;"><i class="fa fa-user fa-3x" style="color: #fff;"></i></h3>
                                </div>
                                <div class="col-md-8">
                                    <div class="darkblue-header" style="margin-bottom: 1px; padding: 1px;">
                                        <h4 style="color: #fff"><strong>Presents</strong></h4>
                                    </div>
                                    <footer>
                                        <div class="centered">
                                            <h4 style="margin-top: 1px; margin-bottom: 1px;"><i class="fa fa-user"></i>
                                                <asp:LinkButton ID="linkpresent" runat="server" ForeColor="White"></asp:LinkButton>
                                                <asp:Label ID="Label7" runat="server"></asp:Label></h4>
                                        </div>
                                    </footer>
                                </div>
                            </div>
                            
                        </div>
                        <!--Presents End-->

                        <!--Absentes Start-->
                        <div class="col-md-3 col-sm-4 mb darkblue-panel pn" style="height: 100%; background: red; border-radius: 10px; border-right: 2px solid #FFF;">
                            <div class="">
                                <div class="col-md-4">
                                    <h3 class="mt" style="margin-top: 0px; margin-bottom: 0px;"><i class="fa fa-user fa-3x" style="color: #fff;"></i></h3>
                                </div>
                                <div class="col-md-8">
                                    <div class="darkblue-header" style="margin-bottom: 1px; padding: 1px;">
                                        <h4 style="color: #fff"><strong>Absentees</strong></h4>
                                    </div>
                                    <footer>
                                        <div class="centered">
                                            <h4 style="margin-top: 1px; margin-bottom: 1px;"><i class="fa fa-user"></i>
                                                <asp:LinkButton ID="linkabsent" runat="server" ForeColor="White"></asp:LinkButton>
                                                <asp:Label ID="Label8" runat="server"></asp:Label></h4>
                                        </div>
                                    </footer>
                                </div>
                            </div> 
                        </div>
                        <!--Absentes End-->

                        <!--Late Comes Start-->
                        <div class="col-md-3 col-sm-4 mb darkblue-panel pn" style="height: 100%; background: #03A9F4; border-radius: 10px;">
                            <div class="">
                                <div class="col-md-4">
                                    <h3 class="mt" style="margin-top: 0px; margin-bottom: 0px;"><i class="fa fa-user fa-3x" style="color: #fff;"></i></h3>
                                </div>
                                <div class="col-md-8">
                                    <div class="darkblue-header" style="margin-bottom: 1px; padding: 1px;">
                                        <h4 style="color: #fff"><strong>Late Comes</strong></h4>
                                    </div>
                                    <footer>
                                        <div class="centered">
                                            <h4 style="margin-top: 1px; margin-bottom: 1px;"><i class="fa fa-user"></i>
                                                <asp:LinkButton ID="linklatecomes" runat="server" ForeColor="White"></asp:LinkButton>
                                                <asp:Label ID="Label9" runat="server"></asp:Label>
                                            </h4>
                                        </div>
                                    </footer>
                                </div>
                            </div>
                            <!-- -- /darkblue panel ---->
                        </div>
                        <!--Late Comes End-->
                    </div>
                </div>--%>

        </section>
    </section>
</asp:Content>
