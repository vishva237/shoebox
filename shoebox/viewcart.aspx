<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="viewcart.aspx.cs" Inherits="viewcart" Title="Viewcart Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<style>
    a img {
    
    height: 20px;
    width: 20px;
}
</style>
<div id="main">
			<div class="container" style="margin-left: 50px">
<table style="  width: 100%;">
    <tr><td colspan="2">
<asp:GridView ID="GridView1" CssClass="table table-dark" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="None" DataKeyNames="ca_id" EmptyDataText="No Data Found" 
        Width="100%" AutoGenerateColumns="False">
        <RowStyle BackColor="#FFFBD6" ForeColor="White" />
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" ForeColor="White" />
         <Columns>
             <asp:TemplateField HeaderText="ID"><ItemTemplate><asp:Label ID="Label1" runat="server" Text='<%# Eval("p_id") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Name"><ItemTemplate><asp:Label ID="Label2" runat="server" Text='<%# Eval("p_nm") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Price"><ItemTemplate><asp:Label ID="Label3" runat="server" Text='<%# Eval("p_price") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Quanity"><ItemTemplate><asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("p_qnt") %>' Width="30" ontextchanged="TextBox1_TextChanged"></asp:TextBox></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Size"><ItemTemplate><asp:Label ID="Label4" runat="server" Text='<%# Eval("p_size") %>'></asp:Label></ItemTemplate></asp:TemplateField>
              <asp:TemplateField HeaderText="Amount"><ItemTemplate><asp:Label ID="Label5" runat="server" Text='<%# Eval("amount") %>'></asp:Label></ItemTemplate></asp:TemplateField>
            
             <asp:TemplateField HeaderText="Image"><ItemTemplate><asp:Image ID="Image1" runat="server" height="100" Width="100" ImageUrl='<%# Eval("p_img") %>'/></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Edit"><ItemTemplate  ><asp:HyperLink ID="hpflat" runat="server" NavigateUrl='<%# "~/editcart.aspx?id=" + Eval("p_id")  %>'  ImageUrl="~/images/edit.png">Edit</asp:HyperLink></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Delete"><ItemTemplate><asp:ImageButton ID="imgdeltmp" runat="server" ImageUrl="~/images/delete.png" Width="20px" Height="20px" OnClick="imgdeltmp_Click" OnClientClick="return confirm('Are you sure to delete?')" AlternateText="Delete"/></ItemTemplate></asp:TemplateField>
        </Columns>
    </asp:GridView></td></tr><br /><br />
    
    <tr><td align="center" valign="middle">
        <asp:Label ID="Label5" runat="server" Text="Total" Font-Bold="True" Font-Italic="False" Font-Size="Large"></asp:Label>
       
       
        <br />
       
       
        <td align="center"><asp:Label ID="lbltotal" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label></td></tr>
     
    <tr><td colspan="2" align="center"><br /><asp:Button ID="btn_payment" 
            runat="server" Text="Payment" onclick="btn_payment_Click" Font-Bold="True" 
            Font-Size="15pt"  class="btn btn-primary" /><br /><br /></td></tr>
    </table>
    </div>
    </div>

</asp:Content>

