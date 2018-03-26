<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.master" AutoEventWireup="true" CodeFile="ShowResult.aspx.cs" Inherits="Student_ShowResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <h2>
    Examination Result</h2>
    &nbsp;
    <br />
    <table class="table" border=1>
        <tr>
            <td>
                Subject:
            </td>
            <td>
                <asp:Label ID="lblSubject" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td>
                Starting Time :
            </td>
            <td>
                <asp:Label ID="lblStime" runat="server" Text="Label"></asp:Label></td>
        </tr>
        
        <tr>
            <td>
                Time Taken In Minutes : 
            </td>
            <td>
                <asp:Label ID="lblMin" runat="server" Text="Label"></asp:Label></td>
        </tr>
        
                <tr>
            <td>
               No. of Questions :
            </td>
            <td>
                <asp:Label ID="lblNquestions" runat="server"></asp:Label></td>
        </tr>
        
                <tr>
            <td>
                No. of correct answers :
            </td>
            <td>
                <asp:Label ID="lblNcans" runat="server" Text="Label"></asp:Label></td>
        </tr>

        <tr>
            <td>
                Grade : 
            </td>
            <td>
                <asp:Label ID="lblGrade" runat="server" Text="Label"></asp:Label></td>
        </tr>


    </table>
    <br />
    <a  href="reviewquestions.aspx">Review Questions</a> &nbsp
    <asp:LinkButton ID="lbRank" runat="server" OnClick="lbRank_Click">Rank The Result</asp:LinkButton><br />
    <br />
    <asp:Label ID="lblRank" runat="server"></asp:Label><br />
</asp:Content>

