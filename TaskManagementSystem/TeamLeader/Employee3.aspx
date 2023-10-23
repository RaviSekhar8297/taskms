<%@ Page Title="" Language="C#" MasterPageFile="~/TeamLeader/TeamLeader.Master" AutoEventWireup="true" CodeBehind="Employee3.aspx.cs" Inherits="TaskManagementSystem.TeamLeader.Employee3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .admin-btn {
            display: flex;
            gap: 2rem;
           /* flex-direction:row;
            justify-content:center;
            align-items:center;
            width:97%;*/
          
        }

        .btn {
            width: 140px;
            height: 35px;
            padding: 5px;
            border-radius: 7px;
            border: 1px solid red;
             margin-left:200px;
        }
        .btn2{
             width:140px;
            height:35px;
            padding:10px;
            border-radius:7px;
            border:1px solid red; 
            margin-left:60em;
        }


        .loder-container {
            display: flex;
            position: relative;
            justify-content: center;
            align-items: center;
        }

            .loder-container .card {
                position: relative;
                width: 220px;
                height: 250px;
               
                display: flex;
                justify-content: center;
                align-items: center;
            }

                .loder-container .card .percent {
                    position: relative;
                    width: 150px;
                    height: 150px;
                }

                    .loder-container .card .percent svg {
                        position: relative;
                        width: 150px;
                        height: 150px;
                        transform: rotate(270deg);
                    }

                        .loder-container .card .percent svg circle {
                            width: 100%;
                            height: 100%;
                            fill: transparent;
                            stroke-width: 4;
                            stroke: #e32d6d;
                            transform: translate(5px, 5px);
                        }

                            .loder-container .card .percent svg circle:nth-child(2) {
                                stroke: var(--clr);
                                stroke-dasharray: 440;
                                stroke-dashoffset: calc(440 - (440 * var(--num)) / 100);                               
                                opacity: 0;
                                animation: fadeIn 1s linear forwards;
                                animation-delay: 2.5s;
                            }

        @keyframes fadeIn {
            0% {
                opacity: 0;
            }

            100% {
                opacity: 1;
            }
        }

        .dot {
            position: absolute;
            z-index: 10;
            inset: 5px;
            transform: rotate(calc(3.6deg * var(--num)));
            animation: animateDot 2s linear forwards;
        }

        @keyframes animateDot {
            0% {
                transform: rotate(0deg);
            }

            100% {
                transform: rotate(calc(3.6deg * var(--num)));
            }
        }

        .dot::before {
            content: "";
            position: absolute;
            width: 10px;
            height: 10px;
            background: var(--clr);
            top: -5px;
            left: 50%;
            border-radius: 50%;
            box-shadow: 0 0 10px var(--clr), 0 0 30px var(--clr);
            transform: translateX(-50%);
        }

        .number {
            position: absolute;
            inset: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            opacity: 0;
            animation: fadeIn 1s linear forwards;
            animation-delay: 2.5s;
            line-height: 5px;
        }

            .number h2 {
                display: flex;
                justify-content: center;
                align-items: center;
                color: White;
                font-weight: 700;
                font-size: 2.5rem;
            }

            .number h3 span {
                font-weight: 300;
                color: #d6385d;
                font-size: 0.7rem;
            }

            .number p {
                font-weight: 300;
                font-size: 0.75rem;
                text-transform: uppercase;
                margin-top: 5px;
                color: rbga(255, 255, 255, 0.75);
                letter-spacing: 2px;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="main-content">
        <section class="wrapper site-min-height">
            <div class="admin-btn">
                <asp:Button ID="showemployees" CssClass="btn" runat="server" Text="ShowEmployees" Font-Bold="True" ForeColor="#FF0066" OnClick="showemployees_Click" />
                <asp:Button ID="addemployee" CssClass="btn" runat="server" Text="AddEmployee" Font-Bold="True" ForeColor="#FF0066" OnClick="addemployee_Click" />
            </div>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" />
                    <asp:BoundField DataField="Address" HeaderText="Address" />
                    <asp:BoundField DataField="UserName" HeaderText="UserName" />
                    <asp:BoundField DataField="PassWord" HeaderText="PassWord" />
                    <asp:BoundField DataField="DateOfJoin" HeaderText="DateOfJoin" />
                    <asp:TemplateField HeaderText="Edit" HeaderStyle-ForeColor="white" HeaderStyle-BackColor="#b37700">
                        <ItemTemplate>
                            <div class="loder-container">
                                <div class="card">
                                    <div
                                        class="percent"
                                        style="--num: 85; --clr: #0a5c0d">
                                        <div class="dot"></div>
                                        <svg>
                                            <circle cx="70" cy="70" r="70"></circle>
                                            <circle cx="70" cy="70" r="70"></circle>
                                        </svg>
                                        <div class="number">
                                            <h3>85
                                              <span>%</span>
                                            </h3>
                                            <p>tasks</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                        <HeaderStyle BackColor="#b37700" ForeColor="White" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Edit" HeaderStyle-ForeColor="white" HeaderStyle-BackColor="#b37700">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkEdit" CausesValidation="false" class="fa fa-pencil-square-o btn btn-success btn-xs" runat="server"></asp:LinkButton>
                        </ItemTemplate>
                        <HeaderStyle BackColor="#b37700" ForeColor="White" />
                    </asp:TemplateField>
                </Columns>
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
