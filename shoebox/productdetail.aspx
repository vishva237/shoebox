<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="productdetail.aspx.cs" Inherits="productdetail" Title="ProductDetails Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">
        .style1
        {
            width: 135px;
            height: 384px;
        }
        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div id="main">
			<div class="container" style="margin-left: 100px">
		        <br />
		<%--<table     border="1" >
<tr align=center><font  size=15;  font-weight:bold; >Product Details</font></tr><br /><br /><br />
</table>
--%>
<asp:Label ID="pr_details" runat="server" Text="Product Details" style="margin-left: 150px"  Font-Bold="true" Font-Size="50pt"></asp:Label><br /><br /><br />
   

<table   border="1" >
<tr><td rowspan="6" align="center" valign="middle" class="style1">
    <asp:Image ID="Image1" runat="server" Height="600px" Width="688px" 
        style="margin-middle:900px"/>
    <asp:HiddenField ID="hdnscat" runat="server" />
    <asp:HiddenField ID="hdncat" runat="server" />
    </td></tr>
    </table>
                <br />
                
        <table class="table table-bordered table-dark" style="height: 274px; " border="1" id="lblmsg1" ><tr  class="table-primary1">
        <td><asp:Label ID="Label1" runat="server" Text="Product Id" Font-Bold="True" 
                Font-Size="15pt"></asp:Label></td>
<td style="margin-left: 40px"><asp:Label ID="lblp_id" Font-Bold="True" 
                Font-Size="15pt" runat="server" Text=""></asp:Label></td>
</tr>

<tr  class="table-info1">
<td><asp:Label ID="Label3" runat="server" Text="ProductName" Font-Bold="True" 
        Font-Size="15pt"></asp:Label></td>
<td><asp:Label ID="lbl_name" runat="server" Text="" Font-Bold="True" 
                Font-Size="15pt"></asp:Label></td>
</tr>

<tr  class="table-primar1y">
<td><asp:Label ID="Label5" runat="server" Text="Price" Font-Bold="True" 
        Font-Size="15pt"></asp:Label></td>
<td><asp:Label ID="lbl_price" runat="server" Text="" Font-Bold="True" 
                Font-Size="15pt"></asp:Label></td>
</tr>
<tr  class="table-info1">
<td><asp:Label ID="Label6" runat="server" Text="Size" Font-Bold="True" 
        Font-Size="15pt"></asp:Label></td>
<td>
<asp:DropDownList ID="lbl_size" runat="server" Width="100">
    <asp:ListItem Enabled="true" Text="1" Value="1"></asp:ListItem>
    <asp:ListItem Text="2" Value="2"></asp:ListItem>
    <asp:ListItem Text="3" Value="3"></asp:ListItem>    
    <asp:ListItem Text="4" Value="4"></asp:ListItem>
    <asp:ListItem Text="5" Value="5"></asp:ListItem>
    <asp:ListItem Text="6" Value="6"></asp:ListItem>
    <asp:ListItem Text="7" Value="7"></asp:ListItem>
    <asp:ListItem Text="8" Value="8"></asp:ListItem>
    <asp:ListItem Text="9" Value="9"></asp:ListItem>
    <asp:ListItem Text="10" Value="10"></asp:ListItem>
    <asp:ListItem Text="11" Value="11"></asp:ListItem>
    <asp:ListItem Text="12" Value="12"></asp:ListItem>
</asp:DropDownList>
</td>
</tr>


<tr  class="table-primary1">
<td><asp:Label ID="Label7" runat="server" Text="Quantity" Font-Bold="True" 
        Font-Size="15pt"></asp:Label></td>
<td><asp:TextBox ID="lbl_qnt" runat="server" Text="1"></asp:TextBox></td>
</tr>

<tr  class="table-info1">
<td><asp:Label ID="Label8" runat="server" Text="Total Quantity" Font-Bold="True" 
        Font-Size="15pt"></asp:Label></td>
<td><asp:Label ID="lbl_tot_qnt" Font-Bold="True" 
                Font-Size="15pt" runat="server" Text=""></asp:Label></td>
</tr>
<br />
<br />
<tr  class="table-primary1">
<td colspan="2" align="center" >
    <asp:Button ID="Button1" runat="server" 
        Text="Add to cart" onclick="Button1_Click" Font-Bold="True" 
        Font-Size="25pt"  class="btn btn-warning"  style="margin-bottom:10px;"/>
    <asp:Label ID="lblmsg1" runat="server"></asp:Label>
    </td>
</tr>
</table>
    </div>
    </div>
   
</asp:Content>

