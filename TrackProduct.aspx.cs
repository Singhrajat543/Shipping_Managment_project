using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace WebApplication1
{
    public partial class TrackProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Label2.ForeColor = Color.Red;

        }


        public void forrgetpswrd()
        {

            string[] pass = { "Port", "NearIndianOcen", "Pacific Ocean ", " Arrivel_Port ", "heavy rain Near baramuda tringale ", "Mumbai","Colabo", };
            Random r = new Random();
            Char[] mypass = new char[10];


          int loaction   = r.Next(pass.Length);

          this.Label2.Text = pass[loaction];

          Label1.Text = DateTime.Now.ToLongTimeString();
          Label1.ForeColor = Color.Green;
          String CS = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
          using (SqlConnection con = new SqlConnection(CS))
          {

              SqlCommand cmd = new SqlCommand("UpdateTracking", con); 
              cmd.CommandType = CommandType.StoredProcedure;
              con.Open();
              cmd.Parameters.AddWithValue("@Email", TextBox1.Text);

              cmd.Parameters.AddWithValue("@Current_Track", Label2.Text);
              cmd.Parameters.AddWithValue("@Current_Tracking_Tome", Label1.Text);
              cmd.ExecuteNonQuery();
              con.Close();




          }
                                  



            
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            forrgetpswrd();

        }
}
}