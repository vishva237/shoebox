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


public partial class shipping : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\shoebox.mdf;Integrated Security=True;User Instance=True");
    int total = 0;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel3.Visible = false;
    }
    protected void btn_billnow_Click(object sender, EventArgs e)
    {
        //SqlDataAdapter sada = new SqlDataAdapter("select pname,price,qty from cart_master where user_id=" + Session["user_id"].ToString(), scon);
        //DataSet ds = new DataSet();
        //sada.Fill(ds);
        ////int s=(Convert.ToInt16(ds.Tables[0].Rows[0][0]));
        //string s1 = ds.Tables[0].Rows[0][0].ToString();
        //int s3 = Convert.ToInt16(ds.Tables[0].Rows[0][1].ToString());
        //int s4 = Convert.ToInt16(ds.Tables[0].Rows[0][2].ToString());



        //string s5 = "insert into bill_master values(" + a + "," + user_id + "," + pid + ",'" + s1 + "'," + s3 + "," + s4 + "," + s3 * s4 + ")";

        //scon.Open();
        //SqlCommand scom = new SqlCommand(s5, scon);

        //scom.ExecuteNonQuery();
        //scon.Close();

        //SqlDataAdapter sada1 = new SqlDataAdapter("select * from bill_master where user_id=" + Session["user_id"].ToString(), scon);
        //sada1.Fill(ds);
        //GridView1.DataSource = ds;
        //GridView1.DataBind();
        //int t1 = 0;
        //for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        //{
        //    t1 = t1 + (s3 * s4);
        //}
        //TextBox1.Text = t1.ToString();

        con.Open();

        string q1 = "insert into shipping(name,address,cno,uname) values(@name,@address,@cno,@uname)";
        SqlCommand cmd2 = new SqlCommand(q1, con);
        cmd2.Parameters.AddWithValue("@uname", Session["uname"]);
        cmd2.Parameters.AddWithValue("@name", txtname.Text);
        cmd2.Parameters.AddWithValue("@address", txtadd.Text);
        cmd2.Parameters.AddWithValue("@cno", txtcno.Text);

        cmd2.ExecuteNonQuery();

        string q2 = "select max(shid) from shipping where uname='" + Session["uname"] + "'";
        SqlDataAdapter sda1 = new SqlDataAdapter(q2, con);
        DataSet ds1 = new DataSet();
        sda1.Fill(ds1);
        string shid = Convert.ToString(ds1.Tables[0].Rows[0][0].ToString());


        string query = "select * from cart where uname='" + Session["uname"] + "'";
        SqlDataAdapter sda = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            int p_id = Convert.ToInt16(ds.Tables[0].Rows[i][1].ToString());
            string p_nm = Convert.ToString(ds.Tables[0].Rows[i][2].ToString());
            int p_price = Convert.ToInt32(ds.Tables[0].Rows[i][3].ToString());
            int p_size = Convert.ToInt32(ds.Tables[0].Rows[i][4].ToString());
            int p_qnt = Convert.ToInt32(ds.Tables[0].Rows[i][6].ToString());
            int amount = Convert.ToInt32(ds.Tables[0].Rows[i][10].ToString());

            string query_update = "update product set tot_qnt=tot_qnt-@pp_qnt where p_id=@pp_id";
            SqlCommand cmd_update = new SqlCommand(query_update, con);           
            cmd_update.Parameters.AddWithValue("@pp_id", p_id);          
            cmd_update.Parameters.AddWithValue("@pp_qnt", p_qnt);           
            cmd_update.ExecuteNonQuery();
            
            string query1 = "insert into bill(p_id,p_nm,p_price,p_size,p_qnt,total,uname,shid) values (@p_id,@p_nm,@p_price,@p_size,@p_qnt,@total,@uname,@shid)";
            SqlCommand cmd = new SqlCommand(query1, con);
            cmd.Parameters.AddWithValue("@uname", Session["uname"]);
            
            cmd.Parameters.AddWithValue("@p_id", p_id);
            cmd.Parameters.AddWithValue("@p_nm", p_nm);
            cmd.Parameters.AddWithValue("@p_price", p_price);
            cmd.Parameters.AddWithValue("@p_size", p_size);
            cmd.Parameters.AddWithValue("@p_qnt", p_qnt);
            cmd.Parameters.AddWithValue("@total", amount);
            cmd.Parameters.AddWithValue("@shid", shid);
            cmd.ExecuteNonQuery();
        }
        con.Close();

        con.Open();
        string q = "delete from cart where uname='" + Session["uname"] + "'";
        SqlCommand cmd1 = new SqlCommand(q, con);
        cmd1.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Billingdetail.aspx");
    }
    protected void rbcash_CheckedChanged(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel3.Visible = false;
    }
    protected void rbcredit_CheckedChanged(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        Panel3.Visible = false;
    }
    protected void rbdebit_CheckedChanged(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel3.Visible = true;
    }
}


    

