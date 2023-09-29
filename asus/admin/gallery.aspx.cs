using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Diagnostics;
using System.Reflection.Emit;

namespace AsusShop
{
    public partial class gallery : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-LCMNUM6\SQLEXPRESS;Initial Catalog=asus;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Visible= false;
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string path;
            if (FileUpload1.HasFile)
                FileUpload1.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath + "image/" + FileUpload1.FileName);
            path = FileUpload1.FileName;

            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into gallery values('" + path + "','" + name.Text + "')";
            cmd.ExecuteNonQuery();
            con.Close();
            name.Text = "";

            Label2.Visible=true;
            Label2.Text = "Gallery photo add successfully";
        }
    }
}