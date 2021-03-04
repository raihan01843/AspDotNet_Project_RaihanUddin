<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BookInfromation.ascx.cs" Inherits="AspNot_Project_Raihan.UsersContorl.BookInfromation" %>
<style type="text/css">
    .auto-style1 {
        width: 64%;
    }
    .auto-style2 {
        width: 214px;
    }
</style>

<table class="auto-style1" align="center">
    <tr>
        <td class="auto-style2">Book Infromation</td>
        <td>&nbsp;</td>
        <td rowspan="11">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [BookINformation]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="lblName" runat="server" Text="Book Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorname" runat="server" ControlToValidate="txtName" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
        </td>
    </tr>
     <tr>
        <td class="auto-style2">
            <asp:Label ID="lblPrice" runat="server" Text="Book price"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorprice" runat="server" ControlToValidate="txtPrice" ErrorMessage="Field Must be fill">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="lblEdition" runat="server" Text="Book Edition"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtEdition" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatoredition" runat="server" ControlToValidate="txtEdition" ErrorMessage="Field Must be fill">*</asp:RequiredFieldValidator>
        </td>
    </tr>
   
    
    <tr>
        <td class="auto-style2">
            <asp:Label ID="lblPid" runat="server" Text="Publisher ID"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlPID" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="PublisherName" DataValueField="PublisherID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Publisher]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="lblDescription" runat="server" Text="Description"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorDescription" runat="server" ControlToValidate="txtDescription" ErrorMessage="Field must be fill">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>
            <asp:CheckBox ID="chkAgree" runat="server" Text="I am Agree" />
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>
            <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" />
            <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />
            <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" />
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="lblBid" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:GridView ID="dgViewBook" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="BookID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="dgViewBook_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="BookID" HeaderText="BookID" InsertVisible="False" ReadOnly="True" SortExpression="BookID" />
                    <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
                    <asp:BoundField DataField="BookPrice" HeaderText="BookPrice" SortExpression="BookPrice" />
                    <asp:BoundField DataField="BookEdition" HeaderText="BookEdition" SortExpression="BookEdition" />
                    <asp:BoundField DataField="PublisherID" HeaderText="PublisherID" SortExpression="PublisherID" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                </Columns>
            </asp:GridView>
            </td>
    </tr>
    </table>

