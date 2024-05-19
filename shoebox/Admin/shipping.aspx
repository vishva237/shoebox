<%@ Page Language="C#"  MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="shipping.aspx.cs" Inherits="Admin_shipping" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:GridView ID="GridView1" cssClass="table table-bordered table-dark" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="None" DataKeyNames="shid" EmptyDataText="No Data Found" 
        Width="100%" AutoGenerateColumns="False">
        <RowStyle BackColor="#FFFBD6" ForeColor="White" />
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
         <Columns>
             <asp:TemplateField HeaderText="shid"><ItemTemplate><asp:Label ID="Label1" runat="server" Text='<%# Eval("shid") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="name"><ItemTemplate><asp:Label ID="Label2" runat="server" Text='<%# Eval("name") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="address"><ItemTemplate><asp:Label ID="Label3" runat="server" Text='<%# Eval("address") %>'></asp:Label></ItemTemplate></asp:TemplateField>
               <asp:TemplateField HeaderText="cno"><ItemTemplate><asp:Label ID="Label4" runat="server" Text='<%# Eval("cno") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="uname"><ItemTemplate><asp:Label ID="Label5" runat="server" Text='<%# Eval("uname") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             
             
             <asp:TemplateField HeaderText="Delete"><ItemTemplate><asp:ImageButton ID="imgdeltmp" runat="server" ImageUrl="~/images/delete_icon[1].gif" OnClick="imgdeltmp_Click" OnClientClick="return confirm('Are you sure to delete?')" AlternateText="Delete"/></ItemTemplate></asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>



