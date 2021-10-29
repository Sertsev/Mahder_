using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Mahder_
{
    public partial class index : System.Web.UI.Page
    {
        SqlConnection bankcon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (bankcon.State == ConnectionState.Open)
            {
                bankcon.Close();
            }
            bankcon.Open();

            disp_banks();
        }

        protected void add_Click(object sender, EventArgs e)
        {
            aboutLable.Text = Request.Form["about"];
            SqlCommand cmd = bankcon.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Banks(businessName, ownerFullName, businesstype, about, address, woreda, region, city, phonNumber1, phonNumber2, twitterUname, facebookUname, website)" +
                "values('" + businessName.Text + "', '" + ownerFullName.Text + "', '" + businessType.Text + "', '" + aboutLable.Text + "', '" + address.Text + "', '" + woreda.Text + "', '"+ region.Text +"', '" + city.Text + "', '" + phoneNumber1.Text + "', '" + phoneNumber2.Text + "', '" + twitterUname.Text + "', '" + facebookUname.Text + "', '" + website.Text + "')";
            cmd.ExecuteNonQuery();

            businessName.Text = "";
            ownerFullName.Text = "";
            businessType.Text = "";
            aboutLable.Text = "";
            address.Text = "";
            woreda.Text = "";
            city.Text = "";
            phoneNumber1.Text = "";
            phoneNumber2.Text = "";
            twitterUname.Text = "";
            facebookUname.Text = "";
            website.Text = "";

            disp_banks();
        }

        public void disp_banks()
        {
            SqlCommand cmd = bankcon.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Banks";
            cmd.ExecuteNonQuery();
            DataTable bndt = new DataTable();
            SqlDataAdapter bnda = new SqlDataAdapter(cmd);
            bnda.Fill(bndt);
            BanksList.DataSource = bndt;
            BanksList.DataBind();
        }
    }
}