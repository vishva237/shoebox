<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="Addsubcategory.aspx.cs" Inherits="Admin_Addsubcategory" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="1" width="300" height="200" align="center" Class="table table-bordered table-dark">
    
    <tr><td colspan="2" align="center"><h3>Add Subcategory</h3></td></tr>
    
    <tr><td ><asp:Label ID="Label2" runat="server" Text="Select Category Name"></asp:Label></td>
    <td><asp:DropDownList ID="ddlcat" runat="server" AppendDataBoundItems="True" 
            AutoPostBack="True" DataTextField="c_nm" DataValueField="c_id" 
            onselectedindexchanged="ddlcat_SelectedIndexChanged"></asp:DropDownList></td></tr>
    
    <tr><td ><asp:Label ID="Label1" runat="server" Text="Subcategory Name"></asp:Label></td>
    <td><asp:TextBox ID="txtscat" runat="server"></asp:TextBox></td></tr>
        <tr><td ><asp:Label ID="Label3" runat="server" Text="Subcategory Image"></asp:Label></td>
    <td><asp:FileUpload ID="FileUpload1" runat="server" /></td></tr>
   

    <tr><td colspan="2" align="center"><asp:Button ID="btnadd" runat="server" CssClass="btn btn-primary" Text="Add" onclick="btnadd_Click" /></td></tr>
    
    </table>

</asp:Content>



