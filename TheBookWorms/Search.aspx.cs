using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheBookWorms
{
    public partial class Search : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string search = txtSearch.Text;

            // Hide empty search label message
            lbEmptySearch.Visible = false;

            // Show empty search label message when no results were found
            if (search.Equals(""))
            {

                lbEmptySearch.Visible = true;
 
            }

        }
    }
}