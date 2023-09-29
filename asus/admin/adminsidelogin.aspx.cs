using AjaxControlToolkit.HtmlEditor.ToolbarButtons;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AsusShop.admin
{
    public partial class adminsidelogin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-LCMNUM6\SQLEXPRESS;Initial Catalog=asus;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            con.Open();
            string name = adminusername.Text;
            string pwd = adminpassword.Text;
            string name_check = "select * from admin where name=@name AND password=@pwd";
            SqlCommand cmd = new SqlCommand(name_check, con);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@pwd", pwd);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                reader.Read();
                string nmae = reader["name"].ToString();
                string password = reader["password"].ToString();
                //Session["regiemail"] = emailaddres;
                //Session["login_id"] = user_id;
                Response.Redirect("~/admin/home_page.aspx");
               Label1.Visible = true;
                Label1.Text = "login Successfully";
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = " Invalid Details";


            }
            con.Close();
        }
    }
}