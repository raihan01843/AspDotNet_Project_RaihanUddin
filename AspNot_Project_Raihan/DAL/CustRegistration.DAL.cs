using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace AspNot_Project_Raihan.DAL
{
    public class CustRegistration
    {
        public bool RegisterData(string CustomerName, string Gender, string Email, string DOB, string MobileNo, string Address, string Password)
        {
            ConString.con.Open();
            try
            {
                string query = "Insert Into CustomerRegistrations Values('" + CustomerName + "','" + Gender + "','" + Email + "','" + DOB + "','" + MobileNo + "','" + Address + "','" + Password + "')";

                SqlCommand cmd = new SqlCommand(query, ConString.con);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message.ToString());
            }
            finally
            {
                ConString.con.Close();
            }

        }
    }
}