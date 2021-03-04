using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AspNot_Project_Raihan.UsersContorl
{
    public partial class BookInfromation : System.Web.UI.UserControl
    {
        string cs = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        public void RefreshData()
        {
            if (Page.IsPostBack)
            {
                dgViewBook.DataBind();
            }
        }

        public void ClearAllData()
        {
            txtName.Text = "";
            txtEdition.Text = "";
            txtPrice.Text = "";
            txtDescription.Text = "";
           
            ddlPID.Text = ddlPID.Items[0].Value;

        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (txtName.Text != "" && txtPrice.Text != "" && txtEdition.Text != "" && txtDescription.Text != "" )
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("Insert Into BookInformation (BookName, BookPrice, BookEdition, PublisherID, Description ) Values(@bookname, @bookprice, @bookedtion, @publisherid, @description)", con);
                    cmd.Parameters.AddWithValue("@bookname", txtName.Text);
                    cmd.Parameters.AddWithValue("@bookprice", txtPrice.Text);
                    cmd.Parameters.AddWithValue("@bookedtion", txtEdition.Text);
                    cmd.Parameters.AddWithValue("@publisherid", ddlPID.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@description", txtDescription.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    RefreshData();
                    ClearAllData();
                    ShowAlert("Data Inserted Successfully");

                }
            }
            else
            {
                ShowAlert("Please Provide All Data");
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (txtName.Text != "" && txtEdition.Text != "" && txtPrice.Text != "" && txtDescription.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("Update BookInformation Set BookName=@bookname, BookPrice=@bookprice, BookEdition=@bookedtion, PublisherID=@publisherid, Description=@description Where BookID = @bookid ", con);


                    cmd.Parameters.AddWithValue("@bookid", lblBid.Text);

                    cmd.Parameters.AddWithValue("@bookname", txtName.Text);
                    cmd.Parameters.AddWithValue("@bookprice", txtPrice.Text);
                    cmd.Parameters.AddWithValue("@bookedtion", txtEdition.Text);
                   
                    cmd.Parameters.AddWithValue("@publisherid", ddlPID.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@description", txtDescription.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    RefreshData();
                    ClearAllData();
                    ShowAlert("Data Updated Successfully");

                }
            }
            else
            {
                ShowAlert("Please Provide All Data");
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            using (con = new SqlConnection(cs))
            {
                con.Open();
                cmd = new SqlCommand("Delete From BookInformation Where BookID=@bookid", con);
                cmd.Parameters.AddWithValue("@bookid", lblBid.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                ShowAlert("Data Deleted Successfully");
                RefreshData();
                ClearAllData();
            }
        }

        protected void dgViewBook_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblBid.Text = dgViewBook.SelectedRow.Cells[1].Text;
            txtName.Text = dgViewBook.SelectedRow.Cells[2].Text;
            txtPrice.Text = dgViewBook.SelectedRow.Cells[3].Text;
            txtEdition.Text = dgViewBook.SelectedRow.Cells[4].Text;
            
            ddlPID.Text = dgViewBook.SelectedRow.Cells[5].Text;
            txtDescription.Text = dgViewBook.SelectedRow.Cells[6].Text;
        }
        private void ShowAlert(string strmsg)
        {
            string str1;
            str1 = "<script language = 'javascript' type = 'text/javascript'> alert('" + strmsg + "');</script>";
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "JS", str1);
        }
    }
}