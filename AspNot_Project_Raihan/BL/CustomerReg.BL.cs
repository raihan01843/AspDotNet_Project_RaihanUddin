using AspNot_Project_Raihan.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AspNot_Project_Raihan.BL
{
    public class CustomerReg
    {
        private string _Name;
        private string _Gender;
        private string _Email;
        private string _DOB;
        private string _MobileNo;
        private string _Address;
        private string _Password;

        public string Name { get => _Name; set => _Name = value; }
        public string Gender { get => _Gender; set => _Gender = value; }
        public string Email { get => _Email; set => _Email = value; }
        public string DOB { get => _DOB; set => _DOB = value; }
        public string MobileNo { get => _MobileNo; set => _MobileNo = value; }
        public string Address { get => _Address; set => _Address = value; }
        public string Password { get => _Password; set => _Password = value; }
        public bool Save()
        {
            try
            {
                CustRegistration reg = new CustRegistration();
                reg.RegisterData(_Name, _Gender, _Email, _DOB, _MobileNo, _Address, _Password);
                return true;
            }
            catch (Exception)
            {
                throw new Exception("Not Executed");
            }
        }
    }
}