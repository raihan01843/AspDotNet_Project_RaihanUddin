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
    public partial class PublisherInformation : System.Web.UI.UserControl
    {
        string cs = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        //SqlDataAdapter adapter;
        //DataTable dt;
        public void DataLoad()
        {
            if (Page.IsPostBack)
            {
                GridView1.DataBind();
            }
        }
        public void CleanAllControl()
        {

            txtAddress.Text = "";
            txtName.Text = "";
            chkAgree.Checked = false;

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            DataLoad();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtName.Text = GridView1.SelectedRow.Cells[2].Text;
            txtAddress.Text = GridView1.SelectedRow.Cells[3].Text;


            lblPid.Text = GridView1.SelectedRow.Cells[1].Text;
        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (chkAgree.Checked && txtName.Text != "" && txtAddress.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("INSERT INTO Publisher (PublisherName,Address) VALUES(@publishername,@address)", con);

                    cmd.Parameters.AddWithValue("@publishername", txtName.Text);
                    cmd.Parameters.AddWithValue("@address", txtAddress.Text);

                    cmd.ExecuteNonQuery();
                    DataLoad();
                    con.Close();

                    CleanAllControl();
                }
            }
            else
            {
                lblMessage.Text = "Some thing is wrong!!!!";
            }
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (chkAgree.Checked && txtName.Text != "" && txtAddress.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("UPDATE Publisher Set PublisherName=@publishername,Address=@address where PublisherID=@publisherid", con);
                    cmd.Parameters.AddWithValue("@publisherid", lblPid.Text);

                    cmd.Parameters.AddWithValue("@publishername", txtName.Text);
                    cmd.Parameters.AddWithValue("@address", txtAddress.Text);

                    cmd.ExecuteNonQuery();
                    DataLoad();
                    con.Close();

                    CleanAllControl();
                }
            }
            else
            {
                lblMessage.Text = "Some thing is wrong!!!!";
            }
        }
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            using (con = new SqlConnection(cs))
            {
                con.Open();
                cmd = new SqlCommand("DELETE FROM Publisher Where PublisherID=@publisherid", con);
                cmd.Parameters.AddWithValue("@publisherid", lblPid.Text);
                cmd.ExecuteNonQuery();

                con.Close();

                DataLoad();

                CleanAllControl();
            }
        }

    }
}