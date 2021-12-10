<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student_Dasboard.Master" AutoEventWireup="true" CodeBehind="View_Tutor.aspx.cs" Inherits="OnlineTutorProject.Student.View_Tutor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <br />
    <div class ="row">
         <div class="col-md-12">
            <h1 class="jumbotron bg-dark text-center text-white">View Tutor Details</h1>

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
                          <asp:Label ID="Label1" runat="server" Text='<%# Bind("FName") %>'></asp:Label>
                      </h3>
                  </div>
                  <div class="card-body">
                      <small style="font-size:15px; color:steelblue;">Email</small>
                      <h5>
                           <asp:Label ID="Label2" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                            
                      </h5>
                      <small style="font-size:15px; color:steelblue;">Country</small>
                      <h5>
                           <asp:Label ID="Label3" runat="server" Text='<%# Bind("Country") %>'></asp:Label>
                            
                      </h5>
                      <small style="font-size:15px; color:steelblue;">City</small>
                      <h5>
                           <asp:Label ID="Label4" runat="server" Text='<%# Bind("City") %>'></asp:Label>

                            
                      </h5>
                      <small style="font-size:15px; color:steelblue;">Experience</small>
                      <h5>
                           <asp:Label ID="Label5" runat="server" Text='<%# Bind("Experience") %>'></asp:Label>
                            
                      </h5>
                      <small style="font-size:15px; color:steelblue;">Contact</small>
                      <h5>
                           <asp:Label ID="Label6" runat="server" Text='<%# Bind("ContactNo") %>'></asp:Label>
                            
                      </h5>
                  </div>
                  <div class="card-footer">
                      <small style="font-size:15px; color:steelblue;">Qualification</small>
                      <h4>
                           <asp:Label ID="Label7" runat="server" Text='<%# Bind("Degree") %>'></asp:Label>      
                      </h4>
                  </div>
                    
                </div>
                    <br />
                    </div>
            </ItemTemplate>


        </asp:Repeater>


    </div>
</asp:Content>
