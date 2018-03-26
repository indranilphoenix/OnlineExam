using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using DatabaseLibrary;
using System.Data;

public partial class Add : System.Web.UI.Page
{
    Indra_DBEntities1 db = new Indra_DBEntities1();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string mail = Convert.ToString(Session["email"]);
            if (mail == string.Empty)
            {
                Response.Redirect("Admin_Login.aspx");

            }
            else
            {
                Connection con = new Connection();
                SqlCommand cmd = new SqlCommand("select Sub_Id,Sub_Name from Sub_Info");
                cmd.Connection = con.DatabaseConnection;
                cmd.CommandType = CommandType.Text;
                if (con.DatabaseConnection.State!=ConnectionState.Open)
                {
                    con.DatabaseConnection.Open();
                }
                
                DataSet ds = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                con.DatabaseConnection.Close();
                ddlSubject.DataSource = ds;
                
                ddlSubject.DataTextField ="Sub_Name";
                ddlSubject.DataValueField = "Sub_Id";
                ddlSubject.DataBind();
            }

        }
    }

    protected void btnSub_Click(object sender, EventArgs e)
    {
        string subname = txtSub.Text;
        string correctMarks = txtMarks.Text;
        string negative = txtNegative.Text;
        string percentage = txtPercentage.Text;
        Connection con = new Connection();
       
        SqlCommand cmd = new SqlCommand("insert into Sub_Info values('"+subname+"',"+correctMarks+","+negative+","+percentage+")");
        cmd.Connection = con.DatabaseConnection;
        cmd.CommandType = CommandType.Text;
        if (con.DatabaseConnection.State != ConnectionState.Open)
        {
            con.DatabaseConnection.Open();
        }
        cmd.ExecuteReader();
        con.DatabaseConnection.Close();
        txtSub.Text = "";
        txtMarks.Text = "";
        txtNegative.Text = "";
        txtPercentage.Text = "";
        lblSubImg.Text = "Sucess";
    }




    protected void btnQue_Click(object sender, EventArgs e)
    {
        int subId = int.Parse( ddlSubject.SelectedValue);
        string question = txtQues.Text;
        string option1 = txtA1.Text;
        string option2 = txtA2.Text;
        string option3 = txtA3.Text;
        string option4 = txtA4.Text;
        int answer =int.Parse(txtcAns.Text);
        Connection con = new Connection();
        SqlCommand cmd = new SqlCommand("insert into Ques_Info (Q_Name,Option1,Option2,Option3,Option4,C_Ans,Sub_Id) values('" +
            question + "','" + option1 + "','" + option2 + "','" + option3 + "','"+option4+"',"+answer+","+ subId + ");");
        cmd.Connection = con.DatabaseConnection;
        cmd.CommandType = CommandType.Text;
        if (con.DatabaseConnection.State != ConnectionState.Open)
        {
            con.DatabaseConnection.Open();
        }
        cmd.ExecuteReader();
        con.DatabaseConnection.Close();
        txtQues.Text = "";
        txtA1.Text = "";
        txtA2.Text = "";
        txtA3.Text = "";
        txtA4.Text = "";
        txtcAns.Text = "";
        lblQuestion.Text = "Sucess";
    }

    protected void btnShowSub_Click(object sender, EventArgs e)
    {
        Connection con = new Connection();
        SqlCommand cmd = new SqlCommand("select * from Sub_Info");
        cmd.Connection = con.DatabaseConnection;
        cmd.CommandType = CommandType.Text;
        if (con.DatabaseConnection.State != ConnectionState.Open)
        {
            con.DatabaseConnection.Open();
        }

        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        con.DatabaseConnection.Close();
        gv_Sub.DataSource = ds;
        gv_Sub.DataBind();
    }

    protected void btnShowQues_Click(object sender, EventArgs e)
    {
        Connection con = new Connection();
        SqlCommand cmd = new SqlCommand("select * from Ques_Info q join Sub_Info s on s.Sub_Id=q.Sub_Id");
        cmd.Connection = con.DatabaseConnection;
        cmd.CommandType = CommandType.Text;
        if (con.DatabaseConnection.State != ConnectionState.Open)
        {
            con.DatabaseConnection.Open();
        }

        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        con.DatabaseConnection.Close();
        gv_Q.DataSource = ds;
        gv_Q.DataBind();
    }
}

   