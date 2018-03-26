using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Edit : System.Web.UI.Page
{
    Indra_DBEntities1 db = new Indra_DBEntities1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            showcategorylist();
            showsubjectlist();
            showquestiondata();
        }
        
    }

    public void showcategorylist()
    {
        var r = (from t in db.Category_Info select t).ToList();
        ddlCatagory2.DataSource = r;
        ddlCatagory2.DataTextField = "Cat_Name";
        ddlCatagory2.DataValueField = "Cat_Id";
        ddlCatagory2.DataBind();
        ddlCatagory2.Items.Insert(0, new ListItem("Select Category", "0"));
    }

    public void showsubjectlist()
    {
        var res = (from t1 in db.Sub_Info select t1).ToList();
        ddlSubject.DataSource = res;
        ddlSubject.DataTextField = "Sub_Name";
        ddlSubject.DataValueField = "Sub_Id";
        ddlSubject.DataBind();
        ddlSubject.Items.Insert(0, new ListItem("Select Subject", "0"));
    }
    public void showquestiondata()
    {
        int QID = Convert.ToInt32(Session["qid"]);
        var result=(from test in db.Ques_Info where test.Q_Id==QID select test).FirstOrDefault();
        txtQues.Text = result.Q_Name;
        txtA1.Text = result.Option1;
        txtA2.Text = result.Option2;
        txtA3.Text = result.Option3;
        txtA4.Text = result.Option4;
        //txtcAns.Text = result.C_Ans;
       // string catagory =Convert.ToString(result.Cat_Id);
        //foreach (ListItem li in ddlCatagory2.Items)
        //{
        //    if (li.Value == catagory)
        //    {
        //        li.Selected = true;
        //        break;
        //    }
        //}
        string subject = Convert.ToString(result.Sub_Id);
        foreach (ListItem li in ddlSubject.Items)
        {
            if (li.Value == subject)
            {
                li.Selected = true;
                break;
            }
        }
    }
    public void catagorydata()
    {
        int QID = Convert.ToInt32(Session["qid"]);
        var result = (from test in db.Category_Info where test.Cat_Id == QID select test).FirstOrDefault();
        txtCata.Text = result.Cat_Name;
        
    }
    protected void ddlCatagory2_SelectedIndexChanged(object sender, EventArgs e)
    {
        //int cid = Convert.ToInt32(ddlCatagory2.SelectedValue);
        //showsubjectlist(cid);
    }
    //public void showsubjectlist(int categoryid)
    //{
    //    //var res = (from t1 in db.Sub_Info where t1.Cat_Id == categoryid select t1).ToList();
    //    ddlSubject.DataSource = res;
    //    ddlSubject.DataTextField = "Sub_Name";
    //    ddlSubject.DataValueField = "Sub_Id";
    //    ddlSubject.DataBind();
    //    ddlSubject.Items.Insert(0, new ListItem("Select Subject", "0"));
    //}

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        int Qid= Convert.ToInt32(Session["qid"]);
        updatequestiondata(Qid);
    }

    public void updatequestiondata(int q_id)
    {
        var result = (from test in db.Ques_Info where test.Q_Id == q_id select test).FirstOrDefault();
        result.Q_Name= txtQues.Text;
        result.Option1= txtA1.Text;
        result.Option2= txtA2.Text;
        result.Option3= txtA3.Text;
        result.Option4= txtA4.Text;
        result.C_Ans= Convert.ToInt32(txtcAns.Text);
        result.C_Ans = Convert.ToInt32(ddlCatagory2.SelectedValue);
        result.Sub_Id = Convert.ToInt32(ddlSubject.SelectedValue);
        db.SaveChanges();
        Response.Redirect("Add.aspx");
    }
}