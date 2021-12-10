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
    
    public partial class View_Contact : System.Web.UI.Page
    {
        String cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Admin_Username"] == null)
            {
                
                Response.Redirect("Admin_Login.aspx");
                
            }

            if (!IsPostBack)
            {
                GridViewAll();
            }

        }
        void GridViewAll()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from Contact_tbl";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();


        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow gd = GridView1.Rows[e.RowIndex];
            Label item = (Label)gd.FindControl("LabelId");
            string id = item.Text;
            SqlConnection con = new SqlConnection(cs);
            string query = "delete from Contact_tbl where id = @id";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@id", id);
            con.Open();

            int a = cmd.ExecuteNonQuery();
            if(a>0)
            {
                Response.Write("<script>alert(\"deleted successfull\")</script>");
                GridViewAll();
            }
            con.Close();

        }
    }
}