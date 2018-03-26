<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Add.aspx.cs" Inherits="Add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%" class="table">
        <tr>
            <td style="width: 320px"><h2>Add Subjects</h2></td>
            <td style="width: 380px"><h2>Add Question</h2></td>
        </tr>
        <tr>
            <td style="width: 320px">
                <br />
                <asp:Label ID="Label2" runat="server" Text="Subject Name" ForeColor="#990000"></asp:Label>
                <asp:TextBox ID="txtSub" runat="server" ForeColor="#990000" CssClass="auto-style2"></asp:TextBox>
            </td>
            <td style="width: 380px">
                <br />
                <asp:Label ID="Label13" runat="server" Text="Subject" ForeColor="#990000"></asp:Label>
                <asp:DropDownList ID="ddlSubject" runat="server" Height="17px" Width="121px" ForeColor="#990000">
                </asp:DropDownList>
                <br />
                
            </td>
        </tr>
        <tr>
            <td style="width: 320px">
                <br />
                <asp:Label ID="Label14" runat="server" ForeColor="Black" Text="Marks For Correct Answer: "></asp:Label>
                <asp:TextBox ID="txtMarks" runat="server" ForeColor="Black"></asp:TextBox>
                <br />
                <asp:Label ID="Label15" runat="server" ForeColor="Black" Text="Negative Marks: "></asp:Label>
                <asp:TextBox ID="txtNegative" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label16" runat="server" ForeColor="Black" Text="Percentage: "></asp:Label>
                <asp:TextBox ID="txtPercentage" runat="server" ForeColor="Black"></asp:TextBox>
                <br />
                <br />
                <div class="text-info">
                <asp:Label ID="lblSubImg" runat="server" ForeColor="Black"></asp:Label>
                </div>
            </td>
            <td style="width: 380px">
                
                <table style="width: 100%" class="table">
                    <tr>
                        <td><asp:Label ID="Label3" runat="server" Text="Question" ForeColor="#990000"></asp:Label></td>
                        <td><asp:TextBox ID="txtQues" runat="server" ForeColor="#990000"></asp:TextBox>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="Label6" runat="server" Text="Answer 1" ForeColor="#990000"></asp:Label></td>
                        <td><asp:TextBox ID="txtA1" runat="server" ForeColor="#990000"></asp:TextBox>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="Label7" runat="server" Text="Answer 2" ForeColor="#990000"></asp:Label></td>
                        <td><asp:TextBox ID="txtA2" runat="server" ForeColor="#990000"></asp:TextBox>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="Label8" runat="server" Text="Answer 3" ForeColor="#990000"></asp:Label></td>
                        <td><asp:TextBox ID="txtA3" runat="server" ForeColor="#990000"></asp:TextBox>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td> <asp:Label ID="Label9" runat="server" Text="Answer 4" ForeColor="#990000"></asp:Label></td>
                        <td><asp:TextBox ID="txtA4" runat="server" ForeColor="#990000"></asp:TextBox>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="Label10" runat="server" Text="Correct Answer" ForeColor="#990000"></asp:Label></td>
                        <td><asp:TextBox ID="txtcAns" runat="server" ForeColor="#990000"></asp:TextBox>
                            <br />
                        </td>
                    </tr>
                </table>
                <div class="text-info">
                    <asp:Label ID="lblQuestion" runat="server" Text=""></asp:Label>
                </div>
                
            </td>
        </tr>
        <tr>
            <td style="width: 320px">
                <asp:Button ID="btnSub" runat="server" Text="Add Subject" ForeColor="#990000"  ValidationGroup="sub" OnClick="btnSub_Click" />
                <asp:Button ID="btnShowSub" runat="server" ForeColor="Black" Text="Show" OnClick="btnShowSub_Click" />
            </td>
            <td style="width: 380px">
                <asp:Button ID="btnQue" runat="server" Text="Add Question" ForeColor="#990000"  ValidationGroup="ques" OnClick="btnQue_Click" />
                <asp:Button ID="btnShowQues" runat="server" ForeColor="Black"  Text="Show" OnClick="btnShowQues_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 320px">
                <asp:GridView ID="gv_Sub" runat="server" AutoGenerateColumns="False" ForeColor="Black">
                    <Columns>
                        <asp:TemplateField HeaderText="Subject Name">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%#Eval("Sub_Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Correct Marks">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%#Eval("Correct_Marks") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Negative Marks">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%#Eval("Negative_Marks") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Percentage Marks">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%#Eval("Percentage_Marks") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        
                    </Columns>
                </asp:GridView>
            </td>
            <td style="width: 380px">
                <asp:GridView ID="gv_Q" runat="server" AutoGenerateColumns="False" ForeColor="Black" >
                    <Columns>
                        <asp:TemplateField HeaderText="Subject">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%#Eval("Sub_Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Question">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%#Eval("Q_Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Option 1">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%#Eval("Option1") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Option 2">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%#Eval("Option2") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Option 3">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%#Eval("Option3") %>'></asp:Label>
                            </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Option 4">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%#Eval("Option4") %>'></asp:Label>
                            </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Correct Answer">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%#Eval("C_Ans") %>'></asp:Label>
                            </ItemTemplate>
                        
                        </asp:TemplateField>
                        <%--<asp:TemplateField HeaderText="Action">
                            <ItemTemplate>
                                <asp:Button ID="btnEdit" runat="server" Text="Edit" CommandName="Edt" CommandArgument='<%#Eval("Q_Id") %>' ForeColor="Black" />
                                <asp:Button ID="btnDelete" runat="server" Text="Delete" CommandName="Dlt" CommandArgument='<%#Eval("Q_Id") %>' ForeColor="Black" />
                            </ItemTemplate>
                                </asp:TemplateField>--%>
                        
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style2 {
            margin-bottom: 0;
        }
    </style>
</asp:Content>
