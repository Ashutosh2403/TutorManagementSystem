using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace OnlineTutorProject.Tutor
{
    public partial class View_Student : System.Web.UI.Page
    {
        String cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Tutor_Username"] == null)
            {
                Response.Redirect("~/Tutor_Login.aspx");
            }
            if (!IsPostBack)
            {
                ViewReapeter();
            }

        }

        void ViewReapeter()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from Student_Signup_tbl";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();


        }
    }
}