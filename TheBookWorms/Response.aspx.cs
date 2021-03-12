using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Helpers;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheBookWorms
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetDataFromSession();
            SendEmail();
        }

        private void GetDataFromSession()
        {
            // Get the User date from the session state
            lblFirstName.Text = Session["firstName"].ToString();
            lblLastName.Text = Session["lastName"].ToString();
            lblEmail.Text = Session["email"].ToString();
        }

        private void SendEmail()
        {
            // Initialize variables
            var firstName = Session["firstName"].ToString();
            var lastName = Session["lastName"].ToString();
            var email = Session["email"].ToString();

            // Initialize WebMail helper
            WebMail.SmtpServer = "smtp.gmail.com";
            WebMail.SmtpPort = 587;
            WebMail.EnableSsl = true;
            WebMail.UserName = "thebookworms12345";
            WebMail.Password = "Testema!l1";
            WebMail.From = "thebookworms12345@gmail.com";

            // Send email
            WebMail.Send(email, "We Got Your Message", "Thank you " + firstName + " " + lastName + " we have recieved your message and will get back to you soon.");
        }
    }
}