using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace datareader
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-LCMNUM6\SQLEXPRESS;Initial Catalog=asus;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["login_id"] == null)
            {
                Response.Redirect("~/login/Login.aspx");
            }

            string emialud = Session["regiemail"].ToString();
            SqlDataAdapter da = new SqlDataAdapter("select * from orderlist where Emailaddress='" + emialud + "'", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

            string _id = Session["login_id"].ToString();
            SqlDataAdapter daa = new SqlDataAdapter("select image from Register where id='" + _id + "'", con);
            DataSet dss = new DataSet();
            daa.Fill(dss);
            DataList1.DataSource = dss;
            DataList1.DataBind();

            con.Open();
            string id = Session["login_id"].ToString();
            string selectquery = "select name,Emailaddress,phoneno from register where id=@id";
            SqlCommand cmd = new SqlCommand(selectquery, con);
            cmd.Parameters.AddWithValue("@id", id);
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                reader.Read();
                txtName.Text = reader["Name"].ToString();
                txtEmail.Text = reader["Emailaddress"].ToString();
                txtphone.Text = reader["phoneno"].ToString();
            }
            con.Close();
        }
        protected void btnEdit_Click(object sender, EventArgs e)
        {
            txtEmail.ReadOnly = false;
            txtName.ReadOnly = false;
            txtphone.ReadOnly = false;
            btnEdit.Visible = false;
            fileUpload.Visible = true;
            Response.Redirect("/userprofile/upadateusername.aspx");
        }

        

        protected void emialedit_Click(object sender, EventArgs e)
        {
            Response.Redirect("updateemailaddress.aspx");
        }

        protected void showbill_Click(object sender, EventArgs e)
        {
            Response.Redirect("showbill.aspx");

        }

    }
}



