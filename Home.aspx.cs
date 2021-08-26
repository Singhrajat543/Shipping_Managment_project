using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
              if (Session["Email"] != null)
            {
                lbllog.Text = "Welcome " + Session["Email"]; 
                lbllog.Visible = true;
                LinkButton1.Text = "LOGOUT";
                //DataSet ds = ProductClass.selectcart(Session["Email"].ToString());
                //if (ds.Tables[0].Rows.Count > 0)
                //{
                //    int i = ds.Tables[0].Rows.Count;
                //    lblcartinc.Text = i.ToString();
                //}
                //else
                //{
                //    lblcartinc.Text = "0";
                //}
            }
            else
            {
                lbllog.Visible = false;
                LinkButton1.Text = "LOGIN";
            }

        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (LinkButton1.Text == "LOGIN")
            {
                Response.Redirect("~/UserAccount/Userlog.aspx");
            }
            else
            {
                Session.Abandon();
                Response.Redirect("~/Home.aspx");
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {


            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("ServiceTableInsert", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                cmd.Parameters.AddWithValue("@ServiceType", DropDownList1.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Pickup_City", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Drop_City", TextBox2.Text);
                cmd.Parameters.AddWithValue("@Container_Type", DropDownList2.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@CUstomer_ID", lbllog.Text);

                


                cmd.ExecuteNonQuery();

                con.Close();

                if (DropDownList1.SelectedIndex == 1)
                {
                    DropDownList1.SelectedItem.Text = Session["ServiceTypeValue"].ToString();

                    Response.Redirect("ShippingServies.aspx");
                }
                else if (DropDownList1.SelectedIndex == 2)
                {
                    DropDownList1.SelectedItem.Text = Session["ServiceTypeValue"].ToString();

                    Response.Redirect("AirServises.aspx");
                }
                else
                {

                    Response.Redirect("ShippingServies.aspx");


                }

            }
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["ServiceTypeValue"] = DropDownList1.SelectedValue;
        }
}
    }
