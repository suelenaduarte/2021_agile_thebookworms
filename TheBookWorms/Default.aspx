<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TheBookWorms._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

      <table border="1" style="width: 50%; height: 288px">
        <caption>Share Your Knowledge Book in a Video</caption>
        <tr>
            <td style="width: 177px">Video Title</td>
            <td style="width: 323px">
                <asp:TextBox ID="title" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="*Title field is required" ControlToValidate="title" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 200px">First Name</td>
            <td style="width: 323px">
                <asp:TextBox ID="firstName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Author first name field is required" ControlToValidate="firstName" ForeColor="Red"></asp:RequiredFieldValidator>

            </td>
        </tr>

        <tr>
            <td style="width: 200px">Last Name</td>
            <td style="width: 323px">
                <asp:TextBox ID="lastName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Author last name field is required" ControlToValidate="lastName" ForeColor="Red"></asp:RequiredFieldValidator>

            </td>
        </tr>

        <tr>
            <td style="width: 200px">Genre<br /></td>
            <td style="width: 323px">
                <asp:TextBox ID="genre" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Genre name field is required" ControlToValidate="genre" ForeColor="Red"></asp:RequiredFieldValidator>

            </td>
        </tr>

        <tr>
            <td style="width: 200px">Date Created<br /></td>
            <td style="width: 323px">

                <asp:TextBox ID="dateCreated" TextMode="DateTimeLocal" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Date Created name field is required" ControlToValidate="dateCreated" ForeColor="Red"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td style="width: 177px">Upload Video</td>
            <td style="width: 323px">
                <asp:FileUpload ID="videoUpload" runat="server" />
                <asp:RequiredFieldValidator runat="server" Display="Dynamic" ErrorMessage="*Upload video field is required. (mp4 video file)" ControlToValidate="videoUpload" ID="videoError" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator Display="Dynamic" ValidationExpression="([a-zA-Z0-9\s_\\.\'#()-:])+(.mp4|.MP4)$" ControlToValidate="videoUpload" runat="server" ForeColor="Red" ErrorMessage="Please upload
                    a mp4 Video File" ID="RegularExpressionValidator1" />
            </td>
        </tr>
        <tr>
            <td style="width: 177px">&nbsp;</td>
            <td style="width: 323px">
                <asp:Button ID="uploadVideo" runat="server" Text="Save Video" OnClick="UploadVideo" />
                <br />
                <br />
                <br />
                <asp:Label ID="lblSuccess" runat="server"></asp:Label>
                <br />
                <br />
                <asp:HyperLink CssClass="HyperLink2" ID="HyperLink2" runat="server" NavigateUrl="~/ViewAllVideos.aspx">View All Uploaded Videos</asp:HyperLink>
            </td>
            
        </tr>
          
    </table>
    

    <br />
    
 

</asp:Content>
