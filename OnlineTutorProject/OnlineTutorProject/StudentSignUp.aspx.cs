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
    public partial class StudentSignUp : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void resetall()
        {
            FirstNameTextBox.Text = "";
            LastNameTextBox.Text = "";
            FatherNameTextBox.Text = "";
            AgeTextBox.Text = "";
            GenderDropDownList.ClearSelection();
            ClassTextBox.Text = "";
            AddressTextBox.Text = "";
            StateTextBox1.Text = "";
            CountryTextBox.Text = "";
            ContactTextBox.Text = "";
            GoingToDropDownList.ClearSelection();
            TutionPreferenceDropDownList.ClearSelection();
            TutionTypeDropDownList.ClearSelection();
            SubjectTextBox.Text = "";
            UserNameTextBox.Text = "";
            PasswordTextBox.Text = "";
            ReEnterPasswordTextBox.Text = "";
        }

        protected void StudentSignUpButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);

            try
            {
                string query = "insert into Student_Signup_tbl values(@FirstName,@LastName,@Fname,@Age,@Gender,@Standard,@Address,@State,@Country,@ContactNumber,@Subject,@GoingTo,@TutionType,@TutionPrefered,@UserName,@Password)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@FirstName", FirstNameTextBox.Text);
                cmd.Parameters.AddWithValue("@LastName", LastNameTextBox.Text);
                cmd.Parameters.AddWithValue("@Fname", FatherNameTextBox.Text);
                cmd.Parameters.AddWithValue("@Age", Convert.ToInt32(AgeTextBox.Text));
                cmd.Parameters.AddWithValue("@Gender", GenderDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@Standard", ClassTextBox.Text);
                cmd.Parameters.AddWithValue("@Address", AddressTextBox.Text);
                cmd.Parameters.AddWithValue("@State", StateTextBox1.Text);
                cmd.Parameters.AddWithValue("@Country", CountryTextBox.Text);
                cmd.Parameters.AddWithValue("@ContactNumber", ContactTextBox.Text);
                cmd.Parameters.AddWithValue("@Subject", SubjectTextBox.Text);
                cmd.Parameters.AddWithValue("@GoingTo", GoingToDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@TutionType", TutionTypeDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@TutionPrefered", TutionPreferenceDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@UserName", UserNameTextBox.Text);
                cmd.Parameters.AddWithValue("@Password", PasswordTextBox.Text);

                con.Open();
                int a = cmd.ExecuteNonQuery();
                if (a > 0)
                {
                    //Response.Write("<script>alert(\"ok successfull\")</script>");
                    ScriptManager.RegisterStartupScript(this, GetType(), "pop", "Swal.fire('success','Signup Successfull','success')", true);

                    resetall();
                }
                else
                {

                    ScriptManager.RegisterStartupScript(this, GetType(), "pop", "Swal.fire('Error','Signup Failed','Error')", true);
                }

            }
            catch(SqlException ex)
            {
                if(ex.Message.Contains("UNIQUE KEY constraint"))
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "pop", "Swal.fire('OOPs!!!','UserName  " +UserNameTextBox.Text + "  is already present','error')", true);

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