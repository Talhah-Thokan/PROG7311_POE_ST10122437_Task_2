using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROG7311_POE_ST10122437_Task_2
{
    public partial class FarmCentralSystemsProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }


        protected void AddProductButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/FarmCentralSystemsAddProduct.aspx");
        }
    }
}