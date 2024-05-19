using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class editcart : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\shoebox.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack != true)
        {
            con.Open();
            String query = "select * from cart where p_id=" + Request.QueryString["id"];
            SqlCommand com = new SqlCommand(query, con);
            com.CommandType = CommandType.Text;
            SqlDataReader rdr = com.ExecuteReader();
            if (rdr.Read())
            {
                lblproduct_id.Text = Convert.ToString(rdr["p_id"]);
                lblname.Text = Convert.ToString(rdr["p_nm"]);
                lblprice.Text = Convert.ToString(rdr["p_price"]);
                lblsize.Text = Convert.ToString(rdr["p_size"]);
                Image1.ImageUrl = Convert.ToString(rdr["p_img"]);
                txtquantity.Text = Convert.ToString(rdr["p_qnt"]);
                lblamount.Text = Convert.ToString(rdr["amount"]);
                HiddenField1.Value = Convert.ToString(rdr["ca_id"]);
            }
            con.Close();
        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        int amount = Convert.ToInt32(lblprice.Text) * Convert.ToInt32(txtquantity.Text);
        string qrystr;
        qrystr = "update cart set p_qnt ='" + txtquantity.Text + "',p_size ='" + lblsize.Text + "',amount='" + amount + "'  WHERE ca_id=" + HiddenField1.Value;
        con.Open();
        SqlCommand cmd = new SqlCommand(qrystr, con);
        cmd.CommandType = CommandType.Text;
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Viewcart.aspx");
    }
}


    

