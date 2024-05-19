<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="Editcat.aspx.cs" Inherits="Admin_Editcat" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br /><br/>
    <table border="1" width="300" height="200" align="center" Class="table table-bordered table-dark">
        <tr><td colspan="2" align="center"><h3>Edit Category</h3></td></tr>
        
        <tr><td ><asp:Label ID="Label1" runat="server" Text="Category Name"></asp:Label></td>
            <td><asp:TextBox ID="txtcat" runat="server" Text=""></asp:TextBox></td></tr>
        
        <tr><td colspan="2" align="center">
            <asp:HiddenField ID="HiddenField1" runat="server" />
            <asp:Button ID="btnupdate" runat="server" Text="Update" onclick="btnupdate_Click"  cssclass="btn btn-primary"  /></td></tr>
    </table>

</asp:Content>



