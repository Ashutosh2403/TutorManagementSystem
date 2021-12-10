<%@ Page Title="" Language="C#" MasterPageFile="~/TMSSite.Master" AutoEventWireup="true" CodeBehind="Tutor_Sign_up.aspx.cs" Inherits="OnlineTutorProject.Tutor_Sign_up" %>
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
                <h1 class="jumbotron bg-primary text-white text-center ">Signup As Tutor </h1>
            </div>

        </div>

        <div class="row">
            <div class="col-md-4">
                <asp:TextBox ID="FirstNameTextBox" CssClass="form-control" placeholder="Enter First Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="FirstNameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name Is Required"></asp:RequiredFieldValidator>
                <br />

                <asp:TextBox ID="LastNameTextBox" CssClass="form-control" placeholder="Enter Your Last Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="LastNameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last Name Is Required"></asp:RequiredFieldValidator>
                
                <br />
                <asp:DropDownList ID="GenderDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other..</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator InitialValue="Select Gender" ControlToValidate="GenderDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator15" runat="server" ErrorMessage="Gender Is Required"></asp:RequiredFieldValidator>
                
                <br />

                <asp:TextBox ID="AgeTextBox" CssClass="form-control" placeholder="Enter Your Age" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="AgeTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator10" runat="server" ErrorMessage="Age Is Required"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age Must be between 5 to 60" ControlToValidate="AgeTextBox" Display="Dynamic" ForeColor="Red" MaximumValue="60" MinimumValue="5" Type="Integer"></asp:RangeValidator>
                <br />

                <asp:TextBox ID="EmailTextBox" class="form-control" placeholder="Your Email" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="EmailTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Email is required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="EmailTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Email Incorect" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                <br />

                <asp:DropDownList ID="MaritalStatusDropDown" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Mariatal Status</asp:ListItem>
                    <asp:ListItem>Single</asp:ListItem>
                    <asp:ListItem>Married</asp:ListItem>
                    <asp:ListItem>Divorced</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator InitialValue="Select Mariatal Status" ControlToValidate="MaritalStatusDropDown" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Mariatal Status Is Required"></asp:RequiredFieldValidator>
                
                <br />
                

                


                
            </div>
            <div class="col-md-4">

                <asp:TextBox ID="AddressTextBox" TextMode="MultiLine" Rows="4" Columns="20" CssClass="form-control" placeholder="Enter Your Address with pincode and City" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="AddressTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Address Is Required"></asp:RequiredFieldValidator>
                <br />
                
                <asp:TextBox ID="CountryTextBox" CssClass="form-control" placeholder="Enter Your Country" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="CountryTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator18" runat="server" ErrorMessage="Country Is Required"></asp:RequiredFieldValidator>
                              
                <br />

                <asp:TextBox ID="CityTextBox" CssClass="form-control" placeholder="Enter Your City" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="CityTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator16" runat="server" ErrorMessage="City Is Required"></asp:RequiredFieldValidator>
                
                <br />

                <asp:TextBox ID="StateTextBox" CssClass="form-control" placeholder="Enter Your State" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="StateTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator19" runat="server" ErrorMessage="State Is Required"></asp:RequiredFieldValidator>
                
                <br />

                <asp:TextBox ID="ContactTextBox" CssClass="form-control" placeholder="Enter Your Contact Number" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="ContactTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator7" runat="server" ErrorMessage="Contact No. Is Required"></asp:RequiredFieldValidator>
                
                <br />               
               
               

                

            </div>
            <div class="col-md-4">

                <asp:DropDownList ID="QualificationDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Qualification</asp:ListItem>
                    <asp:ListItem>Graduate</asp:ListItem>
                    <asp:ListItem>Master</asp:ListItem>
                    <asp:ListItem>M. Phil</asp:ListItem>
                    <asp:ListItem>Phd.</asp:ListItem>
                    <asp:ListItem>Other.</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator InitialValue="Select Qualification" ControlToValidate="QualificationDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator17" runat="server" ErrorMessage="Seclect Your Qualification"></asp:RequiredFieldValidator>
                
                <br />

                <asp:TextBox ID="DegreeTextBox" CssClass="form-control" placeholder="Enter Your Degree" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="DegreeTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator11" runat="server" ErrorMessage="Degree Name is Required"></asp:RequiredFieldValidator>
                
                
                
                <br />
                <asp:DropDownList ID="ExperienceDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Experience</asp:ListItem>
                    <asp:ListItem>Less Than 1 Year</asp:ListItem>
                    <asp:ListItem>1-3 Year</asp:ListItem>
                    <asp:ListItem>3-5 Year</asp:ListItem>
                    <asp:ListItem>5+ Year</asp:ListItem>

                    
                </asp:DropDownList>
                <asp:RequiredFieldValidator InitialValue="Select Experience" ControlToValidate="ExperienceDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator14" runat="server" ErrorMessage="Total experience Is Required"></asp:RequiredFieldValidator>
                
                <br />

                <asp:TextBox ID="UserNameTextBox" CssClass="form-control" placeholder="Enter Your UserName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="UserNameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Username Is Required"></asp:RequiredFieldValidator>
                
                <br />
                 <asp:TextBox ID="PasswordTextBox" CssClass="form-control" placeholder="Enter Your Password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="PasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator9" runat="server" ErrorMessage="Password Is Required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ControlToValidate="PasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Password must be strong and more than 8 character" ValidationExpression="^((?=.{8,}$)(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).*|(?=.{8,}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!\u0022#$%&'()*+,./:;<=>?@[\]\^_`{|}~-]).*)"></asp:RegularExpressionValidator>

                <br />
                <asp:TextBox ID="ReEnterPasswordTextBox" CssClass="form-control" placeholder="Re Enter Password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="ReEnterPasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator12" runat="server" ErrorMessage="ReEnter Password Is Required"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" ControlToValidate="ReEnterPasswordTextBox" ControlToCompare="PasswordTextBox" ForeColor="Red" SetFocusOnError="true"  runat="server" ErrorMessage="Both Password should be same"></asp:CompareValidator>
                <br />

            </div>

        </div>
        <div class="row">
            <div class="col-md-6 mx-auto">

                <asp:Button ID="StudentSignUpButton" onclick="TutorSignUpButton_Click" runat="server" Text="SignUp As Tutor" CssClass="btn btn-primary btn-block" />
                


                <br />
            </div>
            

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
