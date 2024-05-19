using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Billingdetail : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\shoebox.mdf;Integrated Security=True;User Instance=True");
    int total = 0;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack != true)
        {
            fillgrid();
        }

    }
    protected void fillgrid()
    {
        con.Open();
        String str = "select * from bill where uname='" + Session["uname"] + "'";
        SqlDataAdapter sda = new SqlDataAdapter(str, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            int amount = Convert.ToInt32(ds.Tables[0].Rows[i][6].ToString());
            total = total + amount;
        }
        GridView1.DataSource = ds;
        GridView1.DataBind();
        lbltotal.Text = Convert.ToString(total);
        con.Close();
        con.Open();
        string q = "delete from bill where uname='" + Session["uname"] + "'";
        SqlCommand cmd1 = new SqlCommand(q, con);
        cmd1.ExecuteNonQuery();
        con.Close();

    }



    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
    }
    protected void Button78_Click(object sender, EventArgs e)
    {
        Response.Redirect("Thankyou.aspx");
    }
}


    
