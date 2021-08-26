using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace WebApplication1
{
    public partial class UserGallary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public void selectpro()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("DisplyUserBooking", con);
                cmd.Parameters.Add("@Customer_ID", Label1.Text);
                cmd.CommandType = CommandType.StoredProcedure; 
                con.Open();

                cmd.ExecuteNonQuery();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                 //Label1.Text    = (dr["Customer_ID"].ToString());
                 Label2.Text = (dr["PRODUCT_NAME"].ToString());
                 Label3.Text = (dr["Cargo_Cantainer"].ToString());
                 Label4.Text = (dr["Company"].ToString());

                 Label5.Text = (dr["Name"].ToString());
                    Label6.Text = (dr["Company_name"].ToString());
                    Label7.Text = (dr["PikUp_Date"].ToString());
                    Label8.Text = (dr["Weights"].ToString());

                    if (dr.HasRows)
                    {
                        //Image1.ImageUrl = (dr["image"]).ToString();
                        while (dr.Read())
                        {

                            byte[] Imagedata = (byte[])dr["image"];
                            string img = Convert.ToBase64String(Imagedata, 0, Imagedata.Length);
                            Image1.ImageUrl = "data:image/jpg;base64," + img;
                            

                        }


                    }
                    Repeater1.DataBind();



                }
                con.Close();



            }
        }
        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
}
}