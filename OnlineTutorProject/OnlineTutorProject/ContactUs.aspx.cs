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
    public partial class ContactUs : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void resetall()
        {
            NameTextBox.Text = "";
            EmailTextBox.Text = "";
            DropDownList1.ClearSelection();
            MessageTextBox.Text = "";
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string sp = "spContact_Insert";
            SqlCommand cmd = new SqlCommand(sp, con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@name", NameTextBox.Text);
            cmd.Parameters.AddWithValue("@email", EmailTextBox.Text);
            cmd.Parameters.AddWithValue("@subject", DropDownList1.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@message", MessageTextBox.Text);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            if(a>0)
            {
                //Response.Write("<script>alert('form has been submitted')</script>");

                ScriptManager.RegisterStartupScript(this, GetType(), "pop", "successclick();", true);
                resetall();

            }
            else
            {
                //Response.Write("<script>alert('form has been not submitted')</script>");
                ScriptManager.RegisterStartupScript(this, GetType(), "pop", "Errorclick();", true);

            }
            con.Close();

        }
    }
}