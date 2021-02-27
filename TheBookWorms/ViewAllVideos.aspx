<%@ Page Title="ViewAllVideos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewAllVideos.aspx.cs" Inherits="TheBookWorms.ViewAllVideos" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>View All Videos</h2>
    <div style="width: 635px; height: 263px; margin-right: 0px">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="UserId" DataSourceID="SqlDataSource1"  RepeatColumns="3" RepeatDirection="Horizontal" ShowFooter="False" ShowHeader="False" Style="margin-left: 12px; margin-bottom: 0px" Width="621px" BorderStyle="Double">
            <ItemTemplate>
                <table class="nav-justified videoTable">
                   <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("DateTimeBook") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Title") %>' ForeColor="Black"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("AuthorFirstName") %>' ForeColor="Black"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("AuthorLastName") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Genre") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br />
                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("VideoUrl") %>'></asp:Literal>
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#FFFFCC" />
        </asp:DataList>

        <br />
        <br />
        <br />


    </div>
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VideoContext %>" SelectCommand="SELECT * FROM [VideoData]"></asp:SqlDataSource>

    </div>

    



</asp:Content>