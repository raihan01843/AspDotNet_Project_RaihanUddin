<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DataBoundControl.ascx.cs" Inherits="AspNot_Project_Raihan.UsersContorl.DataBoundControl" %>
<style type="text/css">
    .auto-style1 {
        text-align: center;
    }
</style>
<p class="auto-style1">
    <br />
    <strong>Delails View</strong></p>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [CustomerRegistrations]"></asp:SqlDataSource>
<asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="CustRegistrationID" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
    <Fields>
        <asp:BoundField DataField="CustRegistrationID" HeaderText="CustRegistrationID" InsertVisible="False" ReadOnly="True" SortExpression="CustRegistrationID" />
        <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" SortExpression="CustomerName" />
        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
        <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" SortExpression="MobileNo" />
        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
    </Fields>
</asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [CustomerRegistrations]"></asp:SqlDataSource>

<p class="auto-style1">
    <strong>Form View
</strong>
</p>
<p class="auto-style1">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="BookID" DataSourceID="SqlDataSource3">
        <EditItemTemplate>
            BookID:
            <asp:Label ID="BookIDLabel1" runat="server" Text='<%# Eval("BookID") %>' />
            <br />
            BookName:
            <asp:TextBox ID="BookNameTextBox" runat="server" Text='<%# Bind("BookName") %>' />
            <br />
            BookPrice:
            <asp:TextBox ID="BookPriceTextBox" runat="server" Text='<%# Bind("BookPrice") %>' />
            <br />
            BookEdition:
            <asp:TextBox ID="BookEditionTextBox" runat="server" Text='<%# Bind("BookEdition") %>' />
            <br />
            PublisherID:
            <asp:TextBox ID="PublisherIDTextBox" runat="server" Text='<%# Bind("PublisherID") %>' />
            <br />
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            BookName:
            <asp:TextBox ID="BookNameTextBox" runat="server" Text='<%# Bind("BookName") %>' />
            <br />
            BookPrice:
            <asp:TextBox ID="BookPriceTextBox" runat="server" Text='<%# Bind("BookPrice") %>' />
            <br />
            BookEdition:
            <asp:TextBox ID="BookEditionTextBox" runat="server" Text='<%# Bind("BookEdition") %>' />
            <br />
            PublisherID:
            <asp:TextBox ID="PublisherIDTextBox" runat="server" Text='<%# Bind("PublisherID") %>' />
            <br />
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            BookID:
            <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' />
            <br />
            BookName:
            <asp:Label ID="BookNameLabel" runat="server" Text='<%# Bind("BookName") %>' />
            <br />
            BookPrice:
            <asp:Label ID="BookPriceLabel" runat="server" Text='<%# Bind("BookPrice") %>' />
            <br />
            BookEdition:
            <asp:Label ID="BookEditionLabel" runat="server" Text='<%# Bind("BookEdition") %>' />
            <br />
            PublisherID:
            <asp:Label ID="PublisherIDLabel" runat="server" Text='<%# Bind("PublisherID") %>' />
            <br />
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
            <br />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [BookINformation]"></asp:SqlDataSource>
</p>


<p class="auto-style1">
    <strong>List View</strong></p>
<p class="auto-style1">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="CustRegistrationID" DataSourceID="SqlDataSource4">
        <AlternatingItemTemplate>
            <tr style="background-color:#FFF8DC;">
                <td>
                    <asp:Label ID="CustRegistrationIDLabel" runat="server" Text='<%# Eval("CustRegistrationID") %>' />
                </td>
                <td>
                    <asp:Label ID="CustomerNameLabel" runat="server" Text='<%# Eval("CustomerName") %>' />
                </td>
                <td>
                    <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
                </td>
                <td>
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                </td>
                <td>
                    <asp:Label ID="DOBLabel" runat="server" Text='<%# Eval("DOB") %>' />
                </td>
                <td>
                    <asp:Label ID="MobileNoLabel" runat="server" Text='<%# Eval("MobileNo") %>' />
                </td>
                <td>
                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                </td>
                <td>
                    <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color:#008A8C;color: #FFFFFF;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td>
                    <asp:Label ID="CustRegistrationIDLabel1" runat="server" Text='<%# Eval("CustRegistrationID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="CustomerNameTextBox" runat="server" Text='<%# Bind("CustomerName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
                </td>
                <td>
                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                </td>
                <td>
                    <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
                </td>
                <td>
                    <asp:TextBox ID="MobileNoTextBox" runat="server" Text='<%# Bind("MobileNo") %>' />
                </td>
                <td>
                    <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                </td>
                <td>
                    <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="CustomerNameTextBox" runat="server" Text='<%# Bind("CustomerName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
                </td>
                <td>
                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                </td>
                <td>
                    <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
                </td>
                <td>
                    <asp:TextBox ID="MobileNoTextBox" runat="server" Text='<%# Bind("MobileNo") %>' />
                </td>
                <td>
                    <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                </td>
                <td>
                    <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color:#DCDCDC;color: #000000;">
                <td>
                    <asp:Label ID="CustRegistrationIDLabel" runat="server" Text='<%# Eval("CustRegistrationID") %>' />
                </td>
                <td>
                    <asp:Label ID="CustomerNameLabel" runat="server" Text='<%# Eval("CustomerName") %>' />
                </td>
                <td>
                    <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
                </td>
                <td>
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                </td>
                <td>
                    <asp:Label ID="DOBLabel" runat="server" Text='<%# Eval("DOB") %>' />
                </td>
                <td>
                    <asp:Label ID="MobileNoLabel" runat="server" Text='<%# Eval("MobileNo") %>' />
                </td>
                <td>
                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                </td>
                <td>
                    <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                <th runat="server">CustRegistrationID</th>
                                <th runat="server">CustomerName</th>
                                <th runat="server">Gender</th>
                                <th runat="server">Email</th>
                                <th runat="server">DOB</th>
                                <th runat="server">MobileNo</th>
                                <th runat="server">Address</th>
                                <th runat="server">Password</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                <td>
                    <asp:Label ID="CustRegistrationIDLabel" runat="server" Text='<%# Eval("CustRegistrationID") %>' />
                </td>
                <td>
                    <asp:Label ID="CustomerNameLabel" runat="server" Text='<%# Eval("CustomerName") %>' />
                </td>
                <td>
                    <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
                </td>
                <td>
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                </td>
                <td>
                    <asp:Label ID="DOBLabel" runat="server" Text='<%# Eval("DOB") %>' />
                </td>
                <td>
                    <asp:Label ID="MobileNoLabel" runat="server" Text='<%# Eval("MobileNo") %>' />
                </td>
                <td>
                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                </td>
                <td>
                    <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [CustomerRegistrations]"></asp:SqlDataSource>
</p>



