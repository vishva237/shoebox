﻿using System;
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


public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\shoebox.mdf;Integrated Security=True;User Instance=True");
        //change at sqlexpress(use double \) and datadirectory
        con.Open();
        
        try
        {
            String query = "select u_id,uname,password from registration where uname='" + txtuname.Text + "' and password='" + txtpassword.Text + "'";
            SqlCommand com = new SqlCommand(query, con);
            com.CommandType = CommandType.Text;
            SqlDataReader rdr = com.ExecuteReader();
            if (rdr.Read())
            {
                Session["u_id"] = Convert.ToInt16(rdr["u_id"]);
                Session["uname"] = Convert.ToString(rdr["uname"]);
                Response.Redirect("home.aspx");
            }
            else
            {
                lblmsg.Visible = true;
                lblmsg.Text = "Username or password is wrong";
            }
        }
        catch { }
    }
}

    
