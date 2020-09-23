using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Text.RegularExpressions;
using System.Windows;
using System.Web.UI.HtmlControls;

namespace KPWebsite
{
    public partial class ContactNewForm : System.Web.UI.Page
    {
        private  string messagevalue;       
        private  string namevalueString;
        private  string emailvalue;

        protected void Page_Load(object sender, EventArgs e)
        {
            //namevalue = new MailAddress(Request.Form["txtemailvalue"]);
        }

        public void sendemail()
        {           
            messagevalue = Request.Form["txtmessagevalue"].ToString();
            namevalueString = Request.Form["txtnamevalue"].ToString();
            emailvalue = Request.Form["txtemailvalue"].ToString();

            messagevalue = string.IsNullOrEmpty(messagevalue) ? "No Message" : messagevalue;
            namevalueString = string.IsNullOrEmpty(namevalueString) ? "No Name" : namevalueString;
            emailvalue = string.IsNullOrEmpty(emailvalue) ? "cvwebsite@julianharrall.com" : emailvalue;

           /*
            // Boolean emailValid = false;
            Boolean emailValid = Regex.IsMatch(emailvalue,
                @"^(?("")("".+?(?<!\\)""@)|(([0-9a-z]((\.(?!\.))|[-!#\$%&'\*\+/=\?\^`\{\}\|~\w])*)(?<=[0-9a-z])@))" +
                @"(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-z][-\w]*[0-9a-z]*\.)+[a-z0-9][\-a-z0-9]{0,22}[a-z0-9]))$",
                RegexOptions.IgnoreCase);

            if (emailValid == false)
            {
                Response.Redirect("MailError.aspx");

            }
            */
         

            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient();
            mail.To.Add("cvwebsite@julianharrall.com");
            mail.From = new MailAddress("cvwebsite@julianharrall.com");
            mail.Subject = "Subject";
            mail.IsBodyHtml = true;
            mail.Body = messagevalue;
            SmtpServer.Host = "websmtp.livemail.co.uk";
            //SmtpServer.Port = 25;
            //SmtpServer.EnableSsl = true;
            //SmtpServer.Credentials = new System.Net.NetworkCredential("cvwebsite@julianharrall.com", "Imb@f0lp0gmx01");
            //SmtpServer.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            try
            {
                SmtpServer.Send(mail);
                //Response.AddHeader("REFRESH", "5;URL=/Menu/Miscelaneous/Confirming.aspx");
                //Response.AddHeader("REFRESH", "5;URL=/Menu/Miscelaneous/Confirmation.aspx");
                //Response.AddHeader("REFRESH", "5;URL=/Menu/Miscelaneous/ContactNewForm.aspx");
                //Response.Redirect("~/Confirming.aspx?ReturnPath=" + Server.UrlEncode(Request.Url.AbsoluteUri));               
            }
            catch (Exception ex)
            {
                Response.Redirect("MailError.aspx");
            }
        }




        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            sendemail();
            //string queryString = "contact.aspx";
            //string newWin = "window.open('" + queryString + "');";
            //ClientScript.RegisterStartupScript(this.GetType(), "pop", newWin, true);

            //messagevalue = Request.Form["txtmessagevalue"].ToString();
            //namevalueString = Request.Form["txtnamevalue"].ToString();
            //emailvalue = Request.Form["txtemailvalue"].ToString();

            //messagevalue = string.IsNullOrEmpty(messagevalue) ? "No Message" : messagevalue;
            //namevalueString = string.IsNullOrEmpty(namevalueString) ? "No Name" : namevalueString;
            //emailvalue = string.IsNullOrEmpty(emailvalue) ? "julianharrall@Notifications.com" : emailvalue;


            //// Boolean emailValid = false;
            //Boolean emailValid = Regex.IsMatch(emailvalue,
            //    @"^(?("")("".+?(?<!\\)""@)|(([0-9a-z]((\.(?!\.))|[-!#\$%&'\*\+/=\?\^`\{\}\|~\w])*)(?<=[0-9a-z])@))" +
            //    @"(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-z][-\w]*[0-9a-z]*\.)+[a-z0-9][\-a-z0-9]{0,22}[a-z0-9]))$",
            //    RegexOptions.IgnoreCase);

            //if (emailValid == false)
            //{

            //    //myLabel.Text = "* Invalid Email";
            //    //myLabel.ForeColor = System.Drawing.Color.Red;
            //    //mylabel.Font.Size = new System.Web.UI.WebControls.FontUnit("13px");
            //    //System.Windows.Forms.MessageBox.Show("Your email address is not correct: " + emailvalue);
            //    //ClientScript.RegisterStartupScript(GetType(), "hwa", "alert('Hello World');", true);

            //    //ClientScript.RegisterStartupScript(GetType(), "hwa", "alert('Invalid Email');", true);
            //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Invalid Email')", true);
            //    Response.Redirect("ContactNewForm.aspx");
            //}
            //else
            //{
            //    MailMessage feedBack = FeedBackMethod();


            //    //myLabel.Text = "";
            //    //myLabel.ForeColor = System.Drawing.Color.White;

            //    feedBack.Body = "Sender Name: " + namevalueString + "<br><br>Sender Email: " + emailvalue + "<br><br>" + messagevalue;
            //    feedBack.IsBodyHtml = true;
            //    SmtpClient smtp = new SmtpClient();
            //    //smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address 213.171.216.50 websmtp.livemail.co.uk 25 websmtp.fasthosts.net 
            //    smtp.Host = "websmtp.livemail.co.uk";
            //    //smtp.Host = "websmtp.fasthosts.net";
            //    smtp.Port = 25;
            //    //smtp.EnableSsl = false;
            //    //smtp.EnableSsl = true;
            //    //smtp.Credentials = new System.Net.NetworkCredential("JMSharrall@gmail.com", "sp09g3b0b2p49ts");//cvwebsite@julianharrall.com
            //    //smtp.Credentials = new System.Net.NetworkCredential("cvwebsite@julianharrall.com", "Imb@f0lp0gmx01");
            //    //Or your Smtp Email ID and Password

            //    try
            //    {
            //        smtp.Send(feedBack);
            //    }
            //    catch (Exception ex)
            //    {
            //        Response.Redirect("MailError.aspx");
            //    }

            //    //Label1.Text = "Thanks for contacting us";

            //    Response.Redirect("Confirming.aspx");
            //    //Response.AddHeader("REFRESH", "5;URL=Confirmation.aspx");
            //    //<meta http-equiv="refresh" content="3;url=CVPrint.aspx" />

            //    //style="background-image: C:\Users\jules\Documents\Visual Studio 2010\Projects\C#\KPWebsite\KPWebsite\images\email.gif"

            //}
            Response.Redirect(@"~/Test.aspx");

            //Response.Redirect("Confirmation.aspx");
        }

        private MailMessage FeedBackMethod()
        {
            MailMessage feedBack = new MailMessage();
            //feedBack.To.Add("cvwebsite@julianharrall.com");
            try
            {
                feedBack.From = new MailAddress(emailvalue);
            }
            catch(Exception ex)
            {
                Response.Redirect("MailError.aspx");
            }

            feedBack.Body = messagevalue;
            feedBack.Subject = "CV Website";
            return feedBack;
        }
    }
}