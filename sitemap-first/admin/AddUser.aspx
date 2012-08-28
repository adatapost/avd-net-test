<%@ Page Title="Add New User" Language="C#" MasterPageFile="~/admin/Site.master" AutoEventWireup="true" CodeFile="AddUser.aspx.cs" Inherits="admin_AddUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>Emp</asp:ListItem>
        <asp:ListItem>Customer</asp:ListItem>
        <asp:ListItem>Admin</asp:ListItem>
    </asp:DropDownList>
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" 
        oncreateduser="CreateUserWizard1_CreatedUser">
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" />
            <asp:CompleteWizardStep runat="server" />
        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>

