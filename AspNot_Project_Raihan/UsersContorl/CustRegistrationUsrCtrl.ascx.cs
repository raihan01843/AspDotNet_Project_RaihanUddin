using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Net;
using System.Net.Mail;
using AspNot_Project_Raihan.BL;

namespace AspNot_Project_Raihan.UsersContorl
{
    public partial class CustRegistrationUsrCtrl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void ClearData()
        {
            txtName.Text = "";
            ddlGender.Text = ddlGender.Items[0].Value;
            txtEmail.Text = "";
            txtDOB.Text = DateTime.Today.Date.ToString();
            txtMobile.Text = "";
            txtAddress.Text = "";
            txtPassword.Text = "";
            txtConfirmPass.Text = "";
            chkBoxAgree.Checked = false;
            //lblMessage.Text = "";
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (chkBoxAgree.Checked && txtName.Text != "" && txtEmail.Text != "" && txtMobile.Text != "" && txtPassword.Text != "" && txtDOB.Text != "" && txtConfirmPass.Text != "")
            {
                try
                {
                    CustomerReg reg = new CustomerReg();
                    reg.Name = txtName.Text;
                    reg.Gender = ddlGender.SelectedValue;
                    reg.Email = txtEmail.Text;
                    reg.DOB = txtDOB.Text;
                    reg.MobileNo = txtMobile.Text;
                    reg.Address = txtAddress.Text;
                    reg.Password = txtPassword.Text;

                    bool status = reg.Save();
                    if (status == true)
                    {
                        ShowAlert("You Have Successfully Registered");

                        //Mail Send
                        sendMailToClient();
                        sendEmailToAuthority();
                        ClearData();

                    }
                    else
                    {
                        ShowAlert("Failed To Register");
                    }
                }
                catch (Exception ex)
                {
                    ShowAlert(ex.Message.ToString());
                }
            }
            else
            {
                //lblMessage.Text = "Please Provide All Data";
            }
        }
        private void ShowAlert(string strmsg)
        {
            string str1;
            str1 = "<script language = 'javascript' type = 'text/javascript'> alert('" + strmsg + "');</script>";
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "JS", str1);
        }
        protected void btnReset_Click(object sender, EventArgs e)
        {

        }
        private void sendMailToClient()
        {
            var fromAddress = "1258319raihan@gmail.com";
            const string fromPassword = "nvit-r44";
            var toAddress = txtEmail.Text;
            string subject = "Online Library Registration";

            string body = "Hello " + txtName.Text + " You Have Been Registered Succesfully. \n";
            body += "You Can Now Enjoy Our Online Library Facility \n";





            //smtp settings

            var smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
            smtp.Timeout = 20000;

            //Passing Value to smtp object

            smtp.Send(fromAddress, toAddress, subject, body);
        }
        protected void sendEmailToAuthority()
        {
            var fromAddress = "1258319raihan@gmail.com";
            const string fromPassword = "nvit-r44";
            var toAddress = "1258319raihan@gmail.com";
            string subject = "Customer Registration";

            string body = txtName.Text + " Has Registered. \n";
            body += "His/Her Information Are Provided Below : \n";
            body += "Name : " + txtName.Text + "\n";
            body += "Email : " + txtEmail.Text + "\n";
            body += "BirthDate  : " + txtDOB.Text + "\n";
            body += "Gender : " + ddlGender.Text + "\n";
            body += "Mobile No : " + txtMobile.Text + "\n";


            //smtp settings

            var smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
            smtp.Timeout = 20000;

            //Passing Value to smtp object

            smtp.Send(fromAddress, toAddress, subject, body);

        }
    }
}