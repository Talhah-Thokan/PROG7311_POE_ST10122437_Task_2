using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROG7311_POE_ST10122437_Task_2
{
    public partial class FarmCentralSystemsDashBoard : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            WelcomeLabel.Text = "<b><font color=Brown>" + "WELCOME:: " + "</font>" + "<b><font color=red>" + Session["UserName"] + "</font>";
        }
    }
}