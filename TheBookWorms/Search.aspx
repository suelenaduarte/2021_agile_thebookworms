<%@ Page Title="Search" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="TheBookWorms.Search" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Search Video Books by Title or Genre</h2>
    <p>&nbsp;</p>
   
    <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox> 
    <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
    <br />
    <br />

    <asp:Label ID="lbEmptySearch" runat="server" Font-Bold="True"  Font-Size="Larger" Text="No Results found!" Visible="False" Style="padding: 12px;text-align: center;"  BorderStyle="Double"  Width="621px" Height="50px" BackColor="#09F4F6"></asp:Label>

    <br />
    <div style="width: 635px; height: 263px; margin-right: 0px">
       <asp:DataList ID="DataList1" runat="server" DataKeyField="UserId" DataSourceID="SqlDataSource1"  RepeatColumns="3" RepeatDirection="Horizontal" Style="margin-left: 12px; margin-bottom: 0px" Width="621px" BorderStyle="Double">
            <ItemTemplate>
                  <table class="nav-justified videoTable">

                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Title") %>' ForeColor="Black"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("AuthorFirstName") %>' ForeColor="Black"></asp:Label>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("AuthorLastName") %>'></asp:Label>
                        </td>
                    </tr>
                   
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Genre") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("DateTimeBook") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("VideoUrl") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>

                <br />
                <br />
                 

            </ItemTemplate>
                        
           <FooterTemplate>

               <asp:Label Visible='<%#bool.Parse((DataList1.Items.Count==0).ToString())%>' 
               runat="server" ID="lblNoRecord" Text="No Results Found!" Font-Bold="True" Font-Size="Larger"></asp:Label>

           </FooterTemplate>

    
            
        </asp:DataList>
                 
        <br />
        <br />
        <br />


    </div>
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VideoContext %>" SelectCommand="SELECT * FROM [VideoData] WHERE (([Title] LIKE '%' + @Title + '%') OR ([Genre] LIKE '%' + @Genre + '%'))">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtSearch" Name="Title" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtSearch" Name="Genre" PropertyName="Text" Type="String" />
            </SelectParameters>


        </asp:SqlDataSource>
   
    </div>

   

</asp:Content>