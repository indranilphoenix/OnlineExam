using DatabaseLibrary;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "Welcome To Skil Test Page: ";
        Connection con = new Connection();
        string[] details = con.getUserDetails(Session["email"].ToString());
        lblName.Text = details[0];
    }
}
        
    