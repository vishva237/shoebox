<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table height="200" width="300">
    <tr>
    <td><asp:Label ID="Label1" runat="server" Text="User"></asp:Label></td>
    <td>
        <asp:TextBox ID="txtuname" runat="server"></asp:TextBox>
        </td>    
    
    <tr><td>
        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
        </td><td>
            <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
        </td></tr>
    
    <tr align=center><td colspan="2">
        <asp:Button ID="btnlogin" runat="server" Text="Login" onclick="btnlogin_Click" style="height: 26px" />
        <asp:Label ID="lblmsg" runat="server"></asp:Label>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx">New 
        User???</asp:HyperLink>
        </td></tr>
    </table>

</asp:Content>

