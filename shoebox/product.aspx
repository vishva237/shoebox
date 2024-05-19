<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="product" Title="Product Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <%--<form id="form1" runat="server">--%>
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="2" CellSpacing="20" 
        GridLines="Vertical" Border="0">
        <SeparatorStyle BorderStyle="Dotted" />
    <HeaderTemplate>
    
    </HeaderTemplate>
        <ItemTemplate>
         <div class="row" style="margin-left: 200px">
    <div class="3u">
						<section>
   
   <asp:HyperLink ID="hpdetail_img"   runat="server"  NavigateUrl='<%# "~/productdetail.aspx?id=" + Eval("p_id") %>'  >
    <asp:Image  ID="Image1" runat="server" ImageUrl='<%#Eval("p_img")%>' Height="350" Width="400" style="margin-bottom:100"></asp:Image><br /><br /></section></div>
   </asp:HyperLink>
   
	 <div class="3u" style="margin-right:10px; margin-top:10px" >
						<section>
     <asp:HyperLink ID="hpdetail" ForeColor=Black style="margin-left: 100px" runat="server"  NavigateUrl='<%# "~/productdetail.aspx?id=" + Eval("p_id") %>' Text='<%#Eval("p_nm")%>' Font-Bold=true Font-Size=20pt ></asp:HyperLink></section></div>
   
            <div class="3u" style="margin-left:200px; margin-top:10px" >
						<section>
		<asp:Label ID="p_price" runat="server" ForeColor=Black style="margin-right: 10px" Text='<%#Eval("p_price")+("₹")%>' Font-Bold=true Font-Size=20pt></asp:Label></section></div>
   
        
               
        </ItemTemplate>
        
    <FooterTemplate>
    
    </FooterTemplate>
    </asp:DataList>
    <%--</form>--%>
</asp:Content>
