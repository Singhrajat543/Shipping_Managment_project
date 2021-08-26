using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Net;



namespace WebApplication1
{

    public partial class forgetpasword : System.Web.UI.Page

    {

        protected void Page_Load(object sender, EventArgs e)
        {
            
           
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //String pass = "qwertyuioplkjhgfdsazxcvbnm123456789";
            //Random r = new Random();
            //Char[] mypass = new char[10];
            //for (int i = 0; i < 10; i++) {
            //    mypass[i] = pass[(int)(35 * r.NextDouble())];


            //}

            //Label1.Text = "your Number is" + new String(mypass) + "</b>";

            forrgetpswrd();

        }

        public void forrgetpswrd()
        {

            String pass = "qwertyuioplkjhgfdsazxcvbnm123456789";
            Random r = new Random();
            Char[] mypass = new char[10];
            for (int i = 0; i < 10; i++)
            {
                mypass[i] = pass[(int)(35 * r.NextDouble())];


            }


            String CS = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {

                SqlCommand cmd = new SqlCommand("UpdatePasword", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();

                cmd.Parameters.AddWithValue("@Passwords", new String(mypass));
                cmd.Parameters.AddWithValue("@Email", TextMail.Text);
                cmd.ExecuteNonQuery();
                con.Close();




            }
            String CT = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CT))
            {

                SqlCommand cmd = new SqlCommand("EmailSendName", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();

                cmd.Parameters.AddWithValue("@Email", TextMail.Text);
                String Name = (String)cmd.ExecuteScalar();
                con.Close();

                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential("osagaraj@gmail.com", "zxcvbnm123654");
                smtp.EnableSsl = true;
                MailMessage msg = new MailMessage();
                msg.Subject = "Hello " + Name + " Your ShippingChain We got Your Password";
                msg.Body = "Hi, Your New Password For ShippingChain System IS  " + new String(mypass) + " Use This password to log in. Thanks";
                string toaddress = TextMail.Text;
                msg.To.Add(toaddress);
                string fromaddress = "ShippingChain <osagaraj@gmail.com>";
                msg.From = new MailAddress(fromaddress);
                try
                {
                    smtp.Send(msg);
                    //Label3.Text = "Your Email Has Been Registered with Us";
                    //TextBox1.Text = "";
                    //TextBox2.Text = "";

                }
                catch
                {
                    throw;
                }


            }
        }

        //public void Emailsend()
        //{

        //    String CS = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        //    using (SqlConnection con = new SqlConnection(CS))
        //    {

        //        SqlCommand cmd = new SqlCommand("EmailSendName", con);
        //        cmd.CommandType = CommandType.StoredProcedure;
        //        con.Open();

        //        cmd.Parameters.AddWithValue("@Email", TextMail.Text);
        //        String Name = (String)cmd.ExecuteScalar();
        //        con.Close();

        //        SmtpClient smtp = new SmtpClient();
        //        smtp.Host = "smtp.gmail.com";
        //        smtp.Port = 587;
        //        smtp.Credentials = new System.Net.NetworkCredential("osagaraj@gmail.com", "zxcvbnm123654");
        //        smtp.EnableSsl = true;
        //        MailMessage msg = new MailMessage();
        //        msg.Subject = "Hello " + Name + "  Thanks for Register at Hariti Study Hub";
        //        msg.Body = "Hi, Thanks For" + new String(mypass) + "Your Registration at Hariti Study Hub, We will Provide You The Latest Update. Thanks";
        //        string toaddress = TextBox2.Text;
        //        msg.To.Add(toaddress);
        //        string fromaddress = "Hariti Study Hub <HaritiSyal@gmail.com>";
        //        msg.From = new MailAddress(fromaddress);
        //        try
        //        {
        //            smtp.Send(msg);
        //            Label3.Text = "Your Email Has Been Registered with Us";
        //            TextBox1.Text = "";
        //            TextBox2.Text = "";

        //        }
        //        catch
        //        {
        //            throw;
        //        }
        //    }
            
        
        //}
        
}
}