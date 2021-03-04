<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomerRegistration.aspx.cs" Inherits="AspNot_Project_Raihan.ContentPages.CustomerRegistration" %>

<%@ Register Src="~/UsersContorl/CustRegistrationUsrCtrl.ascx" TagPrefix="uc1" TagName="CustRegistrationUsrCtrl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:CustRegistrationUsrCtrl runat="server" ID="CustRegistrationUsrCtrl" />  
</asp:Content>



