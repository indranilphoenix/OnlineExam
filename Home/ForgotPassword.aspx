<%@ Page Title="" Language="C#" MasterPageFile="~/Home/Home.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageContent" Runat="Server">
    <table align="center" class="table">
        <tr>
            <td align="center">&nbsp;<asp:Label ID="Label1" runat="server" Text="Password Reminder" Font-Size="XX-Large" CssClass="warning" ></asp:Label></td>
            
        </tr>
        
    </table>
    <br />
    <br />

    <table align="center" class="table">
        <tr class="form-group">
            <td align="right" class="text-info">Enter email address :</td>
            <td align="left"><asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" required="required" AutoPostBack="True" OnTextChanged="txtEmail_TextChanged" Wrap="False"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" CssClass="danger" ErrorMessage="*Not a Valid E-mail Address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:Label ID="lblEmail" runat="server" Text="" CssClass="text-danger"></asp:Label>
            </td>
        </tr>
        
        </table>
    <div id="Security" runat="server" visible="false">
        <table style="width: 100%;" class="table">
            <tr>
                <td align="right"> <asp:Label ID="Label2" runat="server" Text="Sequerity Question" CssClass="info"></asp:Label></td>
                <td align="left"><asp:Label ID="lblSequerity" runat="server" Text="Label" CssClass="info"></asp:Label></td>
            </tr>
            <tr>
                <td align="right"> <asp:Label ID="Label3" runat="server" Text="Answer" CssClass="info"></asp:Label></td>
                <td align="left"><asp:TextBox ID="txtAnswer" CssClass="info" runat="server"></asp:TextBox></td>
            </tr>

            <asp:Label ID="lblAns" runat="server" Text="" CssClass="text-danger"></asp:Label>
        </table>
    </div>
    <br />
    <br />
    <table align="center">
        <tr>
            <td align="right">
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-warning" OnClick="btnSubmit_Click" /></td>
            <td align="left">; <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-warning" OnClick="LinkButton1_Click" PostBackUrl="~/Admin/Home.aspx">Cancel</asp:LinkButton></td>
        </tr>
        </table>
    &nbsp;<br />
    <br />
    
</asp:Content>