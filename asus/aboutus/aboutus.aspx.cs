using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AsusShop.aboutus
{
    public partial class aboutmaster : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label1.Text = "About Us";
                Label2.Text = "Founders";
                Label3.Text = "Our Services";
            }
        }
    }
}