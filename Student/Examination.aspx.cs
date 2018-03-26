using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Examinaton : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string mail = Convert.ToString(Session["email"]);
            if (mail == string.Empty)
            {
                Response.Redirect(@"../Admin/Admin_Login.aspx");

            }
            else if (!Page.IsPostBack)
            {
                DisplayQuestion();
            }
           

        }
        else
        {

        }
      }
    public void DisplayQuestion()
    {
        // get data from session object
        Examination e = (Examination)Session["questions"];
        // display data
        lblSubject.Text = e.sname;
        lblQno.Text = e.curpos + 1 + "/" + e.SIZE;
        lblCtime.Text = DateTime.Now.ToString();
        lblStime.Text = e.StartTime.ToString();

        Question q = e.questions[e.curpos];
        // display details of question
        question.InnerHtml = q.question;
        ans1.InnerHtml = q.ans1;
        ans2.InnerHtml = q.ans2;
        ans3.InnerHtml = q.ans3;
        ans4.InnerHtml = q.ans4;

        // reset all radio buttons
        rbAns1.Checked = false;
        rbAns2.Checked = false;
        rbAns3.Checked = false;
        rbAns4.Checked = false;

        // disable and enable buttons
        if (e.curpos == 0)
            btnPrev.Enabled = false;
        else
            btnPrev.Enabled = true;

        if (e.curpos == e.SIZE - 1)
            btnNext.Text = "Finish";
        else
            btnNext.Text = "Next";
    }

    public void ProcessQuestion()
    {
        Examination exam = (Examination)Session["questions"];
        Question q = exam.questions[exam.curpos];
        String answer;
        // find out the answer and assign it to 
        if (rbAns1.Checked)
            answer = "1";
        else
            if (rbAns2.Checked)
            answer = "2";
        else
                if (rbAns3.Checked)
            answer = "3";
        else
                    if (rbAns4.Checked)
            answer = "4";
        else
            answer = "0";  // error
        q.answer = answer;
        exam.questions[exam.curpos] = q;
        Session.Add("questions", exam);
    }

    //protected void btnNext_Click(object sender, EventArgs e)
    //{
    //    ProcessQuestion();
    //    Examination exam = (Examination)Session["questions"];
    //    if (exam.curpos == exam.SIZE - 1)
    //        Response.Redirect("showresult.aspx");
    //    else
    //    {
    //        exam.curpos++;
    //        Session.Add("questions", exam);
    //        DisplayQuestion();
    //    }
    //}

    //protected void btnPrev_Click(object sender, EventArgs e)
    //{
    //    // ProcessQuestion();
    //    Examination exam = (Examination)Session["questions"];
    //    exam.curpos--;
    //    Session.Add("questions", exam);
    //    DisplayQuestion();
    //}

    //protected void btnCancel_Click(object sender, EventArgs e)
    //{
    //    // Examination exam = (Examination)Session["questions"];
    //    Session.Remove("questions");
    //    //exam = null;
    //    Response.Redirect(@"../Student/Home.aspx");
    //}

    protected void btnPrev_Click1(object sender, EventArgs e)
    {
        // ProcessQuestion();
        Examination exam = (Examination)Session["questions"];
        exam.curpos--;
        Session.Add("questions", exam);
        DisplayQuestion();
    }

    protected void btnNext_Click1(object sender, EventArgs e)
    {
        ProcessQuestion();
        Examination exam = (Examination)Session["questions"];
        if (exam.curpos == exam.SIZE - 1)
            Response.Redirect("showresult.aspx");
        else
        {
            exam.curpos++;
            Session.Add("questions", exam);
            DisplayQuestion();
        }
    }

    protected void btnCancel_Click1(object sender, EventArgs e)
    {
        // Examination exam = (Examination)Session["questions"];
        Session.Remove("questions");
        //exam = null;
        Response.Redirect(@"../Student/Home.aspx");
    }
}