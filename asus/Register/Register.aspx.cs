using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Xml.Linq;
using System.Text.RegularExpressions;

namespace AsusShop.Register
{
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-LCMNUM6\SQLEXPRESS;Initial Catalog=asus;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }


        protected void register1_Click(object sender, EventArgs e)
        {

            string path;
            if (FileUpload1.HasFile)
                FileUpload1.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath + "image/" + FileUpload1.FileName);
            path = FileUpload1.FileName;

            con.Open();
            string emailvalue = Emailaddress.Text;
            string query_mail = "select * from Register where Emailaddress=@emailcheck";
            SqlCommand cmd1 = new SqlCommand(query_mail, con);
            cmd1.Parameters.AddWithValue("@emailcheck", emailvalue);
            SqlDataReader reader = cmd1.ExecuteReader();
            if (reader.HasRows)
            {
                reader.Read();
                Label1.Text = "You Are Already Register please Login!";

            }
            else
            {
                reader.Close();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into Register values('"+path+"','" + name.Text + "','" + phoneno.Text + "','" + Emailaddress.Text + "','" + password.Text + "')";
                cmd.ExecuteNonQuery();
                con.Close();
                Label1.Text = "Regiter Successfully";
                name.Text = "";
                phoneno.Text = "";
                Emailaddress.Text = "";
                password.Text = "";
                Response.Redirect("../login/Login.aspx");

            }
         
        }
    
    }
}