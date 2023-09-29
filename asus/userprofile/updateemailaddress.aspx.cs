using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AsusShop.user
{
    public partial class updateemailaddress : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-LCMNUM6\SQLEXPRESS;Initial Catalog=asus;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            message.Visible= false;
        }

        protected void updateemail_Click(object sender, EventArgs e)
        {
            if (Session["login_id"] == null)
            {
                Response.Redirect("~/login/Login.aspx");
            }
            con.Open();
            string oldmail = oldemail.Text; 
            string id = Session["login_id"].ToString();
            string updateQuery = "select Emailaddress from register where id=@id";
            SqlCommand cmd = new SqlCommand(updateQuery, con);
            cmd.Parameters.AddWithValue("@id", id);
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {

                reader.Read();
                string newmail = reader["Emailaddress"].ToString();
                if (newmail == oldmail)
                {
                    reader.Close();
                    string nm = newemail.Text;
                    string update = "UPDATE register SET Emailaddress=@ea where id='"+Session["login_id"]+"'";
                    SqlCommand command = new SqlCommand(update, con);
                    command.Parameters.AddWithValue("@ea", nm);
                    int rowsAffected = command.ExecuteNonQuery();
                    message.Text = "Updated successfully";

                }
                else
                {
                    message.Text = "user can not found";

                }
            }

            con.Close();
        }
    }
}