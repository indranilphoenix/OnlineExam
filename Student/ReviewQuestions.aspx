<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.master" AutoEventWireup="true" CodeFile="ReviewQuestions.aspx.cs" Inherits="Student_ReviewQuestions" %>

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
    <asp:DataList ID="DataList1" runat="server" Width="100%" CssClass="bg-primary">
    <HeaderTemplate>
     <a href="showresult.aspx" class="info">Show Result</a>
     <h2>Review Questions</h2>
     <hr size=5 style="color:red" />
    </HeaderTemplate>
    
    <ItemTemplate>
    <pre style="color:Red;background-color:#eeeeee"><%# DataBinder.Eval( Container.DataItem,"QuestionText")%></pre>
    <pre>1.<%# DataBinder.Eval( Container.DataItem,"Answer1") %></pre>
    <pre>2.<%# DataBinder.Eval( Container.DataItem,"Answer2") %></pre>
    <pre>3.<%# DataBinder.Eval( Container.DataItem,"Answer3") %></pre>
    <pre>4.<%# DataBinder.Eval( Container.DataItem,"Answer4") %></pre>
    <pre>Correct Answer :<%# DataBinder.Eval( Container.DataItem,"CorrectAnswer") %></pre>
    <pre>Your Answer    :<%# DataBinder.Eval( Container.DataItem,"YourAnswer") %></pre>
    </ItemTemplate>
    
     <SeparatorTemplate>
     <hr size="2" style="color:Red" />
    </SeparatorTemplate>
    
    
    
    <FooterTemplate>
      <hr size=5 style="color:red" />
      <a href="showresult.aspx">Show Result</a>
    </FooterTemplate>
    </asp:DataList>
</asp:Content>

