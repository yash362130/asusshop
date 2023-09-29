using AjaxControlToolkit.HtmlEditor.ToolbarButtons;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using static System.Net.Mime.MediaTypeNames;
using System.Collections.ObjectModel;

namespace AsusShop
{
    public partial class addtocart : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-LCMNUM6\SQLEXPRESS;Initial Catalog=asus;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["totalprice"] = Label4.Text;
            Session["ttpfb"] = Label4.Text;
            if (Session["login_id"] == null)
            {
                Response.Redirect("~/login/Login.aspx");
            }
            string user_id = Session["login_id"].ToString();
            SqlDataAdapter da = new SqlDataAdapter("select * from cart where user_p_id='" + user_id + "'", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataList2.DataSource = ds;
            DataList2.DataBind();

            //111111111
            con.Open();

            string query1 = "SELECT COUNT(*) FROM cart where user_p_id='" + user_id + "'";
            SqlCommand command = new SqlCommand(query1, con);

            int cartItemCount = Convert.ToInt32(command.ExecuteScalar());

            if (cartItemCount == 0)
            {
                Image1.Visible = true;
            }
            
            con.Close();
            /////2222222

            string query = "SELECT price FROM cart where user_p_id='" + user_id + "'";
            using (con)
            {
                con.Open();

                using (SqlCommand command1 = new SqlCommand(query, con))
                {
                    using (SqlDataReader reader1 = command1.ExecuteReader())
                    {
                        decimal totalPrice = 0;
                        while (reader1.Read())
                        {
                            int price = reader1.GetInt32(reader1.GetOrdinal("price"));

                            totalPrice += price;
                            Label4.Text = totalPrice.ToString();
                        }

                        reader1.Close();
                    }
                }
                con.Close();
            }



        }

        protected void delectiteam_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-LCMNUM6\SQLEXPRESS;Initial Catalog=asus;Integrated Security=True");

            Button BuyNowButton = (Button)sender;
            DataListItem item = (DataListItem)BuyNowButton.NamingContainer;
            Label id = (Label)item.FindControl("Label2");


            Session["iddelete"] = id.Text;
            conn.Open();

            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "delete from cart where id=@1";
            cmd.Parameters.AddWithValue("@1", Session["iddelete"]);
            cmd.ExecuteNonQuery();

            conn.Close();
            Response.Redirect(Request.RawUrl);

        }

        protected void checkout_Click(object sender, EventArgs e)
        {
            Response.Redirect("orderpage.aspx");
        }
    }
}