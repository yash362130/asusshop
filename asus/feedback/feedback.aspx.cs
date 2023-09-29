using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AsusShop.feedback
{
    public partial class feddbackmaster : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-LCMNUM6\SQLEXPRESS;Initial Catalog=asus;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login_id"] == null)
            {
                Response.Redirect("~/login/Login.aspx");
            }
            ms.Visible = false;
        }


        protected void submit_Click(object sender, EventArgs e)
        {
           
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into feedback values('"+name.Text+"','"+emailid.Text+"','"+message.Text+ "')";
            cmd.ExecuteNonQuery();
            con.Close();
            ms.Visible = true;
            ms.Text = "Your Feedback Send Successfully";
            name.Text = "";
            emailid.Text = "";
            message.Text = "";
        }
    }
}