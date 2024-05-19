<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="subcat.aspx.cs" Inherits="subcat" Title="sub-category Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="main">
			<div class="container1" style="margin-left: 10px">
			   <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" CellSpacing="20" 
        GridLines="Vertical" Border="0">
   <HeaderTemplate>
			  
			        <asp:Label ID="sub_collection"  runat="server" Text="Sub-Collection" style="margin-left: 450px"  Font-Bold="true" Font-Size="50pt"></asp:Label><br /><br />
   

   </HeaderTemplate>
    <ItemTemplate><br />
    <div class="row" >
    <div class="3u" style="margin-left:0px; margin-top:50px;padding-right: 0px;" >
						<section1 style="margin-left: 0px !important;">
   
    <asp:HyperLink ID="hpdetail_img"   runat="server"  NavigateUrl='<%# "~/product.aspx?id=" + Eval("s_id") %>'  >
    <asp:Image  ID="Image1" runat="server" ImageUrl='<%#Eval("s_img")%>' Height="250" Width="325" style="margin-bottom:100"></asp:Image><br /><br /></section></div>
    </asp:HyperLink>
   
						
     <div class="3u" style="margin-left:1px; margin-top:10px;padding-right: 0px;" >
						<section1 style="margin-left: 0px !important;">
    <asp:HyperLink ID="hpdetail" ForeColor=Black style="margin-left: 1px" runat="server"  NavigateUrl='<%# "~/product.aspx?id=" + Eval("s_id") %>' Text='<%#Eval("s_nm")%>' Font-Bold=true Font-Size=20pt ></asp:HyperLink></section></div>
   
   <%-- <td>
    <asp:Label ID="Label2" runat="server" Text='<%#Eval("cat_name")%>'></asp:Label></td>--%></div>
   
    
     

   </ItemTemplate>
                </asp:DataList>
   </div>
   </div>
   
</asp:Content>


