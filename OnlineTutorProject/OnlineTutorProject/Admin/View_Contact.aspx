<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Dashboard.Master" AutoEventWireup="true" CodeBehind="View_Contact.aspx.cs" Inherits="OnlineTutorProject.Admin.View_Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="row">
        <div class="col-md-12">
            <h1 class="jumbotron bg-dark text-center text-white">View Contact Details</h1>

        </div>

    </div>

    <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover table-striped table-dark" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting">
        <Columns>
            <asp:TemplateField HeaderText="ID">
            <ItemTemplate>
                
                <asp:Label id="LabelId" runat="server" Text='<%# Bind("id") %>'></asp:Label>

            </ItemTemplate>

                </asp:TemplateField>
            

            <asp:TemplateField HeaderText="Name">
            <ItemTemplate>
                <asp:Label id="LabelName" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
            </ItemTemplate>
                </asp:TemplateField>
            <asp:TemplateField HeaderText="Email">
            <ItemTemplate>
                <asp:Label id="LabelEmail" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
            </ItemTemplate>

                </asp:TemplateField>


            <asp:TemplateField HeaderText="Subject">
            <ItemTemplate>
                <asp:Label id="LabelSubject" runat="server" Text='<%# Bind("Subject") %>'></asp:Label>
            </ItemTemplate>

                </asp:TemplateField>


            <asp:TemplateField HeaderText="Message">
            <ItemTemplate>
                <asp:Label id="LabelMessage" runat="server" Text='<%# Bind("Message") %>'></asp:Label>
            </ItemTemplate>

                </asp:TemplateField>


            <asp:TemplateField HeaderText="Delete" ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" OnClientClick="return confirm('Are you sure to delete Data')" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                </ItemTemplate>
                <ControlStyle CssClass="btn btn-danger text-white" />
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>
