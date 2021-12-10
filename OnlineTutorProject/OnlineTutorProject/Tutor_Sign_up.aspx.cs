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
    public partial class Tutor_Sign_up : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void resetall()
        {
            FirstNameTextBox.Text = "";
            LastNameTextBox.Text = "";
            
            AgeTextBox.Text = "";
            GenderDropDownList.ClearSelection();
            EmailTextBox.Text = "";
            MaritalStatusDropDown.ClearSelection();
            AddressTextBox.Text = "";
            StateTextBox.Text = "";
            CountryTextBox.Text = "";
            CityTextBox.Text = "";
            ContactTextBox.Text = "";

            QualificationDropDownList.ClearSelection();
            DegreeTextBox.Text = "";
            ExperienceDropDownList.ClearSelection();
            UserNameTextBox.Text = "";
            PasswordTextBox.Text = "";
            ReEnterPasswordTextBox.Text = "";

        }

        protected void TutorSignUpButton_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(cs);
            try
            {
                string query = "insert into Tutor_Sign_up values(@FName,@LName,@Gender,@Age,@Email,@MaritalStatus,@Country,@City,@Address,@Qualification,@Degree,@Experience,@ContactNo,@UserName,@Password,@State)";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@FName", FirstNameTextBox.Text);
                cmd.Parameters.AddWithValue("@LName", LastNameTextBox.Text);
                cmd.Parameters.AddWithValue("@Gender", GenderDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@Age", Convert.ToInt32(AgeTextBox.Text));
                cmd.Parameters.AddWithValue("@Email", EmailTextBox.Text);
                cmd.Parameters.AddWithValue("@MaritalStatus", MaritalStatusDropDown.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@Country", CountryTextBox.Text);
                cmd.Parameters.AddWithValue("@City", CityTextBox.Text);
                cmd.Parameters.AddWithValue("@State", StateTextBox.Text);
                cmd.Parameters.AddWithValue("@Address", AddressTextBox.Text);
                cmd.Parameters.AddWithValue("@Qualification", QualificationDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@Degree", DegreeTextBox.Text);
                cmd.Parameters.AddWithValue("@Experience", ExperienceDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@ContactNo", ContactTextBox.Text);
                cmd.Parameters.AddWithValue("@UserName", UserNameTextBox.Text);
                cmd.Parameters.AddWithValue("@Password", PasswordTextBox.Text);

                con.Open();
                int a = cmd.ExecuteNonQuery();
                if (a > 0)
                {
                   // Response.Write("<script>alert(\"ok successfull\")</script>");
                    ScriptManager.RegisterStartupScript(this, GetType(), "pop", "Swal.fire('success','Signup Successfull','success')", true);

                    resetall();
                }
                else
                {

                    ScriptManager.RegisterStartupScript(this, GetType(), "pop", "Swal.fire('Error','Signup Failed','error')", true);
                }


            }
            catch(SqlException ex)
            {
                if (ex.Message.Contains("UNIQUE KEY constraint"))
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "pop", "Swal.fire('OOPs!!!','UserName  " + UserNameTextBox.Text + "  is already present','error')", true);

                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "pop", "Swal.fire('Failed!!!','Signup Failed','error')", true);

                }

            }
            finally
            {
                con.Close();
            }

        }
    }
}