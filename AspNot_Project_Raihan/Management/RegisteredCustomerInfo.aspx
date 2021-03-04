<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegisteredCustomerInfo.aspx.cs" Inherits="AspNot_Project_Raihan.Management.RegisteredCustomerInfo" %>

<%@ Register Src="~/UsersContorl/RegisteredCustInfo.ascx" TagPrefix="uc1" TagName="RegisteredCustInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:RegisteredCustInfo runat="server" ID="RegisteredCustInfo" />
</asp:Content>
