<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AspNot_Project_Raihan._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="background-image:url(img/pexels.jpg); color:white; background-repeat:no-repeat; background-size:cover; background-position:center;">
         <h1 style="text-shadow: 5px 5px 10px #333;">Library</h1>
        <h2 class="lead" style="text-shadow: 3px 3px 5px #333;">Admin Login : User Name : nipa@gmail.com | Password : Nipa@123%</h2>
        <p><a href="Management/Admin.aspx" class="btn btn-primary btn-lg">Admin Login &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <img width="160px" src="img/pexels01.jpg" />
            <h2> Read </h2>

            <p>
                When you are always rading the you are earning the knowlage everywhere
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <img width="170px" src="img/Searching.jpg" />
            <h2>Searching Book</h2>
            <p>
                you can always search the book
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <img  width="160px" src="img/buy.jpg" />
            <h2>Purchase</h2>
            <p>
                You can easily purchase the book pay for online .
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
