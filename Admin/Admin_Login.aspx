<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Admin_Login.aspx.cs" Inherits="registration_Form_Admin_Login" %>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
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
    <link href="css/style.css" rel="stylesheet" />
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
 <script>
        function show() {
            var error = isEmail('<%=txtEmail.ClientID%>');
            document.getElementById('<%=lblEmail.ClientID%>').innerText = "";
            if(error)
            {
                document.getElementById('<%=lblEmail.ClientID%>').innerText = "invalid email";
            }
        }

     function isEmail(id) {
         var regRex = /^(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6}$/;
         ValidateRegExp(id, regRex);
         return error;
     }


     function ValidateRegExp(id, regRex) {
         try {
             if (document.getElementById(id).value == '') {
                 error = true;
             } else {
                 var re = new RegExp(regRex);
                 error = !document.getElementById(id).value.match(re);
             }

             return error;
         }
         catch (e) { return false; }
     }
    </script>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
    <div class="container-fluid">
     <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
            <div class="registrationform">
                <div class="form-horizontal">
                    <fieldset>
                        <legend>Log In <i class="fa fa-pencil pull-right"></i></legend>
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="Email" CssClass="col-lg-2 control-label">E-mail <span class="glyphicon glyphicon-user"></span></asp:Label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="txtEmail" runat="server" onblur="show();" placeholder="Email" CssClass="form-control"></asp:TextBox>
                                <asp:Label ID="lblEmail" runat="server" Text="" CssClass="text-danger"></asp:Label>
                               
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" Text="Password" CssClass="col-lg-2 control-label">Password <span class="glyphicon glyphicon-lock"></span></asp:Label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="txtPwd" runat="server" placeholder="Password" CssClass="form-control"
                                    TextMode="Password"></asp:TextBox>
                            </div>
                            <br />
                           &nbsp <asp:Label ID="lblpassword" runat="server" Text="" CssClass="text-danger"></asp:Label>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-10 col-lg-offset-2">
                                <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-primary" Text="Log In" OnClick="btnLogin_Click" />
                                  <asp:Button ID="btnSignup" runat="server" CssClass="btn btn-warning" Text="Sign Up" OnClick="btnSignup_Click"  />                              
                                <br />
                                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="Small" Font-Underline="True" NavigateUrl="~/Home/ForgotPassword.aspx" ForeColor="White">Forgot Password?</asp:HyperLink>
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>
       </div>
</asp:Content>

