<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" Title="Contect Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
    <!-- Contact Start -->
 <center>
        <div class="col span_2_of_3">
				  <div class="contact-form">
				  	<h3>Feedback</h3>
					    	<div class="wow fadeInLeft" data-wow-delay="0.4s">
						<span>Name<label>*</label></span>
						<asp:TextBox ID="txtname" runat="server"></asp:TextBox>
					 </div>
					 <div class="wow fadeInLeft" data-wow-delay="0.4s">
						<span>Email<label>*</label></span>
						<asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
					 </div>
					 <div class="wow fadeInLeft" data-wow-delay="0.4s">
						<span>CITY<label>*</label></span>
						<asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
					 </div>
					  <div class="wow fadeInLeft" data-wow-delay="0.4s">
						<span>SUBJECT<label>*</label></span>
						<asp:TextBox ID="txtsubject" runat="server"></asp:TextBox>
					 </div>
					
					 <div class="wow fadeInLeft" data-wow-delay="0.4s">
						<span>Message<label>*</label></span>
						<asp:TextBox ID="txtmsg" runat="server"></asp:TextBox>
					 </div>
						   <div>
						   		
						   		  <asp:Button ID="BtnSbmt" runat="server" Text="Submit" OnClick="BtnSbmt_Click" class="acount-btn" />
                        <asp:Button ID="Btnreset" runat="server" Text="Reset" OnClick="Btnreset_Click" class="acount-btn"/>
						   		</span>
						  </div>


				    </div>
  				</div>
  				</center>
        <!-- Contact End -->
</asp:Content>

