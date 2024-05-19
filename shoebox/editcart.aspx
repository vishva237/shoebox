<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="editcart.aspx.cs" Inherits="editcart" Title="Edit Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="main">
			<div class="container" style="margin-left: 400px">
			<table height="450" width="400" align="center" style="margin-top:50px; margin-left:30px">
<tr><td colspan="2" align="center">    <asp:Label ID="Label5" runat="server" 
        Text="Edit Cart" Font-Bold="True" Font-Size="30pt" ForeColor="Black"></asp:Label>
</td></tr>

<tr><td><asp:Label ID="Label1" runat="server" Text="Item ID" Font-Bold="True"  ForeColor="Black" Font-Size="Larger"></asp:Label></td><td>
    &nbsp;&nbsp;&nbsp;<asp:Label 
        ID="lblproduct_id" runat="server"></asp:Label></td></tr>

<tr><td><asp:Label ID="Label2" runat="server" Text="Product Name" Font-Bold="True"  ForeColor="Black" Font-Size="Larger"></asp:Label></td><td>
    &nbsp;&nbsp;&nbsp;<asp:Label ID="lblname" runat="server" Text=""></asp:Label></td></tr>

<tr><td><asp:Label ID="Label3" runat="server" Text="Product Price" Font-Bold="True"  ForeColor="Black" Font-Size="Larger"></asp:Label></td><td>
    &nbsp;&nbsp;&nbsp;<asp:Label ID="lblprice" runat="server" Text=""></asp:Label></td></tr>
    
    
<tr><td><asp:Label ID="Label6" runat="server" Text="Product Size" Font-Bold="True"  ForeColor="Black" Font-Size="Larger"></asp:Label></td><td>
    &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="lblsize" runat="server" Width="100">
    <asp:ListItem Enabled="true" Text="1" Value="1"></asp:ListItem>
    <asp:ListItem Text="2" Value="2"></asp:ListItem>
    <asp:ListItem Text="3" Value="3"></asp:ListItem>    
    <asp:ListItem Text="4" Value="4"></asp:ListItem>
    <asp:ListItem Text="5" Value="5"></asp:ListItem>
    <asp:ListItem Text="6" Value="6"></asp:ListItem>
    <asp:ListItem Text="7" Value="7"></asp:ListItem>
    <asp:ListItem Text="8" Value="8"></asp:ListItem>
    <asp:ListItem Text="9" Value="9"></asp:ListItem>
    <asp:ListItem Text="10" Value="10"></asp:ListItem>
    <asp:ListItem Text="11" Value="11"></asp:ListItem>
    <asp:ListItem Text="12" Value="12"></asp:ListItem>
</asp:DropDownList></td></tr>

<tr><td><asp:Label ID="Label4" runat="server" Text="Enter Quantity" Font-Bold="True"  ForeColor="Black" Font-Size="Larger"></asp:Label></td><td>
    &nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtquantity" runat="server"></asp:TextBox></td></tr>

<tr><td><asp:Label ID="Label7" runat="server" Text="Total Amount" Font-Bold="True"  ForeColor="Black" Font-Size="Larger"></asp:Label></td><td>
    &nbsp;&nbsp;&nbsp;<asp:Label ID="lblamount" runat="server" Text=""></asp:Label></td></tr>

<tr><td valign="top"><asp:Label ID="Label9" runat="server" Text="Image" Font-Bold="True"  ForeColor="Black" Font-Size="Larger"></asp:Label></td><td>
    &nbsp;&nbsp;&nbsp;<asp:Image ID="Image1" runat="server" height="100" Width="100"/></td></tr>


<tr><td colspan="2" align="center">
    <asp:HiddenField ID="HiddenField1" runat="server" />
    <asp:Button ID="btnupdate" runat="server" Text="Update" CssClass="btn btn-primary" onclick="btnupdate_Click" /></td></tr>
</table>
</div>
</div>
</asp:Content>


