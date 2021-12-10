using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace OnlineTutorProject
{
    public partial class Student_Login : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Student_Loginbutton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from Student_Signup_tbl where UserName = @username and Password = @password ";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@username", Usernametxt.Text);
            cmd.Parameters.AddWithValue("@password", Passwordtxt.Text);
            con.Open();
            SqlDataReader sd = cmd.ExecuteReader();
            if (sd.HasRows == true)
            {
                //Response.Write("<script>alert('Login Successful');</script>");

                Session["Student_Username"] = Usernametxt.Text;
                Response.Redirect("Student/StudentHomePage.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "pop", "Swal.fire('OOPS!','UserName and Password is wrong!!','Error')", true);
            }

            con.Close();

        }
    }
}