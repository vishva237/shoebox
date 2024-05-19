<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="category.aspx.cs" Inherits="category" Title="category Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="main">
			<div class="container" style="margin-left: 50px">
			  <asp:DataList ID="DataList1" runat="server" RepeatColumns="2" CellSpacing="20" 
        GridLines="Horizontal" RepeatDirection="Horizontal" Border="0">
    
   <HeaderTemplate>
			  
			        <asp:Label ID="collection"  runat="server" Text="Collection" style="margin-left: 550px"  Font-Bold="true" Font-Size="50pt"></asp:Label><br /><br />
   

   </HeaderTemplate>
    <ItemTemplate><br />
    <div class="row" style="margin-left: 50px">
    <div class="3u">
   
						<section>
   <asp:HyperLink ID="hpdetail_img"   runat="server"  NavigateUrl='<%# "~/subcat.aspx?id=" + Eval("c_id") %>'  >
    <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("c_img")%>'  Height="350" Width="600" style="margin-bottom:100"></asp:Image>
    </asp:HyperLink><br /><br /></section></div>
   
						
     <div class="3u" style="margin-left:20px; margin-top:5px" >
    
						<section>
    <asp:HyperLink ID="hpdetail" ForeColor=Black style="margin-left: 250px" runat="server"  NavigateUrl='<%# "~/subcat.aspx?id=" + Eval("c_id") %>' Text='<%#Eval("c_nm")%>' Font-Bold=true Font-Size=30pt ></asp:HyperLink></section></div>
   
   <%-- <td>
    <asp:Label ID="Label2" runat="server" Text='<%#Eval("c_nm")%>'></asp:Label></td>--%></div>
   
    
     
     </ItemTemplate>
     
     <FooterTemplate >
     </table>
     </FooterTemplate>
    </asp:DataList>
    </div>
			         </div>
			         
			 </div>
</asp:Content>

