using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Route : System.Web.UI.Page
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
        }
    }
