<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MyMasterPage.Master" AutoEventWireup="true" CodeBehind="Book.aspx.cs" Inherits="AspNot_Project_Raihan.ContentPages.Book" %>

<%@ Register Src="~/UsersContorl/BookInfromation.ascx" TagPrefix="uc1" TagName="BookInfromation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <uc1:BookInfromation runat="server" ID="BookInfromation" />
</asp:Content>
