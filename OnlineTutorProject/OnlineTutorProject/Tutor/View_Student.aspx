<%@ Page Title="" Language="C#" MasterPageFile="~/Tutor/TutorMaster.Master" AutoEventWireup="true" CodeBehind="View_Student.aspx.cs" Inherits="OnlineTutorProject.Tutor.View_Student" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <div class ="row">
         <div class="col-md-12">
            <h1 class="jumbotron bg-dark text-center text-white">Student Data</h1>

        </div>
    </div>
    <div class="row">
        <asp:Repeater ID="Repeater1" runat="server">

            <ItemTemplate>
                <div class ="col-md-4">
                <div class="card bg-dark text-white text-center">
                  <div class="card-header">
                      <small style="font-size:15px; color:steelblue;">Name</small>
                      <h3>
                          <asp:Label ID="Label1" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label>
                      </h3>
                  </div>
                  <div class="card-body">
                      <small style="font-size:15px; color:steelblue;">Gender</small>
                      <h5>
                           <asp:Label ID="Label2" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                            
                      </h5>
                      <small style="font-size:15px; color:steelblue;">Country</small>
                      <h5>
                           <asp:Label ID="Label3" runat="server" Text='<%# Bind("Country") %>'></asp:Label>
                            
                      </h5>
                      <small style="font-size:15px; color:steelblue;">State</small>
                      <h5>
                           <asp:Label ID="Label4" runat="server" Text='<%# Bind("State") %>'></asp:Label>

                            
                      </h5>
                      <small style="font-size:15px; color:steelblue;">Class</small>
                      <h5>
                           <asp:Label ID="Label9" runat="server" Text='<%# Bind("Standard") %>'></asp:Label>
                            
                      </h5>
                      <small style="font-size:15px; color:steelblue;">Subject</small>
                      <h5>
                           <asp:Label ID="Label5" runat="server" Text='<%# Bind("Subject") %>'></asp:Label>
                            
                      </h5>
                      <small style="font-size:15px; color:steelblue;">Tution Type</small>
                      <h5>
                           <asp:Label ID="Label6" runat="server" Text='<%# Bind("TutionType") %>'></asp:Label>
                            
                      </h5>
                      <small style="font-size:15px; color:steelblue;">Contact</small>
                      <h5>
                           <asp:Label ID="Label8" runat="server" Text='<%# Bind("ContactNumber") %>'></asp:Label>
                            
                      </h5>
                  </div>
                  <div class="card-footer">
                      <small style="font-size:15px; color:steelblue;">Preference</small>
                      <h4>
                           <asp:Label ID="Label7" runat="server" Text='<%# Bind("TutionPrefered") %>'></asp:Label>      
                      </h4>
                  </div>
                    
                </div>
                    <br />
                    </div>
            </ItemTemplate>


        </asp:Repeater>


    </div>

</asp:Content>
