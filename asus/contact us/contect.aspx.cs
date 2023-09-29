using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AsusShop.contact_us
{
    public partial class contectmaster : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-LCMNUM6\SQLEXPRESS;Initial Catalog=asus;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login_id"] == null)
            {
                Response.Redirect("~/login/Login.aspx");
            }
            cs.Visible = false;
        }

        protected void send_Click(object sender, EventArgs e)
        {
           
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into contectus values('" + name.Text + "','" + email.Text + "','" + message.Text + "')";
            cmd.ExecuteNonQuery();
            con.Close();

            name.Text = "";
            email.Text = "";
            message.Text = "";
            cs.Visible=true;
            cs.Text = "Your contact is from us";
        }
    }
}