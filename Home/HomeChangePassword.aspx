<%@ Page Title="" Language="C#" MasterPageFile="~/Home/Home.master" AutoEventWireup="true" CodeFile="HomeChangePassword.aspx.cs" Inherits="Home_HomeChangePassword" %>

<asp:Content ID="Content3" ContentPlaceHolderID="head" Runat="Server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="PageContent" Runat="Server">
    <table style="width: 100%;" class="table">
        <tr>
            <td align="right"><asp:Label ID="Label2" runat="server" Text="New Password" CssClass="info"></asp:Label></td>
            <td align="left"><asp:TextBox ID="txtPassNew" runat="server" CssClass="bg-info" PlaceHolder="New Password"  required="required"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right"><asp:Label ID="Label3" runat="server" Text="ConFirm Password"></asp:Label></td>
            <td align="left"><asp:TextBox ID="TextBox1" runat="server" CssClass="bg-info" PlaceHolder="Confirm Password" required="required"></asp:TextBox> </td>
        </tr>
    </table>
    <div class="col-md-12" align="center">
        <asp:Button ID="btnSubmit" runat="server" Text="Change" CssClass="btn btn-warning" OnClick="btnSubmit_Click"/>
    </div>
</asp:Content>

