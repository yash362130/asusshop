using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Collections.Specialized.BitVector32;

namespace AsusShop
{
    public partial class index : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["login_id"] == null)
            {
                loginicon.Visible = true;
                    logout.Visible = false;
                register.Visible = true;
            }
            else
            {
                register.Visible = false;
                loginicon.Visible = false;
                logout.Visible = true;
            }

            
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            if (Session["login_id"] != null)
            {
                Session.Abandon();
                loginicon.Visible = true;
                logout.Visible=false;
                Response.Redirect("~/index.aspx");
            }
        }
    } 
}