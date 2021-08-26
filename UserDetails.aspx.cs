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
using DataAccessLayerd;



namespace WebApplication1
{
    public partial class UserDetails : System.Web.UI.Page
    {
                    

        protected void Page_Load(object sender, EventArgs e)
        {
            Label6.Text = Session["Email"].ToString();

            selectpro();
            loadgallery();

            //super();


        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            if (Request.QueryString["PRODUCT_DETAILS"] != null)
            {
                DataSet prodes = new DataSet();
                string ProductID = (Request.QueryString["PRODUCT_DETAILS"]).ToString();
                prodes = DataAccessLayerd.Class1.selectpro(ProductID);
                if (prodes != null)
                {
                    if (prodes.Tables[0].Rows.Count > 0)
                    {
                        if (Session["Email"] != null && Session["Email"].ToString() != "")
                        {
                            string email = Session["Email"].ToString();
                        }
                        else
                        {
                            Response.Redirect("Login_form.aspx");
                        }
                        // lblName.Text = Session["LOGINNAME"].ToString();   
                        //string Customer_ID = prodes.Tables[0].Rows[0]["Customer_ID"].ToString();
                        string ServiceTypes = prodes.Tables[0].Rows[0]["ServiceTypes"].ToString();
                        string PRODUCT_NAME = prodes.Tables[0].Rows[0]["PRODUCT_NAME"].ToString();
                        string Conatinersize = prodes.Tables[0].Rows[0]["Cargo_Cantainer"].ToString();
                        string PRODUCT_DETAILS = prodes.Tables[0].Rows[0]["PRODUCT_DETAILS"].ToString();


                        string Company = prodes.Tables[0].Rows[0]["Company"].ToString();
                        string Name = prodes.Tables[0].Rows[0]["Name"].ToString();
                        string Weights = prodes.Tables[0].Rows[0]["Weights"].ToString();
                        string PikUp_Date = prodes.Tables[0].Rows[0]["PikUp_Date"].ToString();
                        string Freight_Charges = prodes.Tables[0].Rows[0]["Freight_Charges"].ToString();
                        //lblDetails.Text = prodes.Tables[0].Rows[0]["Details"].ToString();

                        //SqlCommand cmt = new SqlCommand("insert into warehouse values('" + Session["Email"] + "','" + PRODUCT_NAME + "'," + Conatinersize + "'," + img +"'," + Company + "'," + Name + "'," + Weights + "'," + PikUp_Date + "'," + Freight_Charges + "')", con);
                        //SqlCommand cmt = new SqlCommand("insert into cart values('" + Session["Email"] + "','" + PRODUCT_NAME + "','" + Conatinersize + "'," + img + ",'" + Company + "')", con);
                        
                           
                           

                               SqlCommand cmt = new SqlCommand("Insert_Warehouse", con);
                               cmt.CommandType = CommandType.StoredProcedure;
                               cmt.Parameters.Add("@Customer_ID", Session["Email"]);
                               cmt.Parameters.Add("@ServiceTypes", ServiceTypes);


                               cmt.Parameters.Add("@PRODUCT_NAME", PRODUCT_NAME);
                               cmt.Parameters.Add("@Cargo_Cantainer", Conatinersize);
                               cmt.Parameters.Add("@PRODUCT_DETAILS", PRODUCT_DETAILS);
                               cmt.Parameters.Add("@Company", Company);
                               cmt.Parameters.Add("@Name", Name);
                               cmt.Parameters.Add("@Weights", Weights);
                               cmt.Parameters.Add("@PikUp_Date", PikUp_Date);
                               cmt.Parameters.Add("@Freight_Charges", Freight_Charges);



                        try{

                               int i = cmt.ExecuteNonQuery();
                               if (i > 0)
                               {
                                   Response.Redirect("UserDetails.aspx");
                               }
                        }
                        catch (Exception)
                        {
                                   Page.ClientScript.RegisterStartupScript(this.GetType(), "callfunction", "alert('You Had Alrady Pushed Data  Product in WherHouse');", true);
                               }
                    }

                }
            }

        }

        public void loadgallery()
        {
            Repeater1.DataSource = DataAccessLayerd.Class1.load();
            Repeater1.DataBind();

        }



        protected void txtsearch_TextChanged(object sender, EventArgs e)
        {
            if (txtsearch.Text == string.Empty)
            {
                loadgallery();
            }
            else
            {
                string search = txtsearch.Text;
                string cs = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
                SqlConnection con = new SqlConnection(cs);
                SqlCommand cmd = new SqlCommand("select * from CostomerProduct where ((PRODUCT_NAME like '" + search + "%')or(PRODUCT_DETAILS like '" + search + "%')or(ServiceTypes like '" + search + "%')or(Company like '" + search + "%')or(Name like '" + search + "%')or(Weights like '" + search + "%')or(PikUp_Date like '" + search + "%')or(Cargo_Cantainer like '" + search + "%')or(Freight_Charges like '" + search + "%'))", con);
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                Repeater1.DataSource = ds;
                Repeater1.DataBind();
            }
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            string search = txtsearch.Text;
            string cs = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("select * from CostomerProduct where ((PRODUCT_NAME like '" + search + "%')or(PRODUCT_DETAILS like '" + search + "%')or(ServiceTypes like '" + search + "%')or(Company like '" + search + "%')or(Name like '" + search + "%')or(Weights like '" + search + "%')or(PikUp_Date like '" + search + "%')or(Cargo_Cantainer like '" + search + "%')or(Freight_Charges like '" + search + "%'))", con);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            Repeater1.DataSource = ds;
            Repeater1.DataBind();
        }
   


         public void selectpro()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("DisplyUserBooking", con);
                cmd.CommandType = CommandType.StoredProcedure;



                con.Open();
                cmd.Parameters.Add("@Customer_ID", Label6.Text);

                cmd.ExecuteNonQuery();
                SqlDataReader dr = cmd.ExecuteReader();

                //if (dr.HasRows)
                //{
                //    while (dr.Read())
                //    {

                //        byte[] Imagedata = (byte[])dr["images"];
                //        string img = Convert.ToBase64String(Imagedata, 0, Imagedata.Length);
                //        Image1.ImageUrl = "data:image/jpg;base64," + img;



                //    }


                //}




                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataSet ds = new DataSet();
                    //sda.Fill(ds);
                    con.Close();
                    // DataTable dt = new DataTable();
                    //sda.Fill(dt);
                    // con.Close();
                    // Repeater1.DataSource = ds.Tables[0];
                    // Repeater1.DataBind();

                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    Repeater1.DataSource = dt;
                    Repeater1.DataBind();
                }






            

}





        }





    }


       
    }

        


