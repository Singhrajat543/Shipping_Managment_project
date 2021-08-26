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
using System.Drawing;

namespace WebApplication1
{
    public partial class ShippingServies : System.Web.UI.Page
    {
        double Value1;


        protected void Page_Load(object sender, EventArgs e)
        {
            Calendar1.Visible = false;
            CustomerLbl.Text = Session["Email"].ToString();
            //txtDetails.Text = Session["PRODUCT_DETAILS"].ToString();

            String CS = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {

                SqlCommand cmd = new SqlCommand("getdataRetriveInTextbox", con);
                cmd.CommandType = CommandType.StoredProcedure;

                con.Open();

                cmd.Parameters.AddWithValue("@Email", CustomerLbl.Text);
                cmd.ExecuteNonQuery();
                SqlDataReader dr = cmd.ExecuteReader();


                if (dr.Read())
                {
                    Label4.Text = (dr["Name"].ToString());
                    Label3.Text = (dr["Company_name"].ToString());
                }
                con.Close();




            }

        }


        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox2.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible)
            {
                Calendar1.Visible = false;
            }
            else
            {
                Calendar1.Visible = true;
            }
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {

        }

        public void Calculation()
        {
            double Value2 = Convert.ToDouble(WeightTextBox.Text);
            switch (DropDownList1.SelectedValue)
            {
                case "Flat Rack Containers":

                    Value1 = Value2 * 1000;
                    break;
                case "Open TopContainers":
                    Value1 = Value2 * 1735;
                    break;

                case "Tunnel Container":
                    Value1 = Value2 * 1800;
                    break;
                case "Side Open Storage Container":
                    Value1 = Value2 * 1950;
                    break;
                case "Refrigerated ISO Containers":
                    Value1 = Value2 * 2000;
                    break;
                case "Insulated or Thermal Containers":
                    Value1 = Value2 * 2500;
                    break;



            }
            Label1.Text = Convert.ToDouble(Value1).ToString();
           //Label1.Text = (Value1).ToString();


        }




        protected void Retrive_Click(object sender, EventArgs e)
        {
           
            
            String CS = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
               
                SqlCommand cmd = new SqlCommand("RetriveImage", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();

                cmd.Parameters.AddWithValue("@Customer_ID", CustomerLbl.Text);
                cmd.Parameters.AddWithValue("@PRODUCT_DETAILS", txtDetails.Text);

                




                cmd.ExecuteNonQuery();
                SqlDataReader dr = cmd.ExecuteReader();


                if (dr.HasRows)
                {
                    //Image1.ImageUrl = (dr["images"]).ToString();
                    while (dr.Read())
                    {

                        byte[] Imagedata = (byte[])dr["images"];
                        string img = Convert.ToBase64String(Imagedata, 0, Imagedata.Length);
                        Image1.ImageUrl = "data:image/jpg;base64," + img;


                    }


                }

                con.Close();

            }
           

                   

        }

        protected void Upload_Click(object sender, EventArgs e)
        {
            Calculation();

            //string fileName = string.Empty;
            //string filePath = string.Empty;
            //string getPath = string.Empty;
            //string pathToStore = string.Empty;
            String CS = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                
                //string filePath ;
                //string getPath ;
                //string pathToStore ;


                SqlCommand cmd = new SqlCommand("Insert_CostomerProduct", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Customer_ID", CustomerLbl.Text);
                cmd.Parameters.AddWithValue("@PRODUCT_NAME", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@ServicesType", Session["ServiceTypeValue"]);
                cmd.Parameters.AddWithValue("@Cargo_Cantainer", DropDownList1.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@PRODUCT_DETAILS", txtDetails.Text);
                cmd.Parameters.AddWithValue("@Company", Label3.Text);
                cmd.Parameters.AddWithValue("@Name", Label4.Text);
                cmd.Parameters.AddWithValue("@Weights", WeightTextBox.Text);
                cmd.Parameters.AddWithValue("@PikUp_Date", TextBox2.Text = Calendar1.SelectedDate.ToShortDateString());
                cmd.Parameters.AddWithValue("@Freight_Charges", Label1.Text);
                try
                {


              string      fileName = Fileuploadgallery.PostedFile.FileName;

                    int fileLength = Fileuploadgallery.PostedFile.ContentLength;

                        //fileName = Fileuploadgallery.FileName;

                        //filePath = Server.MapPath("~/Admin/Images/" + System.Guid.NewGuid() + fileName);
                        //Fileuploadgallery.SaveAs(filePath);

                        //int getPos = filePath.LastIndexOf("\\");
                        //int len = filePath.Length;
                        //getPath = filePath.Substring(getPos, len - getPos);
                        //pathToStore = getPath.Remove(0, 1);



                    byte[] imageBytes = new byte[fileLength];

                    Fileuploadgallery.PostedFile.InputStream.Read(imageBytes, 0, fileLength);
                    cmd.Parameters.AddWithValue("@images", imageBytes);
                        //cmd.Parameters.AddWithValue("@images", filePath);
                        SqlDataAdapter da = new SqlDataAdapter("Insert_CostomerProduct", CS);

                    


                    
                    con.Open();

                    cmd.ExecuteNonQuery();
                    lblStatus.Text = "Record saved successfully";
                    lblStatus.ForeColor = Color.Green;
                }
                //catch (Exception)
                //{
                //    lblStatus.Text = "Book Record could not be saved";
                //    lblStatus.ForeColor = Color.Red;
                //}
                finally
                {
                    con.Close();
                    //cmd.Dispose();
                    //fileName = null;
                    //filePath = null;
                    //getPath = null;
                    //pathToStore = null;
                } 


            }
        }
    }
}
