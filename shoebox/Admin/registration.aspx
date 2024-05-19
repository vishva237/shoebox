<%@ Page Language="C#"  MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="Admin_registration" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:GridView ID="GridView1" cssClass="table table-bordered table-dark" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="None" DataKeyNames="r_id" EmptyDataText="No Data Found" 
        Width="100%" AutoGenerateColumns="False">
        <RowStyle BackColor="#FFFBD6" ForeColor="White" />
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
         <Columns>
             <asp:TemplateField HeaderText="Rid"><ItemTemplate><asp:Label ID="Label1" runat="server" Text='<%# Eval("r_id") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="fname"><ItemTemplate><asp:Label ID="Label2" runat="server" Text='<%# Eval("fname") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="lname"><ItemTemplate><asp:Label ID="Label3" runat="server" Text='<%# Eval("lname") %>'></asp:Label></ItemTemplate></asp:TemplateField>
               <asp:TemplateField HeaderText="gender"><ItemTemplate><asp:Label ID="Label4" runat="server" Text='<%# Eval("gender") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="uname"><ItemTemplate><asp:Label ID="Label5" runat="server" Text='<%# Eval("uname") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="password"><ItemTemplate><asp:Label ID="Label6" runat="server" Text='<%# Eval("password") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="address"><ItemTemplate><asp:Label ID="Label7" runat="server" Text='<%# Eval("address") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="mobileno"><ItemTemplate><asp:Label ID="Label8" runat="server" Text='<%# Eval("mobile_no") %>'></asp:Label></ItemTemplate></asp:TemplateField>
            <asp:TemplateField HeaderText="email"><ItemTemplate><asp:Label ID="Label9" runat="server" Text='<%# Eval("email") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="city"><ItemTemplate><asp:Label ID="Labe20" runat="server" Text='<%# Eval("city") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="state"><ItemTemplate><asp:Label ID="Labe21" runat="server" Text='<%# Eval("state") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="country"><ItemTemplate><asp:Label ID="Labe22" runat="server" Text='<%# Eval("country") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             
             <asp:TemplateField HeaderText="Delete"><ItemTemplate><asp:ImageButton ID="imgdeltmp" runat="server" ImageUrl="~/images/delete_icon[1].gif" OnClick="imgdeltmp_Click" OnClientClick="return confirm('Are you sure to delete?')" AlternateText="Delete"/></ItemTemplate></asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>



