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
    public partial class FarmCentralSystemsLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=FarmCentralSystems;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework"); // making connection   
            SqlDataAdapter sda = new SqlDataAdapter("SELECT COUNT(*) FROM Users WHERE Username='" + UsernameText.Text + "' AND Password='" + PasswordText.Text + "'", con);
            /* in above line the program is selecting the whole data from table and the matching it with the user name and password provided by user. */
            DataTable dt = new DataTable(); //this is creating a virtual table  
            sda.Fill(dt);
            if (dt.Rows[0][0].ToString() == "1")
            {
                Session["UserName"] = UsernameText.Text;
                /* I have made a new page called home page. If the user is successfully authenticated then the form will be moved to the next form */
                Response.Redirect("~/FarmCentralSystemsDashBoard.aspx");
            }
            else
                
                Response.Write(@"<script language='javascript'>alert('Invalid Username or Password!')</script>");
        }
    }
    }
