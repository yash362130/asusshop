using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AsusShop
{
    public partial class billpage1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-LCMNUM6\SQLEXPRESS;Initial Catalog=asus;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime currentDate = DateTime.Today;
            dateandtime.Text = currentDate.ToString("yyyy-MM-dd");
            paymentmethhod.Text = Session["paymentmethod"].ToString();


            // product fatch on dislay
            string user_id = Session["login_id"].ToString();
            ttp.Text = Session["ttpfb"].ToString();
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select name,price from cart where user_p_id='" + user_id + "'", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            datalist.DataSource = ds;
            datalist.DataBind();
            con.Close();
            // product fatch on dislay end
            //username or emailid
            con.Open();
            string r_name = "select name,Emailaddress from orderlist where user_p_id=@id";
            SqlCommand cmd1 = new SqlCommand(r_name, con);
            cmd1.Parameters.AddWithValue("@id", user_id);
            SqlDataReader reader1 = cmd1.ExecuteReader();
            if (reader1.HasRows)
            {
                reader1.Read();
                username.Text = reader1["name"].ToString();
                email.Text = reader1["Emailaddress"].ToString();

            }

            con.Close();

            //username or emailid end
            // product fatch where user buy 
            con.Open();
            string userproductid = user_id;
            string query_price = "select name,price from cart where user_p_id=@uid";
            SqlCommand cmd = new SqlCommand(query_price, con);
            cmd.Parameters.AddWithValue("@uid", userproductid);
            SqlDataReader reader = cmd.ExecuteReader();



            Dictionary<string, int> dic = new Dictionary<string, int>();

            while (reader.Read())
            {

                string productName = reader["name"].ToString();
                int productPrice = Convert.ToInt32(reader["price"]);

                dic.Add(productName, productPrice);
            }
            reader.Close();
            foreach (KeyValuePair<string, int> ele in dic)
            {
                string paymnetmethod = paymentmethhod.Text;
                string date = dateandtime.Text;
                string total = ttp.Text;
                string name = username.Text;
                string emailid = email.Text;
                SqlCommand insertCommand = con.CreateCommand();
                string insertQuery = "INSERT INTO productbill (name,emailaddress,productname,productprice,pricetotal,dateandtime,paymentmethod,user_p_id) VALUES (@name,@email,@ProductName,@ProductPrice,@totalprice,@dateandtime,@payment,@userproductid)";
                insertCommand.CommandText = insertQuery;
                insertCommand.Parameters.Clear();
                insertCommand.Parameters.AddWithValue("@name", name);
                insertCommand.Parameters.AddWithValue("@email", emailid);
                insertCommand.Parameters.AddWithValue("@ProductName", ele.Key);
                insertCommand.Parameters.AddWithValue("@ProductPrice", ele.Value);
                insertCommand.Parameters.AddWithValue("@totalprice", total);
                insertCommand.Parameters.AddWithValue("@dateandtime", date);
                insertCommand.Parameters.AddWithValue("@payment", paymnetmethod);
                insertCommand.Parameters.AddWithValue("@userproductid", userproductid);
                insertCommand.ExecuteNonQuery();
            }


        }

        protected void continueshoping_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");

        }
    }
}