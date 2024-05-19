<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Admin_Product" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<asp:GridView ID="GridView1"  CssClass="table table-bordered table-dark" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="None" DataKeyNames="p_id" EmptyDataText="No Data Found" 
        Width="100%" AutoGenerateColumns="False" CellSpacing="2" AllowPaging="True" 
        onpageindexchanging="GridView1_PageIndexChanging" >
        <RowStyle BackColor="#FFFBD6" ForeColor="White" />
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
         <Columns>
             <asp:TemplateField HeaderText="ID"><ItemTemplate><asp:Label ID="Label1" runat="server" Text='<%# Eval("p_id") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Name"><ItemTemplate><asp:Label ID="Label2" runat="server" Text='<%# Eval("p_nm") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Price"><ItemTemplate><asp:Label ID="Label3" runat="server" Text='<%# Eval("p_price") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Image"><ItemTemplate><asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("p_img") %>' Height="50" Width="50"/></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Delete"><ItemTemplate><asp:ImageButton ID="imgdeltmp" runat="server" ImageUrl="~/images/delete_icon[1].gif" OnClick="imgdeltmp_Click" OnClientClick="return confirm('Are you sure to delete?')" AlternateText="Delete"/></ItemTemplate></asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br />
    
    <asp:Button ID="addpro" runat="server" CssClass="btn btn-primary" Text="Add Product" 
     onclick="addpro_Click" />
     <br />
   <br />
</asp:Content>

