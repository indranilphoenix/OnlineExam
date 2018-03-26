using DatabaseLibrary;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home_HomeChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }




    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Connection con = new Connection();
        con.ChangePassword(txtPassNew.Text, Session["email"].ToString());
        Session.Clear();

    }
}