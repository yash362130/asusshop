using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace admin.admin.accessories
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-LCMNUM6\SQLEXPRESS;Initial Catalog=asus;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Visible = false;
            Label2.Visible = false;
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            Label3.Visible = true;
            Label2.Visible = true;
            Label2.Text = MainDropDown.SelectedItem.Value;

            string path;
            if (FileUpload1.HasFile)
                FileUpload1.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath + "image/" + FileUpload1.FileName);
            path = FileUpload1.FileName;
            
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into product values('" + path + "','" + name.Text + "','" + price.Text + "','" + description1.Text + "','" + description2.Text + "','" + description3.Text + "','" + Label2.Text + "')";
            cmd.ExecuteNonQuery();
            con.Close();
            Label3.Text = "product add successfully";
        }
    }
}