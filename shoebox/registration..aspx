<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" Title="Registration Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">
<table height="400" width="400">
<tr><td>
    <asp:Label ID="Label1" runat="server" Text="fname"></asp:Label></td>
    <td><asp:TextBox ID="fname" runat="server"></asp:TextBox></td></tr>
<tr><td>
    <asp:Label ID="Label2" runat="server" Text="lname"></asp:Label></td>
    <td><asp:TextBox ID="lname" runat="server"></asp:TextBox></td></tr>
<tr><td>
    <asp:Label ID="Label3" runat="server" Text="gender"></asp:Label></td>
    <td><asp:TextBox ID="gender" runat="server"></asp:TextBox></td></tr>
<tr><td>
    <asp:Label ID="Label4" runat="server" Text="uname"></asp:Label></td>
    <td><asp:TextBox ID="uname" runat="server"></asp:TextBox></td></tr>
<tr><td>
    <asp:Label ID="Label5" runat="server" Text="password"></asp:Label></td>
    <td><asp:TextBox ID="password" runat="server"></asp:TextBox></td></tr>
    
<tr><td>
    <asp:Label ID="Labe16" runat="server" Text="address"></asp:Label></td>
    <td><asp:TextBox ID="address" runat="server"></asp:TextBox></td></tr>    
<tr><td>
    <asp:Label ID="Label7" runat="server" Text="mobile_no"></asp:Label></td>
    <td><asp:TextBox ID="mobile_no" runat="server"></asp:TextBox></td></tr>
    <tr><td>
    <asp:Label ID="Label8" runat="server" Text="email"></asp:Label></td>
    <td><asp:TextBox ID="email" runat="server"></asp:TextBox></td></tr>
<tr><td>
    <asp:Label ID="Label9" runat="server" Text="city"></asp:Label></td>
    <td><asp:TextBox ID="city" runat="server"></asp:TextBox></td></tr>
<tr><td>
    <asp:Label ID="Label20" runat="server" Text="state"></asp:Label></td>
    <td><asp:TextBox ID="state" runat="server"></asp:TextBox></td></tr>
    <tr><td>
    <asp:Label ID="Label21" runat="server" Text="country"></asp:Label></td>
    <td><asp:TextBox ID="country" runat="server"></asp:TextBox></td></tr>

<tr><td colspan="2">
    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" /></td></tr>
</table>
</form>
</asp:Content>



