using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace AsusShop
{
    public partial class datainsert : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-1\SQLEXPRESS;Initial Catalog=AsusShop;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("datafatch.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string path;
            if (FileUpload1.HasFile)
                FileUpload1.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath + "image/" + FileUpload1.FileName);
            path = FileUpload1.FileName;
            SqlCommand cmd = new SqlCommand(" insert into product values('" + path + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void check_Click(object sender, EventArgs e)
        {
            Response.Redirect("datafatch.aspx");
        }

    
       
    }
}