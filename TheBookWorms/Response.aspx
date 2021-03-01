<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Response.aspx.cs" Inherits="TheBookWorms.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Thank You</h2>
    <section>
        <p>
            Hi, <asp:Label ID="lblFirstName" runat="server" Text=""></asp:Label> <asp:Label ID="lblLastName" runat="server" Text=""></asp:Label>.<br /><br />
            We have recieved your message and are super grateful to hear from you.<br /><br />
            You should receive an email at <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label> where you can stay in contact with us.<br /><br />
            Thanks,<br />
            The Book Worm Team
        </p>
    </section>
</asp:Content>
