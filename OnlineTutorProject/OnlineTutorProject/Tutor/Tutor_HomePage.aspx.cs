using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineTutorProject.Tutor
{
    public partial class Tutor_HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Tutor_Username"]==null)
            {
                Response.Redirect("~/Tutor_Login.aspx");
            }

        }
    }
}