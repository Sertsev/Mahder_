﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.Http;

namespace Mahder_
{
    public partial class _base : System.Web.UI.MasterPage
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
        [HttpPost]
         protected void add_Click(object sender, EventArgs e)
        {
            aboutLable.Text = Request.Form["about"];
            SqlCommand cmd = bankcon.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Banks(businessName, ownerFullName, businesstype, about, address, woreda, region, city, phonNumber1, phonNumber2, twitterUname, facebookUname, telegramUname, instagramUname, linkedinUname, website)" +
                "values('" + businessName.Text + "', '" + ownerFullName.Text + "', '" + businessType.Text + "', '" + aboutLable.Text + "', '" + address.Text + "', '" + woreda.Text + "', '"+ region.Text +"', '" + city.Text + "', '" + phoneNumber1.Text + "', '" + phoneNumber2.Text + "', '" + twitterUname.Text + "', '" + facebookUname.Text + "', '" + telegramUname.Text + "', '" + instagramUname.Text + "', '" + linkedinUname.Text + "', '" + website.Text + "')";
            cmd.ExecuteNonQuery();
            cmd.CommandText = "select top 1 * from Banks order by id desc";
            int busId = (int)cmd.ExecuteScalar();
            //cmd.ExecuteNonQuery();

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
            instagramUname.Text = "";
            telegramUname.Text = "";
            linkedinUname.Text = "";
            website.Text = "";

            // map the path folder to save the profile image into
            string targetPath = Server.MapPath("~/profileImg/" + busId.ToString() + "/");

            bool folder_exists = Directory.Exists(targetPath);
            if (!folder_exists)
                Directory.CreateDirectory(targetPath);

            profilePicture.SaveAs(targetPath + Path.GetFileName(profilePicture.FileName));
            if (Directory.Exists(targetPath))
            {
                Console.WriteLine("Successefully uploaded!!");
            }
            
            disp_banks();
        }

        public void disp_banks()
        {
            SqlCommand cmd = bankcon.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select id, businessName, businessType, address, city from Banks";
            cmd.ExecuteNonQuery();
            DataTable bndt = new DataTable();
            SqlDataAdapter bnda = new SqlDataAdapter(cmd);
            bnda.Fill(bndt);
            BanksList.DataSource = bndt;
            BanksList.DataBind();
        }
    }
}