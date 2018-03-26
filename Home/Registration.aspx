<%@ Page Title="" EnableEventValidation="false" Language="C#" MasterPageFile="~/Home/Home.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Home_Registration" %>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
        <script src="../Scripts/client_error.js"></script>
    <script src="../Scripts/NewRegister.js"></script>
</asp:Content>

<asp:Content ID="Content1"  ContentPlaceHolderID="PageContent"   Runat="Server">
    

    <div class="container-fluid">
        <div class="col-lg-offset-3 col-lg-6 col-lg-offset-3 col-xs-offset-0 col-xs-12 col-xs-offset-0 padding-top50">
            <div class="registrationform">
                <form  action="whrerever">
                <h1 class="text-center">REGISTRATION</h1>
                    <div class="form-group">
                        <div class="col-md-12 inputGroupContainer">
                            <div class="input-group">
                                <asp:Label ID="Label1" runat="server" Text="First Name" CssClass="input-group-addon"></asp:Label>
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <asp:TextBox ID="txtFirst" placeholder="First Name" onblur="return ValidateFirstName();"  onchange="return ValidateFirstName();" CssClass="form-control" runat="server" required="required"></asp:TextBox>
                                <asp:Label ID="lblFirst" runat="server" Text="" CssClass="text-danger"></asp:Label>
                            </div>
                        </div>
                     </div>
                    
                <div class="form-group">
                <div class="col-md-12 inputGroupContainer">
                    <div class="input-group">
                        <asp:Label ID="Label2" runat="server" Text="Last Name" CssClass="input-group-addon"></asp:Label>
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <asp:TextBox ID="txtLast" placeholder="Last Name" CssClass="form-control" onblur="return ValidateLastName();"  onchange="return ValidateFirstName();" runat="server" required="required"></asp:TextBox>
                        <asp:Label ID="lblLast" runat="server" Text="" CssClass="text-danger"></asp:Label>
                    </div>
                </div>
                    
                </div>
                <div class="form-group">
                    <div class="col-md-12 inputGroupContainer">
                        <div class="input-group">
                            <asp:Label ID="Label3" runat="server" Text="Address" CssClass="input-group-addon"></asp:Label>
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <asp:TextBox ID="txtAddress" placeholder="Full Address" CssClass="form-control" onblur="return ValidateFirstName();" onchange="return ValidateFirstName();" runat="server" required="required"></asp:TextBox>
                        </div>
                    </div>
                    
                </div>
                <div class="form-group">
                    <div class="col-md-12 inputGroupContainer">
                        <div class="input-group">
                            <asp:Label ID="Label4" runat="server" Text="Email Address" CssClass="input-group-addon"></asp:Label>
                            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                            <asp:TextBox ID="txtEmail" placeholder="E-mail Address" CssClass="form-control" onblur="return ValidateEmail();" onchange="return ValidateFirstName();" runat="server" required="required"></asp:TextBox>
                        <asp:Label ID="lblEmail" runat="server" Text="" CssClass="text-danger"></asp:Label>
                        </div>
                    </div>
                    
                </div>
                <div class="form-group">
                    <div class="col-md-12 inputGroupContainer">
                        <div class="input-group">
                            <asp:Label ID="Label5" runat="server" Text="Phone Number" CssClass="input-group-addon"></asp:Label>
                            <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
                            <asp:TextBox ID="txtPhone" placeholder="Phone Number" CssClass="form-control" onblur="return ValidateContactNo();" onchange="return ValidateFirstName();" runat="server" required="required"></asp:TextBox>
                            <asp:Label ID="lblPhone" runat="server" Text="" CssClass="text-danger"></asp:Label>
                        </div>
                    </div>
                    
                </div>
                <div class="form-group">
                    <div class="col-md-12 inputGroupContainer">
                        <div class="input-group">
                            <div class="input-group-addon"><asp:Label ID="Label7" runat="server" Text="Password"></asp:Label></div>
                            <span class="input-group-addon"><i class="icon fa fa-unlock fa-lg"></i></span>
                            <asp:TextBox ID="txtPass" Placeholder="Password" CssClass="form-control" TextMode="Password" runat="server" required="required"></asp:TextBox>
                            <asp:Label ID="lblPass" runat="server" Text="" CssClass="text-danger"></asp:Label>
                        </div>
                    </div>
                    
                </div>
                <div class="form-group">
                    <div class="col-md-12 inputGroupContainer">
                        <div class="input-group">
                            <div class="input-group-addon"><asp:Label ID="Label6" runat="server" Text="Confirm Password"></asp:Label></div>
                            <span class="input-group-addon"><i class="icon fa fa-unlock fa-lg"></i></span>
                            <asp:TextBox ID="txtCPassword" Placeholder="Confirm Password" CssClass="form-control" TextMode="Password" onblur="return ValidateConfirmPassword();"  onchange="return ValidateFirstName();" runat="server" required="required"></asp:TextBox>
                            <asp:Label ID="lblCPassword" runat="server" Text="" CssClass="text-danger"></asp:Label>
                        </div>
                    </div>
                    
                </div>
                <div class="form-group">
                    <div class="col-md-12 inputGroupContainer">
                        <div class="input-group">
                            <div class="input-group-addon"><asp:Label ID="Label8" runat="server" Text="Sequerity Question"></asp:Label></div>
                            <span class="input-group-addon"><i class="glyphicon glyphicon-question-sign"></i></span>
                            <asp:TextBox ID="txtSeqQuestion" Placeholder="Enter Question" CssClass="form-control" onblur="return ValidateFirstName();" onchange="return ValidateFirstName();" runat="server" required="required"></asp:TextBox>
                            <asp:Label ID="lblSeqQuestion" runat="server" Text="" CssClass="text-danger"></asp:Label>
                        </div>
                    </div>
                    
                </div>
                <div class="form-group">
                    <div class="col-md-12 inputGroupContainer">
                        <div class="input-group">
                            <div class="input-group-addon"><asp:Label ID="Label9" runat="server" Text="Answer"></asp:Label></div>
                            <span class="input-group-addon"><i class="glyphicon glyphicon-comment"></i></span>
                            <asp:TextBox ID="txtAns" Placeholder="Enter Answer" CssClass="form-control" onblur="return ValidateFirstName();" onchange="return ValidateFirstName();" runat="server" required="required"></asp:TextBox>
                        </div>
                    </div>
                    
                </div>

                <div class="form-group text-center">
                    <asp:Button ID="btnRegister" runat="server" CssClass="btn btn-warning" Text="Submit" OnClick="btnRegister_Click" />
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-warning" OnClick="LinkButton1_Click">Cancel</asp:LinkButton>
<%--                    <asp:Button ID="btnRegister" runat="server" CssClass="btn btn-warning" Text="Submit" OnClick="btnRegister_Click1" />
                    <asp:Button ID="btnCancel" runat="server" CssClass ="btn btn-warning" Text="Cancel" OnClick="btnCancel_Click1" />--%>
                    
                </div>
                </form>
            </div>
        </div>
    </div>
