<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">
<table height="400" width="400">
<tr><td>
    <asp:Label ID="Label1" runat="server" Text="FName"></asp:Label></td>
    <td><asp:TextBox ID="fname" runat="server"></asp:TextBox></td></tr>
<tr><td>
    <asp:Label ID="Label2" runat="server" Text="LName"></asp:Label></td>
    <td><asp:TextBox ID="lname" runat="server"></asp:TextBox></td></tr>
<tr><td>
    <asp:Label ID="Label3" runat="server" Text="Username"></asp:Label></td>
    <td><asp:TextBox ID="username" runat="server"></asp:TextBox></td></tr>
<tr><td>
    <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label></td>
    <td><asp:TextBox ID="password" runat="server"></asp:TextBox></td></tr>
<tr><td>
    <asp:Label ID="Label5" runat="server" Text="E-mail"></asp:Label></td>
    <td><asp:TextBox ID="email" runat="server"></asp:TextBox></td></tr>
<tr><td>
    <asp:Label ID="Label6" runat="server" Text="Phone no"></asp:Label></td>
    <td><asp:TextBox ID="phoneno" runat="server"></asp:TextBox></td></tr>
<tr><td colspan="2">
    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" /></td></tr>
</table>
</form>
</asp:Content>

