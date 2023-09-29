using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net.Mail;
using System.Reflection.Emit;
using System.Runtime.Remoting.Messaging;
using System.Xml.Linq;
using System.ComponentModel.Design.Serialization;

namespace AsusShop.login
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-LCMNUM6\SQLEXPRESS;Initial Catalog=asus;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["loginemail"] = email.Text;
            con.Open();
            string emailid1 = email.Text;
            string regi = "select name from Register where Emailaddress=@em";
            SqlCommand cmd1 = new SqlCommand(regi, con);
            cmd1.Parameters.AddWithValue("em", emailid1);
            SqlDataReader reader1 = cmd1.ExecuteReader();
            if (reader1.HasRows)
            {
                reader1.Read();
                string rn = reader1["name"].ToString();
                Session["rname"] = rn;
            }

            con.Close();

            Label1.Visible =false;
        }


        protected void login1_Click(object sender, EventArgs e)
        {

            con.Open();
            string emailvalue = email.Text;
            string pwd = password.Text;
            string query_mail = "select * from Register where Emailaddress=@emailcheck AND password=@pwd";
            SqlCommand cmd = new SqlCommand(query_mail, con);
            cmd.Parameters.AddWithValue("@emailcheck", emailvalue);
            cmd.Parameters.AddWithValue("@pwd", pwd);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                reader.Read();
                string user_id = reader["id"].ToString();
                string emailaddres = reader["Emailaddress"].ToString();
                Session["regiemail"] = emailaddres;
                Session["login_id"] = user_id;
                Response.Redirect("~/index.aspx");
                Label1.Visible=true;
                Label1.Text = "login Successfully";
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Invalid Details !";


            }
            con.Close();
            
      
        }
    }
}