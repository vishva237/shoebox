<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login2.aspx.cs" Inherits="login2" Title="login Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container-fluid tm-mt-60">
        <div class="row tm-mb-50">
            <div class="col-lg-4 col-12 mb-5 text-center" style="margin: 0 auto;">
                <h2 class="tm-text-primary mb-5">LOGIN PAGE</h2>
              <!--  <form id="contact-form" action="" method="POST" class="tm-contact-form mx-auto">-->
                    <div class="form-group">
                        <%--<input type="email" name="email" class="form-control rounded-0" placeholder="Email" required />--%>
                        <asp:TextBox ID="uname" class="form-control rounded-0" runat="server" placeholder="Username"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <%--<select class="form-control" id="contact-select" name="inquiry">
                            <option value="-">Subject</option>
                            <option value="sales">Sales &amp; Marketing</option>
                            <option value="creative">Creative Design</option>
                            <option value="uiux">UI / UX</option>
                        </select> 
                   --%> </div>
                    <div class="form-group">
                       <%-- <textarea rows="8" name="message" class="form-control rounded-0" placeholder="Message" required=></textarea>
   --%>         
    <asp:TextBox TextMode="Password"  ID="password" class="form-control rounded-0" runat="server" placeholder="Password"></asp:TextBox>   
        </div>

                    <div class="form-group tm-text-right">
                        <asp:Button ID="btnlogin" runat="server" Text="Login" onclick="btnlogin_Click" class="btn btn-primary" />
                    <asp:Label ID="lblmsg" runat="server" Text="" style="color:red"></asp:Label>
               <!-- </form>      -->          
            </div>
              <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/registration.aspx">New 
        User???</asp:HyperLink>
      
    
</asp:Content>

