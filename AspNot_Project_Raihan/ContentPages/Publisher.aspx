<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MyMasterPage.Master" AutoEventWireup="true" CodeBehind="Publisher.aspx.cs" Inherits="AspNot_Project_Raihan.ContentPages.Publisher" %>

<%@ Register Src="~/UsersContorl/PublisherInformationCtrl.ascx" TagPrefix="uc1" TagName="PublisherInformationCtrl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <uc1:PublisherInformationCtrl runat="server" ID="PublisherInformationCtrl" />
</asp:Content>
