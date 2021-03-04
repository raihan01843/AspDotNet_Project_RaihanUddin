<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="RegisteredCustInfo.ascx.cs" Inherits="AspNot_Project_Raihan.UsersContorl.RegisteredCustInfo" %>

<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CustRegistrationID" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="CustRegistrationID" HeaderText="CustRegistrationID" InsertVisible="False" ReadOnly="True" SortExpression="CustRegistrationID" />
        <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" SortExpression="CustomerName" />
        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
        <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" SortExpression="MobileNo" />
        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [CustomerRegistrations] WHERE [CustRegistrationID] = @CustRegistrationID" InsertCommand="INSERT INTO [CustomerRegistrations] ([CustomerName], [Gender], [Email], [DOB], [MobileNo], [Address], [Password]) VALUES (@CustomerName, @Gender, @Email, @DOB, @MobileNo, @Address, @Password)" SelectCommand="SELECT * FROM [CustomerRegistrations]" UpdateCommand="UPDATE [CustomerRegistrations] SET [CustomerName] = @CustomerName, [Gender] = @Gender, [Email] = @Email, [DOB] = @DOB, [MobileNo] = @MobileNo, [Address] = @Address, [Password] = @Password WHERE [CustRegistrationID] = @CustRegistrationID">
    <DeleteParameters>
        <asp:Parameter Name="CustRegistrationID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="CustomerName" Type="String" />
        <asp:Parameter Name="Gender" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter DbType="Date" Name="DOB" />
        <asp:Parameter Name="MobileNo" Type="String" />
        <asp:Parameter Name="Address" Type="String" />
        <asp:Parameter Name="Password" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="CustomerName" Type="String" />
        <asp:Parameter Name="Gender" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter DbType="Date" Name="DOB" />
        <asp:Parameter Name="MobileNo" Type="String" />
        <asp:Parameter Name="Address" Type="String" />
        <asp:Parameter Name="Password" Type="String" />
        <asp:Parameter Name="CustRegistrationID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>


