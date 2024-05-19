<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="editsubc.aspx.cs" Inherits="Admin_editsubc" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
    <table border="1" width="300" height="200" align="center" Class="table table-bordered table-dark">
        <tr><td colspan="2" align="center"><h3>Edit Subcategory</h3></td></tr>
        
        <tr><td ><asp:Label ID="Label1" runat="server" Text="Subcategory Name"></asp:Label></td>
            <td><asp:TextBox ID="txtcat" runat="server" Text=""></asp:TextBox></td></tr>
        
        <tr><td colspan="2" align="center">
            <asp:HiddenField ID="HiddenField1" runat="server" />
            <asp:Button ID="btnupdate" runat="server" CssClass="btn btn-primary" Text="Update" onclick="btnupdate_Click" /></td></tr>
    </table>

</asp:Content>





