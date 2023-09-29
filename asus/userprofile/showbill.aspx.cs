using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AsusShop.user
{
    public partial class showorder : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-LCMNUM6\SQLEXPRESS;Initial Catalog=asus;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            string email = Session["loginemail"].ToString();
            SqlDataAdapter da = new SqlDataAdapter("SELECT name,emailaddress,productname,productprice,pricetotal,dateandtime,paymentmethod FROM productbill WHERE Emailaddress='" + email + "' ", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }
    }
}