using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class contactus : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\shoebox.mdf;Integrated Security=True;User Instance=True");
    }
    protected void BtnSbmt_Click(object sender, EventArgs e)
    {
        con.Open();

        SqlCommand cmd = new SqlCommand("Insert into feedback(f_nm,subject,message,email,city) values(@f_nm,@subject,@message,@email,@city)", con);

        cmd.Parameters.AddWithValue("@f_nm", txtname.Text.Trim());
        cmd.Parameters.AddWithValue("@subject", txtsubject.Text.Trim());
        cmd.Parameters.AddWithValue("@message", txtmsg.Text.Trim());
        cmd.Parameters.AddWithValue("@email", txtemail.Text.Trim());
        cmd.Parameters.AddWithValue("@city", txtcity.Text.Trim());
       



        cmd.ExecuteNonQuery();
        //DisplayData();
        con.Close();


        txtname.Text = "";
        txtemail.Text = "";
        txtcity.Text = "";
        txtsubject.Text = "";
        txtmsg.Text = "";




        Response.Redirect("home.aspx");
    }
    protected void Btnreset_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        txtemail.Text = "";
        txtcity.Text = "";
        txtsubject.Text = "";
        txtmsg.Text = "";

       
         }
}
