<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DataBound.aspx.cs" Inherits="AspNot_Project_Raihan.ContentPages.DataBound" %>

<%@ Register Src="~/UsersContorl/DataBoundControl.ascx" TagPrefix="uc1" TagName="DataBoundControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:DataBoundControl runat="server" id="DataBoundControl" />
</asp:Content>
