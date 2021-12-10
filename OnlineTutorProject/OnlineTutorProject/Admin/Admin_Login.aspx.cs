using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace OnlineTutorProject.Admin
{
    public partial class Admin_Login : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Loginbutton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from AdminLogin_tbl where Username = @username and Password = @password ";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@username", Usernametxt.Text);
            cmd.Parameters.AddWithValue("@password", Passwordtxt.Text);
            con.Open();
            SqlDataReader sd = cmd.ExecuteReader();
            if (sd.HasRows == true)
            {
                //Response.Write("<script>alert('Login Successful');</script>");

                Session["Admin_Username"] = Usernametxt.Text;
                Response.Redirect("AdminHomePage.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "pop", "Swal.fire('OOPS!','Something is wrong man!!','Error')", true);
            }

            con.Close();

        }
    }
}