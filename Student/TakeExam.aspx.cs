using DatabaseLibrary;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TakeExam : System.Web.UI.Page
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
            else if (!IsPostBack)
            {
                Connection objData = new Connection();
                DataSet s = objData.GetSubject();
                ddlSubjects.DataSource = s;
                ddlSubjects.DataTextField = "Sub_Name";
                ddlSubjects.DataValueField = "Sub_Id";
                ddlSubjects.DataBind();
            }


        }
    }
    protected void btnStart_Click1(object sender, EventArgs e)
    {
        String sid, sname;

        sid = ddlSubjects.SelectedItem.Value;
        sname = ddlSubjects.SelectedItem.Text;
        Examination exam = new Examination(5, Int32.Parse(sid), sname);
        exam.GetQuestions(int.Parse(sid));
        Session.Add("questions", exam);
        Response.Redirect(@"../Student/Examination.aspx");
    }
}