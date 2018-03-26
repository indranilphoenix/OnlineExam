using DatabaseLibrary;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChangePassword : System.Web.UI.Page
{
    Indra_DBEntities1 db = new Indra_DBEntities1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string mail = Convert.ToString(Session["email"]);
            if (mail == string.Empty)
            {
                Response.Redirect(@"../Admin/Admin_Login.aspx");

            }
            else
            {
               
            }

        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string current = txtPassword.Text;
        string newpassword= txtPassNew.Text;
        Connection con = new Connection();
       int i= con.ChangeUserPassword(current, newpassword, Session["email"].ToString());
        if (i==1)
        {
            //txt value is sucess;
            lblmsg.Text = "Your Password has been Changed Successfully";

            txtPassNew.Text = "";
            txtPassword.Text = "";
            txtConfirm.Text = "";
        }
        else
        {
            lblmsg.Text = "Oops there was something wrong";
        }
    }
}