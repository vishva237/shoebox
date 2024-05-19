<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Admin_login" Title="admin login page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container-fluid tm-mt-60">
        <div class="row tm-mb-50">
 <div class="col-lg-4 col-12 mb-5 text-center" style="margin: 0 auto;">
 <h2 class="tm-text-primary mb-5">LOGIN PAGE</h2>
    <div class="form-group">
        <asp:TextBox ID="txtuname" class="form-control rounded-0"  placeholder="Username" runat="server"></asp:TextBox>
      </div>
                    <div class="form-group">
            <asp:TextBox TextMode="Password" ID="txtpass" class="form-control rounded-0" placeholder="Password"  runat="server"></asp:TextBox>
        </div>

     <div class="form-group tm-text-right">
        <asp:Button ID="btnlogin" runat="server" Text="Login" onclick="btnlogin_Click" 
            class="btn btn-primary" />
        <asp:Label ID="lblmsg" runat="server"></asp:Label>
        </div>
        </div>
        <br />
       
</div>
</div>
</asp:Content>



