using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DatabaseLibrary;

public partial class registration_Form_Admin_Login : System.Web.UI.Page
{
    Indra_DBEntities1 db = new Indra_DBEntities1();

    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string studentaName = string.Empty;
        Connection data = new Connection();
        var resultAdmin = (from test in db.Admin_Login where test.Email == txtEmail.Text && test.Password == txtPwd.Text select test).FirstOrDefault();
        if (resultAdmin == null)
        {
            studentaName = data.LoginCheck(txtEmail.Text, txtPwd.Text);

            if (studentaName != string.Empty)
            {
                Session["email"] = txtEmail.Text;
                Response.Redirect(@"../Student/Home.aspx");
            }
            else
            {
                txtEmail.Text = "";
                txtPwd.Text = "";
                lblpassword.Text = "*Invalid Details";
            }
        }
        else if (resultAdmin != null)
        {
            Session["email"] = resultAdmin.Email;
            Response.Redirect("Add.aspx");
        }

    }

    protected void btnSignup_Click(object sender, EventArgs e)
    {
        Response.Redirect(@"../Home/Registration.aspx");
    }
}