using NJUJLXYOpenCoursePlatform.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NJUJLXYOpenCoursePlatform.BLL
{
    public class UserService
    {
        NJUJLXYOpenCoursePlatformDataContext db = new NJUJLXYOpenCoursePlatformDataContext();

        public bool IsUserIdExist(long userId)
        {
            User user = (from u in db.Users
                         where u.UserId == userId
                         select u).FirstOrDefault();
            if (user != null)
            {
                return true;
            }
            return false;
        }

        public long CheckSignIn(long userId, string password)
        {
            User user = (from u in db.Users
                         where u.UserId == userId && u.Password == password
                         select u).FirstOrDefault();
            if (user != null)
            {
                return user.UserId;
            }
            else
            {
                return 0;
            }
        }

        public string ResetPassword(long userId)
        {
            User user = (from u in db.Users
                         where u.UserId == userId
                         select u).FirstOrDefault();
            if (user != null)
            {
                user.Password = user.UserId.ToString();
                db.SubmitChanges();
                return user.Password;
            }
            return null;
        }

        public string GetName(long userId)
        {
            User user = (from u in db.Users
                         where u.UserId == userId
                         select u).FirstOrDefault();
            if (user != null)
            {
                return user.Name;
            }
            return null;
        }

        public string GetSex(long userId)
        {
            User user = (from u in db.Users
                         where u.UserId == userId
                         select u).FirstOrDefault();
            if (user != null)
            {
                return user.Sex.Trim();
            }
            return null;
        }

        public string GetDepartment(long userId)
        {
            User user = (from u in db.Users
                         where u.UserId == userId
                         select u).FirstOrDefault();
            if (user != null)
            {
                return user.Department;
            }
            return null;
        }

        public string GetIdentity(long userId)
        {
            User user = (from u in db.Users
                         where u.UserId == userId
                         select u).FirstOrDefault();
            if (user != null)
            {
                return user.Identity.Trim();
            }
            return null;
        }

        public string GetEmail(long userId)
        {
            User user = (from u in db.Users
                         where u.UserId == userId
                         select u).FirstOrDefault();
            if (user != null)
            {
                return user.Email;
            }
            return null;
        }

        public bool IsJoinCourse(long userId, int courseId)
        {
            Register register = (from r in db.Registers
                                 where r.UserId == userId && r.CourseId == courseId
                                 select r).FirstOrDefault();
            if (register != null)
            {
                return true;
            }
            return false;
        }

        public bool IsTeachCourse(long userId, int courseId)
        {
            Course course = (from c in db.Courses
                             where c.TeacherId == userId && c.CourseId == courseId
                             select c).FirstOrDefault();
            if (course != null)
            {
                return true;
            }
            return false;
        }

        public void Insert(long userId, string password, string name, string sex, string department, string identity, string email)
        {
            User user = new User
            {
                UserId = userId,
                Password = password,
                Name = name,
                Sex = sex,
                Department = department,
                Identity = identity,
                Email = email
            };
            db.Users.InsertOnSubmit(user);
            db.SubmitChanges();
        }

        public bool Change(long userId, string oldPassword, string password, string name, string sex, string department, string email)
        {
            User user = (from u in db.Users
                         where u.UserId == userId && u.Password == oldPassword
                         select u).FirstOrDefault();
            if (user != null)
            {
                user.Password = password;
                user.Name = name;
                user.Sex = sex;
                user.Department = department;
                user.Email = email;
                db.SubmitChanges();
                return true;
            }
            return false;
        }
    }
}
