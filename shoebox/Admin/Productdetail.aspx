<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Productdetail.aspx.cs" Inherits="Admin_Productdetail" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%--<form id="frm1" runat="server">--%>
<table height="300" width="400" border="1">
<tr><th colspan="3" align="center">Product Details</th></tr>
<tr><td rowspan="6" align="center" valign="middle"><asp:Image ID="Image1" runat="server" Height="100" Width="100"/>
    <asp:HiddenField ID="hdnscat" runat="server" />
    <asp:HiddenField ID="hdncat" runat="server" />
    </td>
<td><asp:Label ID="Label1" runat="server" Text="Product Id"></asp:Label></td>
<td><asp:Label ID="lblpro_id" runat="server" Text=""></asp:Label></td>
</tr>

<tr>
<td><asp:Label ID="Label3" runat="server" Text="Product name"></asp:Label></td>
<td><asp:Label ID="lbl_name" runat="server" Text=""></asp:Label></td>
</tr>

<tr>
<td><asp:Label ID="Label5" runat="server" Text="Price"></asp:Label></td>
<td><asp:Label ID="lbl_price" runat="server" Text=""></asp:Label></td>
</tr>

<tr>
<td><asp:Label ID="Label7" runat="server" Text="Description"></asp:Label></td>
<td><asp:Label ID="lbl_dec" runat="server" Text=""></asp:Label></td>
</tr>

<tr>
<td><asp:Label ID="Label2" runat="server" Text="Quantity"></asp:Label></td>
<td><asp:TextBox ID="TextBox1" runat="server" Text="1"></asp:TextBox></td>
</tr>

<tr>
<td colspan="2" align="center"><asp:Button ID="Button1" runat="server" 
        Text="Add to cart" onclick="Button1_Click" /></td>
</tr>
</table>
<%--</form>--%>
</asp:Content>



