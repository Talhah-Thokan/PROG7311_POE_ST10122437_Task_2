using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROG7311_POE_ST10122437_Task_2
{
    public partial class FarmCentralSystemsRegisterUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=FarmCentralSystems;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework"); // making connection   
           // SqlDataAdapter sda = new SqlDataAdapter("SELECT COUNT(*) FROM Users WHERE Username='" + UsernameText.Text + "' AND Password='" + PasswordText.Text + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter("INSERT INTO Users VALUES ('"+RegisterUsernameText.Text+"','"+RegisterPasswordText.Text+"','"+DropDownList1.SelectedValue.ToString()+"')", con);
            /* in above line the program is selecting the whole data from table and the matching it with the user name and password provided by user. */
            DataTable dt = new DataTable(); //this is creating a virtual table  
            sda.Fill(dt);
            
            Response.Write(@"<script language='javascript'>alert('User has been registered!')</script>");
            /* I have made a new page called dashboard page. If the user is successfully registered then the form will be moved to the next form */
            Response.Redirect("~/FarmCentralSystemsDashBoard.aspx");
        }
    }
}