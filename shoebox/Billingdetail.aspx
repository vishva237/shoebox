<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Billingdetail.aspx.cs" Inherits="Billingdetail" Title="Billing Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="main">
			<div class="container">
		<table style="margin-top:20px; margin-left:200px; width: 100%;"><tr>
<asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-dark" CellPadding="4" ForeColor="#333333" 
        GridLines="None" DataKeyNames="bill_id" EmptyDataText="No Data Found" 
         Width="100%" AutoGenerateColumns="False" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" >

        <RowStyle BackColor="#FFFBD6" ForeColor="White" Height="50px" />
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
         <Columns>
             <asp:TemplateField HeaderText="Bill No"><ItemTemplate><asp:Label ID="Label1" runat="server" Text='<%# Eval("bill_id") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             
             <asp:TemplateField HeaderText="Username"><ItemTemplate><asp:Label ID="Label3" runat="server" Text='<%# Eval("uname") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Product ID"><ItemTemplate><asp:Label ID="Label2" runat="server" Text='<%# Eval("p_id") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Name"><ItemTemplate><asp:Label ID="Label3" runat="server" Text='<%# Eval("p_nm") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Price"><ItemTemplate><asp:Label ID="Label4" runat="server" Text='<%# Eval("p_price") %>'></asp:Label></ItemTemplate></asp:TemplateField>
              <asp:TemplateField HeaderText="Size"><ItemTemplate><asp:Label ID="Label5" runat="server" Text='<%# Eval("p_size") %>'></asp:Label></ItemTemplate></asp:TemplateField>
            
             <asp:TemplateField HeaderText="Quantity"><ItemTemplate><asp:Label ID="Label6" runat="server" Text='<%# Eval("p_qnt") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             <asp:TemplateField HeaderText="Total"><ItemTemplate><asp:Label ID="Label7" runat="server" Text='<%# Eval("total") %>'></asp:Label></ItemTemplate></asp:TemplateField>
             
         </Columns>
    </asp:GridView></td></tr></table>
   <p style="margin-left:500px; height: 29px;"><asp:Label ID="Label5" runat="server" Text="Total" Font-Bold="True" Font-Italic="False" Font-Size="Large"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbltotal" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label></p><br /><br />
      <p style="margin-left:500px; height: 56px; width: 227px;">
      <asp:Button ID="Button78" runat="server" 
        Text="Checkout" onclick="Button78_Click" Font-Bold="True" 
        Font-Size="25pt" cssclass="btn btn-primary" /></p>  <br /> 
	
    </div>
    </div>
</asp:Content>




