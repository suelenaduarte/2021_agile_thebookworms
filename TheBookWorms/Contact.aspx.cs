using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheBookWorms
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {

                AddDataToSession();
                Response.Redirect("Response.aspx");

            }


        }

        private void AddDataToSession()
        {
            Session.Add("firstName", txtFirstName.Text);
            Session.Add("lastName", txtLastName.Text);
            Session.Add("email", txtEmail.Text);
        }
    }
}