﻿<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="TheBookWorms.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Contact Us</h2>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" /> 
    <section>
        
        
        <asp:Label ID="lblFirstName" runat="server" Text="First Name: "></asp:Label>
        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ErrorMessage="First Name is Required" ControlToValidate="txtFirstName" Display="None"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lblLastName" runat="server" Text="Last Name: "></asp:Label>
        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ErrorMessage="Last Name is Required" ControlToValidate="txtLastName" Display="None"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lblDate" runat="server" Text="Date: "></asp:Label>
        <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfDate" runat="server" ErrorMessage="Enter a valid date (mm/dd/yyyy)" ControlToValidate="txtDate" ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$" Display="None"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="revDate" runat="server" ErrorMessage="Enter a valid date (mm/dd/yyyy)" ControlToValidate="txtDate" ValidationExpression="^(((0?[1-9]|1[012])/(0?[1-9]|1\d|2[0-8])|(0?[13456789]|1[012])/(29|30)|(0?[13578]|1[02])/31)/(19|[2-9]\d)\d{2}|0?2/29/((19|[2-9]\d)(0[48]|[2468][048]|[13579][26])|(([2468][048]|[3579][26])00)))$" Display="None"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="lblEmail" runat="server" Text="Email: "></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfEmail" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail" ErrorMessage="Email is required" Display="None"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="revEmail" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail" ErrorMessage="Invalid Email type" Display="None"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="lblEmailConfirm" runat="server" Text="Confirm Email: "></asp:Label>
        <asp:TextBox ID="txtEmailConfirm" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="cvEmailConfirm" runat="server" ErrorMessage="Emails must match" ControlToValidate="txtEmailConfirm" ControlToCompare="txtEmail" Display="None"></asp:CompareValidator>
        <br />
        <br />
        <asp:Label ID="lblSubject" runat="server" Text="Subject: "></asp:Label>
        <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvSubject" runat="server" ErrorMessage="Subject is Required" ControlToValidate="txtSubject" Display="None"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lblMessage" runat="server" Text="Message: "></asp:Label>
        <asp:TextBox ID="txtMessage" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ErrorMessage="Message is Required" ControlToValidate="txtMessage" Display="None"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        <br />
        <br />
        <br />
        <div>
            <h3>Social Media</h3>
            <p>
                Twitter: <a href="https://twitter.com/cvtc">@CVTC</a>
            </p>
            <p>
                YouTube: <a href="https://www.youtube.com/channel/UCEMNNPIFMvuPNzQCqX9hfUA">Chippewa Valley Technical College</a>
            </p>
            <p>
                Instagram: <a href="https://www.instagram.com/chippewavalleytechnicalcollege/#">CVTC</a>
            </p>
        </div>
      
    </section>
</asp:Content>
