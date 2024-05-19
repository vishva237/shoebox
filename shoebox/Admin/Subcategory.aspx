<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="Subcategory.aspx.cs" Inherits="Admin_Subcategory" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
 <asp:GridView ID="GridView1" cssClass="table table-bordered table-dark" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="None" DataKeyNames="s_id" EmptyDataText="No Data Found" 
        Width="100%" AutoGenerateColumns="False">
        <RowStyle BackColor="#FFFBD6" ForeColor="White"  />
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
         <Columns>
             <asp:TemplateField HeaderText="s_id"><ItemTemplate><asp:Label ID="Label1" runat="server" Text='<%# Eval("s_id") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="c_id"><ItemTemplate><asp:Label ID="Label3" runat="server" Text='<%# Eval("c_id") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="s_nm"><ItemTemplate><asp:Label ID="Label2" runat="server" Text='<%# Eval("s_nm") %>'></asp:Label></ItemTemplate></asp:TemplateField>
               <asp:TemplateField HeaderText="s_img"><ItemTemplate><asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("s_img") %>' Height="50" Width="50"/></ItemTemplate></asp:TemplateField>
               
              <asp:TemplateField HeaderText="Edit"><ItemTemplate><asp:HyperLink ID="hpedit" runat="server" NavigateUrl='<%# "~/admin/editsubc.aspx?id=" + Eval("s_id")  %>' ImageUrl="~/admin/images/editimage.jpg"></asp:HyperLink></ItemTemplate></asp:TemplateField>
           
             <asp:TemplateField HeaderText="Delete"><ItemTemplate><asp:ImageButton ID="imgdeltmp" runat="server" ImageUrl="~/images/delete_icon[1].gif" OnClick="imgdeltmp_Click" OnClientClick="return confirm('Are you sure to delete?')" AlternateText="Delete"/></ItemTemplate></asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br />
    
    <asp:Button ID="addsubcat" CssClass="btn btn-primary" runat="server" Text="Add subcategory" onclick="addsubcat_Click" />
  <br /><br />
</asp:Content>


