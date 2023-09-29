using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AsusShop.user
{
    public partial class upadateusername : System.Web.UI.Page
    {
         SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-LCMNUM6\SQLEXPRESS;Initial Catalog=asus;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            message.Visible = false;
        }

        protected void update_Click(object sender, EventArgs e)
        {
            con.Open();
            string oldname = oldusername.Text;
            string id = Session["login_id"].ToString();
            string updateQuery = "select name from register where id=@id";
            SqlCommand cmd = new SqlCommand(updateQuery, con);
            cmd.Parameters.AddWithValue("@id", id);
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
               
               reader.Read();
               string newname= reader["Name"].ToString();
                if(newname==oldname)
                {
                    reader.Close();
                    string nm = newusername.Text;
                    string update = "UPDATE register SET name=@NewUserName where id='" + Session["login_id"] +"'";
                    SqlCommand command = new SqlCommand(update, con);
                    command.Parameters.AddWithValue("@NewUserName",nm);
                    int rowsAffected = command.ExecuteNonQuery();
                    message.Text = "Updated successfully";
                }
                else
                {
                    message.Text = "user not Find";
                }
            }
            
            con.Close();

            
        }
    }
}