<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="shipping.aspx.cs" Inherits="shipping" Title="Shipping Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">
        .style1
        {
            height: 23px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="main">
			<div class="container" style="margin-left: 50px">
			   <br />
			 <p style="margin-left: 323px">
			 <asp:Label ID="Label85" runat="server" Font-Size="30pt" Text="All Payment Details" 
            Font-Bold="True"></asp:Label></p>
    
  
              <table align="center" class="style1 table table-dark" style="margin-top:50px">
   <tr><td align="center">
   <p style=" height: 27px; width:383px">
                
                <asp:Label ID="Label1" runat="server" Text="Shipping And Payment Details" 
                    Font-Bold="True" Font-Size="X-Large" ForeColor="white"></asp:Label>
            </td>
        </tr>
        </table>
         <table class="table table-dark" height="500" border="" width="" style="margin-left:0px; margin-top:20px">
        <tr>
            <td class="style3">
                <asp:Label ID="Label2" runat="server" Text="Name" Font-Bold="True"  
                    ForeColor="white" Font-Size="15pt"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtname" runat="server" Font-Bold="True" Font-Size="Larger"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label3" runat="server" Text="Address" Font-Bold="True"  
                    ForeColor="white" Font-Size="Larger"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtadd" runat="server" Font-Bold="True" Font-Size="Larger" 
                    TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label4" runat="server" Text="Email Id" Font-Bold="True"  ForeColor="white" Font-Size="Larger"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtemail" runat="server" Font-Bold="True" Font-Size="Larger"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label10" runat="server" Text="Contact No" Font-Bold="True"  ForeColor="white" Font-Size="Larger"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcno"  runat="server" Font-Bold="True" Font-Size="Larger"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label5" runat="server" Text="Payment Mode" Font-Bold="True"  
                    ForeColor="white" Font-Size="Larger"></asp:Label>
            </td>
            <td>
            
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:RadioButton ID="rbcash" runat="server" Text="Cash" AutoPostBack="True" 
                     GroupName="pay" />
                <asp:RadioButton ID="rbcredit" runat="server" Text="Credit Card" 
                    AutoPostBack="True"  
                    GroupName="pay" />
                <asp:RadioButton ID="rbdebit" runat="server" Text="Debit Card" 
                    AutoPostBack="True"  
                    GroupName="pay" />
                <asp:Panel ID="Panel2" runat="server">
            
               
                    &nbsp;<p style="margin-left: 200px; height: 27px;">
                
                    <asp:TextBox ID="TextBox1" runat="server" Text=""></asp:TextBox>
                  
                  
                           <p style="margin-left: 200px; height: 27px;">
                               <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="15pt" 
                        Text=  "month"></asp:Label>     
                         <p style="margin-left: 200px; height: 27px;">
                               <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="15pt" 
                        Text=  "year"></asp:Label>     
                           
                        <td>
                            <asp:DropDownList ID="DropDownList2" runat="server">
                                <asp:ListItem Value="01"></asp:ListItem>
                                <asp:ListItem Value="02"></asp:ListItem>
                                <asp:ListItem Value="03"></asp:ListItem>
                                <asp:ListItem Value="04"></asp:ListItem>
                                <asp:ListItem Value="05"></asp:ListItem>
                                <asp:ListItem Value="06"></asp:ListItem>
                                <asp:ListItem Value="07"></asp:ListItem>
                                <asp:ListItem Value="08"></asp:ListItem>
                                <asp:ListItem Value="09"></asp:ListItem>
                                <asp:ListItem Value="10"></asp:ListItem>
                                <asp:ListItem Value="11"></asp:ListItem>
                                <asp:ListItem Value="12"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem Value="2019"></asp:ListItem>
                                <asp:ListItem Value="2020"></asp:ListItem>
                                <asp:ListItem Value="2021"></asp:ListItem>
                                <asp:ListItem Value="2022"></asp:ListItem>
                                <asp:ListItem Value="2023"></asp:ListItem>
                            </asp:DropDownList>
                            
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            CVV
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </td>
                        <td>
                        </td>
                    </tr>
                    </tr>
                    </table>
                </asp:Panel>
                <asp:Panel ID="Panel3" runat="server">
                    <table>
                    </tr>
                
                <tr><td>Debit Card No.</td><td></td></tr>
                
                <tr><td colspan="2">
                    <asp:TextBox ID="TextBox2" runat="server" Text=""></asp:TextBox>
                    </td>
                    <tr>
                        <td>
                            Month</td>
                        <td>
                            Year</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DropDownList ID="DropDownList4" runat="server">
                                <asp:ListItem Value="01"></asp:ListItem>
                                <asp:ListItem Value="02"></asp:ListItem>
                                <asp:ListItem Value="03"></asp:ListItem>
                                <asp:ListItem Value="04"></asp:ListItem>
                                <asp:ListItem Value="05"></asp:ListItem>
                                <asp:ListItem Value="06"></asp:ListItem>
                                <asp:ListItem Value="07"></asp:ListItem>
                                <asp:ListItem Value="08"></asp:ListItem>
                                <asp:ListItem Value="09"></asp:ListItem>
                                <asp:ListItem Value="10"></asp:ListItem>
                                <asp:ListItem Value="11"></asp:ListItem>
                                <asp:ListItem Value="12"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                        <asp:DropDownList ID="DropDownList3" runat="server">
                                <asp:ListItem Value="2019"></asp:ListItem>
                                <asp:ListItem Value="2020"></asp:ListItem>
                                <asp:ListItem Value="2021"></asp:ListItem>
                                <asp:ListItem Value="2022"></asp:ListItem>
                                <asp:ListItem Value="2023"></asp:ListItem>
                            </asp:DropDownList>
                            
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            CVV
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                        <td>
                        </td>
                    </tr>

                </asp:Panel>
            </ContentTemplate>
            </asp:UpdatePanel>
            </td>
        </tr>
        <tr align="center">
            <td colspan="3"><asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" onclick="btn_billnow_Click" Text="Bill Now" />
               </td>
        </tr>
    </table>
    
   
 
    </div>
    </div>
</asp:Content>



