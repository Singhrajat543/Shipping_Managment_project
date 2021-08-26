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

    public partial class Login_form : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void Addcuslog()
        {
            String CS = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("Sp_InsertcusDetails", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                

                //SqlCommand cmd = new SqlCommand("insert into Registration" + "(Name,Email,Gender,MobileNo,Company_name,PIN_Code,Passwords)values(@Name,,@Email,@Gender,@MobileNo,@Company_name,@PIN_Code,@Passwords)", con);
                cmd.Parameters.AddWithValue("@Name",TextUserName.Text);
                cmd.Parameters.AddWithValue("@Email", TxtEmail.Text);
                cmd.Parameters.AddWithValue("@Gender", RadioButtonList1.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@MobileNo", Txtmobile.Text);
                cmd.Parameters.AddWithValue("@Company_name", TextBox7.Text);
                cmd.Parameters.AddWithValue("@PIN_Code", Txtpincode.Text);
                cmd.Parameters.AddWithValue("@Passwords", Txtpaswdreg.Text);
                cmd.ExecuteNonQuery();
                con.Close();
            }
           
        }

        public void Chklogin()
        {
            String CS = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("sp_chkUserLog", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                cmd.Parameters.AddWithValue("@CusEmailID", TextBox1.Text);
                //cmd.Parameters.AddWithValue("@CusPasswd", txtpassword.Text);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    string passwd = cmd.ExecuteScalar().ToString();
                    if (passwd == TextBox2.Text)
                    {
                        Inlog();
                        Response.Redirect("Home.aspx");
                    }
                    else
                    {
                        Response.Write("<span style= 'color:red'>your password is wrong<span>");
                    }

                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "callfunction", "alert('Invalid EmailId and Password')", true);
                }
                con.Close();
                clear();
            }
        }
            
        

        public static DataTable load()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("sp_CusPrologload", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
        }


        public void Inlog()
        {

            DataTable dt = Login_form.load();
            if (dt.Rows.Count > 0)
            {
                Session["Email"] = TextBox1.Text;
                //  Session["LOGINNAME"] = TextName.Text;
                //Session["SessLoggedAtDate"] = DateTime.Now.ToString("ddd, dd MMM yyyy");
                //Session["SessLoggedAtTime"] = DateTime.Now.ToString("hh:mm:ss tt");
                //Session["SessStartTime"] = DateTime.Now.ToString();
                //Session["CusUserId"] = retriveRegistrationID();
                //int regid = retriveRegistrationID();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "callfunction", "alert('Logged in Successfully');", true);

            }

        }

        public int retriveRegistrationID()
        {

            String CS1 = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS1))
            {
                SqlCommand cmd = new SqlCommand("sp_loadUserID", con);
                cmd.CommandType = CommandType.StoredProcedure;
                  cmd.Parameters.AddWithValue("@Email", TextBox2.Text);
                con.Open();
                DataSet ds = new DataSet();
                int id = Convert.ToInt32(cmd.ExecuteScalar());
                return id;
            }
        }
        public void clear()
        {
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
        }
        public void clear1()
        {
            TextUserName.Text = string.Empty;
            TxtEmail.Text = string.Empty;
            Txtmobile.Text = string.Empty;
            Txtpaswdreg.Text = string.Empty;
        }
        protected void Btnregsub_Click(object sender, EventArgs e)
        {

            if (checkemail() == true)
            {

                LblAlradyEmail.Text = "Your" + TxtEmail.Text + "Already Registered with Us pls try Another EmailId";
                TxtEmail.BackColor = System.Drawing.Color.PaleGreen;


            }
            else {
                Addcuslog();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "callfunction", "alert('Successfully REgistered')", true);
                clear1();
            }
            

           

        }
        protected void Linklogin_Click(object sender, EventArgs e)
        {
            Chklogin();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Chklogin();

        }
        private Boolean checkemail()
        {
            Boolean emailavailable = false;
            
            String mycon = "Data Source=RAJAT-PC\\SQLEXPRESS; Initial Catalog=Shiping_Project; Integrated Security=True";
            String myquery = "Select * from Registration where Email='" + TxtEmail.Text + "'";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                emailavailable = true;

            }
            con.Close();

            return emailavailable;
        }

        

      
    }
}