<%@ Page Title="" Language="C#" MasterPageFile="~/TMSSite.Master" AutoEventWireup="true" CodeBehind="Tutor_Login.aspx.cs" Inherits="OnlineTutorProject.Tutor_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class ="container" >
        <br />
            <div class="row">
                <br />
                <div class="col-md-4 mx-auto" style="box-shadow: -1px 2px 28px 3px rgba(0,0,0,0.75);
                            -webkit-box-shadow: -1px 2px 28px 3px rgba(0,0,0,0.75);
                            -moz-box-shadow: -1px 2px 28px 3px rgba(0,0,0,0.75);">
                    <br />
                    <div class="jumbotron text-center text-white bg-primary">
                        <h3>Tutor Login</h3>

                    </div>
                    <asp:TextBox ID="Usernametxt" CssClass="form-control" placeholder="Enter user Name" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="Usernametxt" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Username Must be Required"></asp:RequiredFieldValidator>

                    <br />
                    <asp:TextBox ID="Passwordtxt" CssClass="form-control" placeholder="Enter Password" TextMode="Password" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="Passwordtxt" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Username Must be Required"></asp:RequiredFieldValidator>

                    <br />


                    <asp:Button ID="Tutor_Loginbutton"  runat="server" onclick="Tutor_Loginbutton_Click" Text="Login" CssClass="btn btn-primary btn-block"  />
                    
                    <div class="text-center">
                        <a href="Student_Login.aspx" class="text-center">Login As Student</a>
                    </div>
                    <br />
                </div>
            </div>
        </div>
    <br />
</asp:Content>
