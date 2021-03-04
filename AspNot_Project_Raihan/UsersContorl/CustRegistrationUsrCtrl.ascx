<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CustRegistrationUsrCtrl.ascx.cs" Inherits="AspNot_Project_Raihan.UsersContorl.CustRegistrationUsrCtrl" %>
<div class="container ">
    <div class="row">
        <div class="col-md-6 mx-auto">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <center>
                           <img width="100px" src="../img/user.jpg"/>

                        </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                           <h3>Registration Form</h3>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <hr>
                        </div>

                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <label>Full Name</label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="txtName" ErrorMessage="Name Is Required">*</asp:RequiredFieldValidator>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="txtName" runat="server" placeholder="Full Name"></asp:TextBox>
                            </div>

                        </div>

                        <div class="col-md-6">
                            <label>Date Of Birth</label>
                            <asp:RangeValidator ID="RangeValidatorDOB" runat="server" ControlToValidate="txtDOB" ErrorMessage="Date of birth Should be in Between 1950-2020" MaximumValue="12/12/2020" MinimumValue="01/01/1950" Type="Date">*</asp:RangeValidator>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="txtDOB" runat="server" placeholder="Date of Birth" TextMode="Date"></asp:TextBox>
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-md-6">
                            <label>Contact No</label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorMobile" runat="server" ControlToValidate="txtMobile" ErrorMessage="Mobile Number Is Required">*</asp:RequiredFieldValidator>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="txtMobile" runat="server" placeholder="Contact Number"></asp:TextBox>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <label>Email</label>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email Format Is Not Valid!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="txtEmail" runat="server" placeholder="Email ID"></asp:TextBox>
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-md-6">
                            <label>Gender</label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorGender" runat="server" ControlToValidate="ddlGender" ErrorMessage="Pick a Valid Gender value [Male,Female or Others]" InitialValue="0">*</asp:RequiredFieldValidator>
                            <div class="form-group">
                                <asp:DropDownList CssClass="form-control" ID="ddlGender" runat="server">
                                    <asp:ListItem Value="0">Choose Any</asp:ListItem>
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                    <asp:ListItem>Others</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <label>Address</label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address Is Required!">*</asp:RequiredFieldValidator>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="txtAddress" runat="server" placeholder="Address"></asp:TextBox>
                            </div>
                        </div>
                    </div>



                    <div class="row">
                        <div class="col-md-6">
                            <label>Password</label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password Is Required!">*</asp:RequiredFieldValidator>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="txtPassword" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <label>Confirm Password</label>
                            <asp:CompareValidator ID="CompareValidatorConfirmPass" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPass" ErrorMessage="Password Not Matched!">*</asp:CompareValidator>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="txtConfirmPass" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-md-12">
                            <center>
                            <asp:CheckBox ID="chkBoxAgree" runat="server" CssClass="form-control" Text="Yes, I Agree All Terms And Conditions!"></asp:CheckBox>
                        </center>
                        </div>
                    </div>

                    <br />

                    <div class="row">
                        <div class="col">
                            <asp:Button class="btn btn-success btn-block btn-lg" ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />

                        </div>
                    </div>
                </div>
            </div>
            <br>

            <div class="col-md-6 mx-auto">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </div>
        </div>
        <div class="col-md-6 mx-auto">

            <div class="card">
                <div class="card-body">
                </div>
            </div>

        </div>
    </div>
</div>



