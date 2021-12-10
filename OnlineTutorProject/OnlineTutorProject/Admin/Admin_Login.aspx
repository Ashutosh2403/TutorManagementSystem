<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Login.aspx.cs" Inherits="OnlineTutorProject.Admin.Admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <link href="~/dist/sweetalert2.min.css" rel="stylesheet" />
    <script src="../dist/sweetalert2.min.js"></script>
    <link href="~/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body style="background-color:whitesmoke">
    <form id="form1" runat="server">
        <div class ="container" >
            <div class="row">
                <div class="col-md-4 mx-auto" style="box-shadow: -1px 2px 28px 3px rgba(0,0,0,0.75);
                            -webkit-box-shadow: -1px 2px 28px 3px rgba(0,0,0,0.75);
                            -moz-box-shadow: -1px 2px 28px 3px rgba(0,0,0,0.75);">
                    <div class="jumbotron text-center text-white bg-primary">
                        <h3>Admin Login</h3>

                    </div>
                    <asp:TextBox ID="Usernametxt" CssClass="form-control" placeholder="Enter user Name" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="Usernametxt" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Username Must be Required"></asp:RequiredFieldValidator>

                    <br />
                    <asp:TextBox ID="Passwordtxt" CssClass="form-control" placeholder="Enter Password" TextMode="Password" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="Passwordtxt" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Username Must be Required"></asp:RequiredFieldValidator>

                    <br />


                    <asp:Button ID="Loginbutton"  runat="server" Text="Login" CssClass="btn btn-primary btn-block" Onclick="Loginbutton_Click" />
                    <br />
                </div>
            </div>
        </div>
    </form>

    <script src="../assets/vendor/jquery/jquery.min.js"></script>
    <script src="../assets/vendor/bootstrap/js/bootstrap.min.js"></script>

</body>
</html>
