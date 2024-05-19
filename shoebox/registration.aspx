<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" Title="Registration Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<style>
    span {
    color: #009999;
    font-size:20px;
}
</style>
<div class="container-fluid tm-mt-60">
        <div class="row tm-mb-50">
            <div class="col-lg-12 col-12 mb-12 text-center">
             <h2 class="tm-text-primary mb-5">Registration</h2>
<table height="400" width="400" class="text-center" style="margin: 0 auto;">
<tr><td  class="form-group">
    <asp:Label ID="Label1" runat="server" Text="Frist Name:"></asp:Label></td>
    <td><asp:TextBox ID="fname" runat="server" class="form-control rounded-0"></asp:TextBox></td></tr>
<tr><td>
    <asp:Label ID="Label2" runat="server" Text="Last Name:"></asp:Label></td>
    <td><asp:TextBox ID="lname" runat="server" class="form-control rounded-0"></asp:TextBox></td></tr>
<tr><td>
    <asp:Label ID="Label3" runat="server" Text="Gender:"></asp:Label></td>
    <td><asp:TextBox ID="gender" runat="server" class="form-control rounded-0"></asp:TextBox></td></tr>
<tr><td>
    <asp:Label ID="Label4" runat="server" Text="User Name:"></asp:Label></td>
    <td><asp:TextBox ID="uname" runat="server" class="form-control rounded-0"></asp:TextBox></td></tr>
<tr><td>
    <asp:Label ID="Label5" runat="server" Text="Password:"></asp:Label></td>
    <td><asp:TextBox ID="password" runat="server" class="form-control rounded-0"></asp:TextBox></td></tr>
    <tr><td>
    <asp:Label ID="Label6" runat="server" Text="Address:"></asp:Label></td>
    <td><asp:TextBox ID="address" runat="server" class="form-control rounded-0"></asp:TextBox></td></tr>

<tr><td>
    <asp:Label ID="Label7" runat="server" Text="Mobile number:"></asp:Label></td>
    <td><asp:TextBox ID="mobile_no" runat="server" class="form-control rounded-0"></asp:TextBox></td></tr>
    <tr><td>
    <asp:Label ID="Label8" runat="server" Text="Email:"></asp:Label></td>
    <td><asp:TextBox ID="email" runat="server" class="form-control rounded-0"></asp:TextBox></td></tr>
<tr><td>
    <asp:Label ID="Label9" runat="server" Text="City:"></asp:Label></td>
    <td><asp:TextBox ID="city" runat="server" class="form-control rounded-0"></asp:TextBox></td></tr>
<tr><td>
    <asp:Label ID="Labe20" runat="server" Text="State:"></asp:Label></td>
    <td><asp:TextBox ID="state" runat="server" class="form-control rounded-0"></asp:TextBox></td></tr>
    <tr><td>
    <asp:Label ID="Labe21" runat="server" Text="Country:"></asp:Label></td>
    <td><asp:TextBox ID="country" runat="server" class="form-control rounded-0"></asp:TextBox></td></tr>

<tr><td colspan="2">
<br />
    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click"  class="btn btn-primary" /></td></tr>
</table>
</div>
</div>
</div>

</asp:Content>



