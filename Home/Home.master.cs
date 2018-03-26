using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home_Home : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string mail = Convert.ToString(Session["email"]);
            if (mail == string.Empty)
            {
                btnLogout.Visible = false;
                btnLogIn.Visible = true;
                btnRegistration.Visible = true;
            }
            else
            {
                btnLogIn.Visible = false;
                btnRegistration.Visible = false;
            }
        }
    }

    protected void btnLogIn_Click(object sender, EventArgs e)
    {
        Response.Redirect(@"../Admin/Admin_Login.aspx");
    }

    protected void btnRegistration_Click(object sender, EventArgs e)
    {
        Response.Redirect(@"../Home/Registration.aspx");
    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect(@"../Admin/Admin_Login.aspx");
    }

}
