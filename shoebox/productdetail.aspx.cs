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




public partial class productdetail : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\shoebox.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        String query = "select * from product where p_id=" + Request.QueryString["id"];
        SqlCommand com = new SqlCommand(query, con);
        com.CommandType = CommandType.Text;
        SqlDataReader rdr=com.ExecuteReader();
        if (rdr.Read())
        {
            lblp_id.Text = Convert.ToString(rdr["p_id"]);
            lbl_name.Text = Convert.ToString(rdr["p_nm"]);
            lbl_price.Text = Convert.ToString(rdr["p_price"]);
            //lbl_size.Text = Convert.ToString(rdr["p_size"]);
            Image1.ImageUrl = Convert.ToString(rdr["p_img"]);
            //lbl_qnt.Text = Convert.ToString(rdr["p_qnt"]);
            lbl_tot_qnt.Text = Convert.ToString(rdr["tot_qnt"]);
            hdnscat.Value = Convert.ToString(rdr["p_id"]);
            hdncat.Value = Convert.ToString(rdr["s_id"]);
        
        }
        con.Close();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["uname"] == null)
        {
            Response.Redirect("login2.aspx");
        }
        con.Open();
        String query = "insert into cart(p_id,p_nm,p_price,p_size,p_img,p_qnt,s_id,uname,c_id,amount) values(@p_id,@p_nm,@p_price,@p_size,@p_img,@p_qnt,@s_id,@uname,@c_id,@amount)";
        SqlCommand cmd = new SqlCommand(query, con);
        //cmd.Parameters.AddWithValue("@cart_id", lblpro_id.Text);
        cmd.Parameters.AddWithValue("@p_id", lblp_id.Text);
        cmd.Parameters.AddWithValue("@p_nm", lbl_name.Text);
        cmd.Parameters.AddWithValue("@p_price", lbl_price.Text);
        cmd.Parameters.AddWithValue("@p_size", lbl_size.Text);
        cmd.Parameters.AddWithValue("@p_img", Image1.ImageUrl);
        cmd.Parameters.AddWithValue("@p_qnt", lbl_qnt.Text);
        int amount = Convert.ToInt32(lbl_price. Text) * Convert.ToInt32(lbl_qnt.Text);
        cmd.Parameters.AddWithValue("@amount", amount);
        cmd.Parameters.AddWithValue("@s_id", hdnscat.Value);
        cmd.Parameters.AddWithValue("@uname", Session["uname"]);
        cmd.Parameters.AddWithValue("@c_id", hdncat.Value);
        cmd.ExecuteNonQuery();
         
        con.Close();

        Response.Redirect("viewcart.aspx");
    }
}
