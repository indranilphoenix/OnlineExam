<%@ Page Title="" EnableEventValidation="false" Language="C#" MasterPageFile="~/Student/Student.master" AutoEventWireup="true" CodeFile="Examination.aspx.cs" Inherits="Student_Examinaton" %>

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
    <div class="container container-fluid">
        <div class="col-lg-offset-3 col-lg-6 col-lg-offset-3 col-xs-offset-0 col-xs-12 col-xs-offset-0 padding-top50">
            <div class="registrationform">
                <form  action="whrerever">
                    <h1 class="text-center">Examination</h1>
                    <div class="form-group">
                        <div class="col-md-12 inputGroupContainer">
                            <div class="input-group">
                                <asp:Label ID="Label1" runat="server" Text="Subject:" align="left"></asp:Label>
                                <asp:Label ID="lblSubject" runat="server" ForeColor="Red"></asp:Label>
                                &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                                <asp:Label ID="Label3" runat="server" Text="Question:"></asp:Label>
                                <asp:Label ID="lblQno" runat="server" ForeColor="Red"></asp:Label>
                            </div>
                            <div class="input-group">
                                <asp:Label ID="Label2" runat="server" Text="Started At:"></asp:Label>
                                <asp:Label ID="lblStime" runat="server" ForeColor="Red"></asp:Label>
                                 &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                                <asp:Label ID="Label4" runat="server" Text="Current Time:"></asp:Label>
                                <asp:Label ID="lblCtime" runat="server" ForeColor="Red"></asp:Label>
                            </div>
                            <p />
                                <asp:Label ID="Label5" runat="server" Text="Question"></asp:Label>
                                <br />
                                <pre runat="server" id="question" style="background-color:#eeeeee">question</pre>
                                <p></p>
                           </div>
                        <table class="table" width="30%">
    <tr>
    <td>
    <asp:RadioButton ID="rbAns1" runat="server" GroupName="answer" />
    </td>
    <td style="width: 3px">
    <pre runat="server" id="ans1"></pre>
    </td>
    </tr>
    
    <tr>
    <td>
    <asp:RadioButton ID="rbAns2" runat="server" GroupName="answer" />
    </td>
    <td style="width: 3px">
    <pre runat="server" id="ans2"></pre>
    </td>
    </tr>
    
    <tr>
    <td>
    <asp:RadioButton ID="rbAns3" runat="server" GroupName="answer" />
    </td>
    <td style="width: 3px">
    <pre runat="server" id="ans3"></pre>
    </td>
    </tr>
    
    <tr>
    <td>
    <asp:RadioButton ID="rbAns4" runat="server" GroupName="answer" />
    </td>
    <td style="width: 3px">
    <pre runat="server" id="ans4"></pre>
    </td>
    </tr>
    
    </table>
                        <br />
        <asp:Button ID="btnPrev" runat="server" Text="Previous" Width="130px" CssClass="btn btn-warning" OnClick="btnPrev_Click1" />&nbsp;
        <asp:Button ID="btnNext" runat="server" Text="Next" width="130px" CssClass="btn btn-warning" OnClick="btnNext_Click1" />
            
        <asp:Button ID="btnCancel" runat="server" Text="Cancel Exam" Width="130px" CssClass="btn btn-warning" OnClick="btnCancel_Click1" />
                            
                    </div>
                </form>
            </div>
        </div>
    </div>
   <%-- <table width="100%" class="container-fluid">
    <tr>
    <td>
        Subject :
        <asp:Label ID="lblSubject" runat="server" Width="154px" Font-Bold="True" Font-Names="Verdana" ForeColor="Red"></asp:Label></td>
    <td>
        Question :
        <asp:Label ID="lblQno" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Red"></asp:Label></td>
    </tr>
    <tr>
    <td>
        Started At :
        <asp:Label ID="lblStime" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Red"></asp:Label></td>
    <td style="height: 22px">
        Current Time :<asp:Label ID="lblCtime" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Red"></asp:Label></td>
    </tr>
    </table>
    
    <p />
    <b>Question</b>
    <br />
    <pre runat="server" id="question" style="background-color:#eeeeee">question</pre>
    <p></p>
    <table>
    <tr>
    <td>
    <asp:RadioButton ID="rbAns1" runat="server" GroupName="answer" />
    </td>
    <td style="width: 3px">
    <pre runat="server" id="ans1"></pre>
    </td>
    </tr>
    
    <tr>
    <td>
    <asp:RadioButton ID="rbAns2" runat="server" GroupName="answer" />
    </td>
    <td style="width: 3px">
    <pre runat="server" id="ans2"></pre>
    </td>
    </tr>
    
    <tr>
    <td>
    <asp:RadioButton ID="rbAns3" runat="server" GroupName="answer" />
    </td>
    <td style="width: 3px">
    <pre runat="server" id="ans3"></pre>
    </td>
    </tr>
    
    <tr>
    <td>
    <asp:RadioButton ID="rbAns4" runat="server" GroupName="answer" />
    </td>
    <td style="width: 3px">
    <pre runat="server" id="ans4"></pre>
    </td>
    </tr>
    
    </table>
        <br />
        <asp:Button ID="btnPrev" runat="server" Text="Previous" OnClick="btnPrev_Click" />&nbsp;<asp:Button ID="btnNext"
            runat="server" Text="Next" Width="75px" OnClick="btnNext_Click" />
        <asp:Button ID="btnCancel" runat="server" Text="Cancel Exam" Width="115px" OnClick="btnCancel_Click" />--%>
</asp:Content>

