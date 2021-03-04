<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MyMasterPage.Master" AutoEventWireup="true" CodeBehind="RoLE.aspx.cs" Inherits="AspNot_Project_Raihan.ContentPages.RoLE" %>

<%@ Register Src="~/UsersContorl/RoleManagement.ascx" TagPrefix="uc1" TagName="RoleManagement" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <uc1:RoleManagement runat="server" id="RoleManagement" />
</asp:Content>