</asp:Content>
        <%--<div>
    <table align="center">
        <tr>
            <td style="width: 617px" align="center">&nbsp;<asp:Label ID="Label1" runat="server" Text="New User Registration" Font-Size="XX-Large" ForeColor="#0000CC" align="center"></asp:Label>&nbsp;</td>
        </tr>
        
        
    </table>
    <table align="center" bgcolor="#999966" >
        <tr>
            <td align="right" style="color:black;">
                First Name :</td>
            <td >
                <asp:TextBox ID="txtFirst" runat="server" BackColor="#996600" BorderColor="#003366" BorderWidth="1px"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td align="right" >
                Last Name :
            </td>
            <td >
                <asp:TextBox ID="txtLast" runat="server" Width="149px" BackColor="#996600" BorderColor="#003366" BorderWidth="1px"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td align="right" >
                Address :</td>
            <td >
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Width="149px" BackColor="#996600" BorderColor="#003366" BorderWidth="1px"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td align="right" >
                Email Address :</td>
            <td >
                <asp:TextBox ID="txtEmail" runat="server" Width="240px" BackColor="#996600" BorderColor="#003366" BorderWidth="1px"></asp:TextBox>
            </td>
        </tr>
        
        <tr>
            <td align="right" >
                Phone Number :</td>
            <td >
                <asp:TextBox ID="txtPhone" runat="server" Width="240px" BackColor="#996600" BorderColor="#003366" BorderWidth="1px" ValidateRequestMode="Enabled"></asp:TextBox>
                </td>
        </tr>
         <tr>
            <td align="right" >
                Password :</td>
            <td >
                <asp:TextBox ID="txtPass" runat="server" Width="243px" BackColor="#996600" BorderColor="#003366" BorderWidth="1px" TextMode="Password"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td align="right" >
               Conferm Password :</td>
            <td >
                <asp:TextBox ID="txtCPassword" runat="server" Width="243px" BackColor="#996600" BorderColor="#003366" BorderWidth="1px" TextMode="Password"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td align="right" >
                Sequrity Question :</td>
            <td >
                <asp:TextBox ID="txtSeqQuestion" runat="server" Width="243px" BackColor="#996600" BorderColor="#003366" BorderWidth="1px"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td align="right" >
                Answer :</td>
            <td >
                <asp:TextBox ID="txtAns" runat="server" Width="243px" BackColor="#996600" BorderColor="#003366" BorderWidth="1px"></asp:TextBox>
                </td>
        </tr>
    </table>
    <table align="center">
        <tr>
            <td style="height: 23px" align="center">
                <asp:Button ID="btnRegister" runat="server" Text="Register" BackColor="#003399" OnClick="btnRegister_Click"/>
            </td>
            <td style="height: 23px" align="center">
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" BackColor="#003399" OnClick="btnCancel_Click"/>  
            </td>
        </tr>

        <br />

        </table>
    <asp:Label ID="lblMsg" runat="server"></asp:Label><br />
    </div>--%>
