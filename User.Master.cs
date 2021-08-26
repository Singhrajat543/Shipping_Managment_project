using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace WebApplication1
{
    public partial class User : System.Web.UI.MasterPage
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
    }
}