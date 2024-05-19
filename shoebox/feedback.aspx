<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" Title="feedback Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
 <style>
    span {
    color: #009999;
    font-size:20px;
}
</style>
    <!-- Contact Start -->
 <center>
 <div class="container-fluid tm-mt-60">
        <div class="row tm-mb-50">
       <div class="col-lg-12 col-12 mb-5 text-center">
				  <div class="contact-form"> 
				  	<h3>Feedback</h3>
				  	<table height="400" width="400" class="text-center" style="margin: 0 auto;">
				  	
<tr>
					    	<td class="form-group">
						<span>Name:</span>
						</td>
    <td class="form-group">
						<asp:TextBox ID="txtname" runat="server" class="form-control rounded-0"></asp:TextBox>
					 </td>
					 </tr>
<tr>
					 <td class="form-group">
						<span>Email:</span>
						</td>
    <td class="form-group">
						<asp:TextBox ID="txtemail" runat="server" class="form-control rounded-0"></asp:TextBox>
					 </td>
					 </tr>
<tr>
					 <td class="form-group">
						<span>City:</span>
						</td>
    <td class="form-group">
						<asp:TextBox ID="txtcity" runat="server" class="form-control rounded-0"></asp:TextBox>
					 </td>
					 </tr>
<tr>
					  <td class="form-group">
						<span>Subect:</span>
						</td>
    <td class="form-group">
						<asp:TextBox ID="txtsubject" runat="server"  class="form-control rounded-0"></asp:TextBox>
					 </td>
					 </tr>
<tr>
					
					 <td class="form-group">
						<span>Message:</span>
						</td>
    <td class="form-group">
						<asp:TextBox ID="txtmsg" runat="server" class="form-control rounded-0"></asp:TextBox>
					 </td>
					 </tr>
<tr>
						   <td>
						   		
						   		  <asp:Button ID="BtnSbmt" class="btn btn-primary" runat="server" Text="Submit" OnClick="BtnSbmt_Click"  />
                       </td>
    <td class="form-group">
                        <asp:Button ID="Btnreset" runat="server" Text="Reset" OnClick="Btnreset_Click" class="btn btn-primary"/>
						   		</span>
						   		
						  </td>
						  </tr>
</table>

</div>
</div>
</div>
				    </div>
  				
  				</center>
        <!-- Contact End -->
</asp:Content>

