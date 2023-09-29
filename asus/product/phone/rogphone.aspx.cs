using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace AsusShop.product.phone
{
    public partial class rogphone : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-LCMNUM6\SQLEXPRESS;Initial Catalog=asus;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from product where typeofproduct='RogPhone' ", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }

        protected void addtocart_Click(object sender, EventArgs e)
        {

            if (Session["login_id"] == null)
            {
                Response.Redirect("~/login/Login.aspx");
            }
            Button BuyNowButton = (Button)sender;
            DataListItem item = (DataListItem)BuyNowButton.NamingContainer;
            Label id = (Label)item.FindControl("Label6");
            string user_id = Session["login_id"].ToString();

            Session["id"] = id.Text;
            con.Open();
            string sql = "select image,name,price from product where id='" + Session["id"] + "'";
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader reader = cmd.ExecuteReader();


            if (reader.Read())
            {
                string name = reader["Name"].ToString();
                string price = reader["price"].ToString();
                string image = reader["image"].ToString();
                reader.Close();
                string image1 = image.ToString();
                string name1 = name.ToString();
                string price1 = price.ToString();
                SqlCommand cmd1 = con.CreateCommand();
                cmd1.CommandType = CommandType.Text;
                cmd1.CommandText = "insert into cart(image,name,price,user_p_id) values('" + image1 + "','" + name1 + "','" + price1 + "','" + user_id + "')";
                cmd1.ExecuteNonQuery();
                con.Close();
            }
        }
    }
}