using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AsusShop
{
    public partial class datafatch : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-1\SQLEXPRESS;Initial Catalog=AsusShop;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            product();
        }
      
        private void product()
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from productleptopdy", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
    }
}