using MyPetShop.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyPetShop.BLL
{
    public class CustomerService
    {
        MyPetShopDataContext db = new MyPetShopDataContext();

        public int CheckLogin(string name, string password)
        {
            Customer customer = (from c in db.Customers
                                 where c.Name == name && c.Password == password
                                 select c).FirstOrDefault();
            if (customer != null)
            {
                return customer.CustomerId;
            }
            else
            {
                return 0;
            }
        }

        public void ChangePassword(int customerId, string password)
        {
            Customer customer = (from c in db.Customers
                                 where c.CustomerId == customerId
                                 select c).First();
            customer.Password = password;
            db.SubmitChanges();
        }

        public void ResetPassword(string name, string email)
        {
            Customer customer = (from c in db.Customers
                                 where c.Name == name && c.Email == email
                                 select c).First();
            customer.Password = name;
            db.SubmitChanges();
        }

        public bool IsNameExist(string name)
        {
            Customer customer = (from c in db.Customers
                                 where c.Name == name
                                 select c).FirstOrDefault();
            if (customer != null)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public bool IsEmailExist(string name, string email)
        {
            Customer customer = (from c in db.Customers
                                 where c.Name == name && c.Email == email
                                 select c).FirstOrDefault();
            if (customer != null)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public void Insert(string name, string password, string email)
        {
            Customer customer = new Customer
            {
                Name = name,
                Password = password,
                Email = email
            };
            db.Customers.InsertOnSubmit(customer);
            db.SubmitChanges();
        }
    }
}
