using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AsusShop
{
    public partial class orderpage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-LCMNUM6\SQLEXPRESS;Initial Catalog=asus;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            string user_id = Session["login_id"].ToString();

            txtTotalPrice.Text = Session["totalprice"].ToString();
            con.Open();
            string email = Session["regiemail"].ToString();

            string regi = "select Emailaddress,name,phoneno from Register where Emailaddress=@em";
            SqlCommand cmd1 = new SqlCommand(regi, con);
            cmd1.Parameters.AddWithValue("em", email);
            SqlDataReader reader1 = cmd1.ExecuteReader();
            if (reader1.HasRows)
            {
                reader1.Read();
                TextBox1.Text = reader1["name"].ToString();
                TextBox2.Text = reader1["Emailaddress"].ToString();
                TextBox3.Text = reader1["phoneno"].ToString();

            }

            con.Close();

            using (con)
            {
                con.Open();

                string query = "SELECT COUNT(*) FROM cart where user_p_id='" + user_id + "'";

                using (SqlCommand command = new SqlCommand(query, con))
                {
                    int recordCount = (int)command.ExecuteScalar();
                    txtOrderItems.Text = recordCount.ToString();
                }
            }
            con.Close();

        }

        protected void cencelorder_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
           
        }

        protected void conformorder_Click(object sender, EventArgs e)
        {
            string user_id = Session["login_id"].ToString();
            SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-LCMNUM6\SQLEXPRESS;Initial Catalog=asus;Integrated Security=True");

            conn.Open();
            string payment = rbPaymentMethod.SelectedValue;
            Session["paymentmethod"] = payment;
            Session["paymentmethodfordb"] = payment;
            SqlCommand cmdd = conn.CreateCommand();
            cmdd.CommandType = cmdd.CommandType;
            cmdd.CommandText = "insert into orderlist values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + address.Text + "','" + txtOrderItems.Text + "','" + txtTotalPrice.Text + "','" + payment + "','" + user_id + "')";
            cmdd.ExecuteNonQuery();
            conn.Close();

            Response.Redirect("billpage.aspx");
        }
    }
}