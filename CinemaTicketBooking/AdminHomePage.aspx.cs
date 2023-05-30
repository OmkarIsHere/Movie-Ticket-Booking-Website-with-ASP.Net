using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CinemaTicketBooking
{
    public partial class AdminHomePage : System.Web.UI.Page
    { 
        SqlConnection conn=new SqlConnection(@"Data Source=LAPTOP-25OBO32L\SQLEXPRESS;Initial Catalog=CinemaTicketBooking;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            HyperLink h1 = (HyperLink)Master.FindControl("AddMovies");
            HyperLink h2 = (HyperLink)Master.FindControl("AddMovies2");
            HyperLink h3 = (HyperLink)Master.FindControl("Booking");
            Button signout = (Button)Master.FindControl("SignOut");
            Image Adminimg = (Image)Master.FindControl("AdminImage");
            Label adminName = (Label)Master.FindControl("AdminName");

            h1.Visible = false;
            h2.Visible = false;
            h3.Visible = false;
            signout.Visible = false;
            Adminimg.Visible = false;
            adminName.Visible = false;
        }

        protected void SubmitLogin_Click(object sender, EventArgs e)
        {
           String adminName="";
           String username = AdminUserName.Text;
           String password = AdminPasswordTextBox.Text; 
            try {
                conn.Open();
                String query = "Select * from EmployeeLogin where Username='"+username+"' and Password='"+password+"'";
                SqlCommand cmd=new SqlCommand(query, conn);
                SqlDataReader sdr=cmd.ExecuteReader();
                if (sdr.HasRows) {
                    while (sdr.Read()) {
                        adminName = sdr.GetString(1);
                    }
                    Application["AdminName"] = adminName;
                    Response.Redirect("AdminDashboard.aspx");
                }
            }
            catch(Exception ex) { 
            Response.Write("<Script>alert('"+ex.Message+"')</Script>"); 
            }

        }
    }
}