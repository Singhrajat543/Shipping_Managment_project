using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;


namespace DataAccessLayerd
{
    public class Class1
    {

        public string PRODUCT_DETAILS { get; set; }

        public string Customer_ID { get; set; }

        public static DataSet load()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("sp_GetPro", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
        }
       

        public static DataSet selectpro(string PRODUCT_DETAILS)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("sp_Productdetails", con);
                cmd.Parameters.Add("@PRODUCT_DETAILS", PRODUCT_DETAILS);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet prodes = new DataSet();
                da.Fill(prodes);
                return prodes;
            }
        }

        public static DataSet selectcart(string Customer_ID)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("select * from warehouse where Customer_ID='" + Customer_ID + "'", con);
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet prodes = new DataSet();
                da.Fill(prodes);
                return prodes;
            }
        }

       

    }

}
