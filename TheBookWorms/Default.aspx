<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TheBookWorms._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>The Book Worms</h1>
        <p class="lead">The Book Worms is a free website for learning about books.</p>
        <p><a runat="server" href="~/About" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Best C# Programming Books</h2>
            <p>
                Our picks for the Best Books to Learn C#.
            <p>
                <a class="btn btn-default" href="https://www.youtube.com/watch?v=b6RhpiueKKg">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Best Books to Learn ASP .NET</h2>
            <p>
                Our picks for the Best Books to Learn ASP.NET.
            </p>
            <p>
                <a class="btn btn-default" href="https://www.youtube.com/watch?v=MojVMiPTG5o">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Algorithms and Data Structures</h2>
            <p>
                Our picks for the best books to learn about Algorithms and Data Structures.
            </p>
            <p>
                <a class="btn btn-default" href="https://www.youtube.com/watch?v=PBWFNGYjUBY">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
