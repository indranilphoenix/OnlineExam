<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.master" AutoEventWireup="true" CodeFile="TakeExam.aspx.cs" Inherits="TakeExam" %>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
     <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="description" content=""/>
    <meta name="author" content="aspxtemplates"/>
    <title>The Big Picture - Start Bootstrap Template</title>
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <!-- Custom CSS -->
    <link href="css/the-big-picture.css" rel="stylesheet"/>
    <link href="css/font-icon.css" rel="stylesheet" type="text/css" />
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <link href="css/responsive.css" rel="stylesheet" type="text/css" />
    <!-- ============ Google fonts ============ -->
    <link href='http://fonts.googleapis.com/css?family=EB+Garamond' rel='stylesheet'
        type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,300,800'
        rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"/>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>
        <asp:Label ID="Label1" runat="server" Text="Take Examination"></asp:Label> </h1>
    <asp:Label ID="Label2" runat="server" Text="Select Subject:" CssClass="text-primary"></asp:Label>
    <asp:DropDownList ID="ddlSubjects" runat="server"  Width="163px" CssClass="bg-primary"></asp:DropDownList><br />
    <br />
    <asp:Button ID="btnStart" runat="server" Text="Start Exam" CssClass="btn btn-warning" OnClick="btnStart_Click1"/><br />
    <p/>
    <b class="text-info">Note:</b>
    <ul class="label-info">
    <li>Each exam contains 5 question.</li><li>Use Next and Previous buttons to navigate between questions</li><li>Result is displayed after the last questions is answered</li><li>CANCEL button can be used to cancel the exam</li><li>No time limitation. However the time taken is stored in database</li></ul>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:examConnectionString %>"
    SelectCommand="SELECT [sid], [sname] FROM [oe_subjects]"></asp:SqlDataSource>

    <%--<h2>
        Take Examination</h2>
    Select Subject :
    <asp:DropDownList ID="ddlSubjects" runat="server" Width="163px">
    </asp:DropDownList><br />
    <br />
    <asp:Button ID="btnStart" runat="server" Text="Start Exam" OnClick="btnStart_Click" /><br />
    <p/>
    <b>Note</b>
    <ul>
    <li>Each exam contains 5 question.</li><li>Use Next and Previous buttons to navigate between questions</li><li>Result is displayed after the last questions is answered</li><li>CANCEL button can be used to cancel the exam</li><li>No time limitation. However the time taken is stored in database</li></ul>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:examConnectionString %>"
        SelectCommand="SELECT [sid], [sname] FROM [oe_subjects]"></asp:SqlDataSource>--%>
</asp:Content>

