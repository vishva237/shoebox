<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="Addproduct.aspx.cs" Inherits="Admin_Addproduct" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
    <table border="1" width="400" height="500" align="center" Class="table table-bordered table-dark">
    
    <tr><td colspan="2" align="center"><h3>Add Product</h3></td></tr>
    
    <tr><td ><asp:Label ID="Label1" runat="server" Text="Select Category Name"></asp:Label></td>
    <td><asp:DropDownList ID="ddlcat" Width="500px" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataTextField="c_nm" DataValueField="c_id" onselectedindexchanged="ddlcat_SelectedIndexChanged"></asp:DropDownList></td></tr>
            
    <tr><td ><asp:Label ID="Label2" runat="server" Text="Select Category Name"></asp:Label></td>
    <td><asp:DropDownList ID="ddlsubcat" Width="500px" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataTextField="s_nm" DataValueField="s_id"></asp:DropDownList></td></tr>
    
    <tr><td ><asp:Label ID="Label3" runat="server" Text="Product Name"></asp:Label></td>
    <td><asp:TextBox ID="txtpname" runat="server"></asp:TextBox></td></tr>

    <tr><td ><asp:Label ID="Label4" runat="server" Text="Product Price"></asp:Label></td>
    <td><asp:TextBox ID="txtdes" runat="server"></asp:TextBox></td></tr>
    
    <tr><td ><asp:Label ID="Label5" runat="server" Text="Product Size"></asp:Label></td>
    <td><asp:TextBox ID="txtprice" runat="server"></asp:TextBox></td></tr>
    
    <tr><td ><asp:Label ID="Label6" runat="server" Text="Product Image"></asp:Label></td>
    <td><asp:FileUpload ID="FileUpload1" runat="server" /></td></tr>
    
     <tr><td ><asp:Label ID="Label7" runat="server" Text="Product Quantity"></asp:Label></td>
    <td><asp:TextBox ID="txtqnt" runat="server"></asp:TextBox></td></tr>
     <tr><td ><asp:Label ID="Label8" runat="server" Text="Total  Quantity"></asp:Label></td>
    <td><asp:TextBox ID="txttqnt" runat="server"></asp:TextBox></td></tr>
   
    
    <tr><td colspan="2" align="center">
        <asp:HiddenField ID="HiddenField1" runat="server" />
        <asp:Button ID="btnadd" runat="server" Text="Add" onclick="btnadd_Click"  class="btn btn-primary"  /></td></tr>
    
    </table>

</asp:Content>



