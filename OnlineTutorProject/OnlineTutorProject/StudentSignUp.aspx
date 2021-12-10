<%@ Page Title="" Language="C#" MasterPageFile="~/TMSSite.Master" AutoEventWireup="true" CodeBehind="StudentSignUp.aspx.cs" Inherits="OnlineTutorProject.StudentSignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />

    <div class="Container" style="box-shadow: -1px 2px 28px 3px rgba(0,0,0,0.75);
                            -webkit-box-shadow: -1px 2px 28px 3px rgba(0,0,0,0.75);
                            -moz-box-shadow: -1px 2px 28px 3px rgba(0,0,0,0.75);">
        <br />
        <div class="rows">
            <div class="col-md-12">
                <h1 class="jumbotron bg-primary text-white text-center ">Signup As Student</h1>
            </div>

        </div>

        <div class="row">
            <div class="col-md-4">
                <asp:TextBox ID="FirstNameTextBox" CssClass="form-control" placeholder="Enter First Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="FirstNameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name Is Required"></asp:RequiredFieldValidator>
                <br />

                <asp:TextBox ID="FatherNameTextBox" CssClass="form-control" placeholder="Enter Your Father Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="FatherNameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Father Name Is Required"></asp:RequiredFieldValidator>
                
                <br />
                <asp:TextBox ID="ContactTextBox" CssClass="form-control" placeholder="Enter Your Contact Number" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="ContactTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Contact Number Is Required"></asp:RequiredFieldValidator>
                
                <br />
                <asp:TextBox ID="AddressTextBox" TextMode="MultiLine" Rows="4" Columns="20" CssClass="form-control" placeholder="Enter Your Address with pincode and City" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="AddressTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Address Is Required"></asp:RequiredFieldValidator>
                


                <asp:TextBox ID="UserNameTextBox" CssClass="form-control mt-3 pb-2" placeholder="Enter Your UserName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="UserNameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Username Is Required"></asp:RequiredFieldValidator>
                
                <br />
            </div>
            <div class="col-md-4">
                <asp:TextBox ID="LastNameTextBox" CssClass="form-control" placeholder="Enter Last Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="LastNameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator6" runat="server" ErrorMessage="LastName Is Required"></asp:RequiredFieldValidator>
                
                <br />
                
                <asp:TextBox ID="ClassTextBox" CssClass="form-control" placeholder="Enter Your Class" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="ClassTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator7" runat="server" ErrorMessage="Class Is Required"></asp:RequiredFieldValidator>
                
                <br />
                <asp:TextBox ID="SubjectTextBox" CssClass="form-control" placeholder="Enter Your Subject" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="SubjectTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator8" runat="server" ErrorMessage="Subject Is Required"></asp:RequiredFieldValidator>
                
                <br />
                
                <asp:TextBox ID="StateTextBox1" CssClass="form-control" placeholder="Enter Your State" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="StateTextBox1" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator16" runat="server" ErrorMessage="State Is Required"></asp:RequiredFieldValidator>
                
                <br />
                <asp:DropDownList ID="GoingToDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Going To</asp:ListItem>
                    <asp:ListItem>School</asp:ListItem>
                    <asp:ListItem>College</asp:ListItem>
                    <asp:ListItem>Master</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator InitialValue="Select Going To" ControlToValidate="GoingToDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator17" runat="server" ErrorMessage="Seclect going to Is Required"></asp:RequiredFieldValidator>
                
                <br />
               
                <asp:TextBox ID="PasswordTextBox" CssClass="form-control" placeholder="Enter Your Password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="PasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator9" runat="server" ErrorMessage="Password Is Required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ControlToValidate="PasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Password must be strong and more than 8 character" ValidationExpression="^((?=.{8,}$)(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).*|(?=.{8,}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!\u0022#$%&'()*+,./:;<=>?@[\]\^_`{|}~-]).*)"></asp:RegularExpressionValidator>
                <br />

                

            </div>
            <div class="col-md-4">
                <asp:TextBox ID="AgeTextBox" CssClass="form-control" placeholder="Enter Your Age" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="AgeTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator10" runat="server" ErrorMessage="Age Is Required"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age Must be between 5 to 60" ControlToValidate="AgeTextBox" Display="Dynamic" ForeColor="Red" MaximumValue="60" MinimumValue="5" Type="Integer"></asp:RangeValidator>
                <br />
                <asp:DropDownList ID="GenderDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other..</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator InitialValue="Select Gender" ControlToValidate="GenderDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator15" runat="server" ErrorMessage="Gender Is Required"></asp:RequiredFieldValidator>
                
                <br />
                <asp:DropDownList ID="TutionTypeDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Tution Type</asp:ListItem>
                    <asp:ListItem>Online</asp:ListItem>
                    <asp:ListItem>Physical</asp:ListItem>

                    
                </asp:DropDownList>
                <asp:RequiredFieldValidator InitialValue="Select Tution Type" ControlToValidate="TutionTypeDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator14" runat="server" ErrorMessage="Mode of Tution Is Required"></asp:RequiredFieldValidator>
                
                <br />

                
                <asp:TextBox ID="CountryTextBox" CssClass="form-control" placeholder="Enter Your Country" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="CountryTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator11" runat="server" ErrorMessage="Country Is Required"></asp:RequiredFieldValidator>
                
                <br />
                <asp:DropDownList ID="TutionPreferenceDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Teacher Education</asp:ListItem>
                    <asp:ListItem>Graduate</asp:ListItem>
                    <asp:ListItem>Master</asp:ListItem>
                    <asp:ListItem>Phd</asp:ListItem>
                    <asp:ListItem>Other..</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator InitialValue="Select Teacher Education" ControlToValidate="TutionPreferenceDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator13" runat="server" ErrorMessage="Teacher Education Is Required"></asp:RequiredFieldValidator>
                
                <br />
                
                <asp:TextBox ID="ReEnterPasswordTextBox" CssClass="form-control" placeholder="Re Enter Password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="ReEnterPasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator12" runat="server" ErrorMessage="ReEnter Password Is Required"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" ControlToValidate="ReEnterPasswordTextBox" ControlToCompare="PasswordTextBox" ForeColor="Red" SetFocusOnError="true"  runat="server" ErrorMessage="Both Password should be same"></asp:CompareValidator>
                <br />

            </div>

        </div>
        <div class="row">
            <div class="col-md-4 mx-auto">

                <asp:Button ID="StudentSignUpButton" onclick="StudentSignUpButton_Click" runat="server" Text="SignUp As Student" CssClass="btn btn-primary btn-block" />
                <br />
            </div>
            <br />

        </div>

        <div class="row">
            <div class="col-md-6 mx-auto text-center ">
        
                <a href="Tutor_Sign_up.aspx" class="btn btn-info">Tutor Sign Up</a>

                <a href="StudentSignUp.aspx" class="btn btn-success">Student Sign Up</a>

                

                 


            </div>
            

        </div>
        <br />

    </div>

    <br />
</asp:Content>
