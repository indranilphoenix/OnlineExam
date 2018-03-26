using DatabaseLibrary;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home_Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        string firstName = txtFirst.Text;
        string lastName = txtLast.Text;
        string Address = txtAddress.Text;
        string EmailId = txtEmail.Text;
        string PhoneNumber = txtPhone.Text;
        string Password = txtPass.Text;
        string ConfirmPassword = txtCPassword.Text;
        string SequrityQuestion = txtSeqQuestion.Text;
        string Answer = txtAns.Text;
        string[] studentDetails = new string[] { firstName, lastName, Address, EmailId, PhoneNumber, Password, SequrityQuestion, Answer };
        Connection con = new Connection();
        con.NewRegister(studentDetails);
        Response.Redirect(@"../Admin/Admin_Login.aspx");
    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect(@"../Admin/Home.aspx");
    }
}