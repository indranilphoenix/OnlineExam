<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Edit.aspx.cs" Inherits="Edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <table style="width: 26%">
        <tr>
            <td style="width: 83px">
                <asp:Label ID="Label14" runat="server" ForeColor="Black" Text="Catagory"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCata" runat="server" ForeColor="Black"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 83px">
                <asp:Button ID="btnCata" runat="server" ForeColor="Black" Text="Update" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
   
    <table style="width: 41%">
        <tr>
            <td style="width: 164px">
                <asp:Label ID="Label12" runat="server" Text="Category" ForeColor="#990000"></asp:Label>
                <br />
                <asp:Label ID="Label13" runat="server" Text="Subject" ForeColor="#990000"></asp:Label>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Question" ForeColor="#990000"></asp:Label>
                <br />
                <asp:Label ID="Label6" runat="server" Text="Answer 1" ForeColor="#990000"></asp:Label>
                <br />
                <asp:Label ID="Label7" runat="server" Text="Answer 2" ForeColor="#990000"></asp:Label>
                <br />
                <asp:Label ID="Label8" runat="server" Text="Answer 3" ForeColor="#990000"></asp:Label>
                <br />
                <asp:Label ID="Label9" runat="server" Text="Answer 4" ForeColor="#990000"></asp:Label>
                <br />
                <asp:Label ID="Label10" runat="server" Text="Correct Answer" ForeColor="#990000"></asp:Label></td>
            <td>
                <asp:DropDownList ID="ddlCatagory2" runat="server" Height="17px" Width="121px" ForeColor="#990000" AutoPostBack="True" OnSelectedIndexChanged="ddlCatagory2_SelectedIndexChanged">
                </asp:DropDownList>
                <br />
                <asp:DropDownList ID="ddlSubject" runat="server" Height="17px" Width="121px" ForeColor="#990000">
                </asp:DropDownList>
                <br />
                <asp:TextBox ID="txtQues" runat="server" ForeColor="#990000"></asp:TextBox>
                            <br />
                <asp:TextBox ID="txtA1" runat="server" ForeColor="#990000"></asp:TextBox>
                            <br />
                <asp:TextBox ID="txtA2" runat="server" ForeColor="#990000"></asp:TextBox>
                            <br />
                <asp:TextBox ID="txtA3" runat="server" ForeColor="#990000"></asp:TextBox>
                            <br />
                <asp:TextBox ID="txtA4" runat="server" ForeColor="#990000" ></asp:TextBox>
                            <asp:TextBox ID="txtcAns" runat="server" ForeColor="#990000"></asp:TextBox>
                            <br />
                            </td>
        </tr>
        <tr>
            <td style="width: 164px">
                <asp:Button ID="btnUpdate" runat="server" ForeColor="Black" Text="Update" OnClick="btnUpdate_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

