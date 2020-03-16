using NJUJLXYOpenCoursePlatform.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NJUJLXYOpenCoursePlatform.BLL
{
    public class CourseService
    {
        NJUJLXYOpenCoursePlatformDataContext db = new NJUJLXYOpenCoursePlatformDataContext();

        public bool IsCourseIdExist(int courseId)
        {
            Course course = (from c in db.Courses
                             where c.CourseId == courseId
                             select c).FirstOrDefault();
            if (course != null)
            {
                return true;
            }
            return false;
        }

        public string GetName(int courseId)
        {
            Course course = (from c in db.Courses
                             where c.CourseId == courseId
                             select c).FirstOrDefault();
            if (course != null)
            {
                return course.Name;
            }
            return null;
        }

        public string GetDescn(int courseId)
        {
            Course course = (from c in db.Courses
                             where c.CourseId == courseId
                             select c).FirstOrDefault();
            if (course != null)
            {
                return course.Descn;
            }
            return null;
        }

        public string GetDetail(int courseId)
        {
            Course course = (from c in db.Courses
                             where c.CourseId == courseId
                             select c).FirstOrDefault();
            if (course != null)
            {
                return course.Detail;
            }
            return null;
        }

        public long GetTeacherId(int courseId)
        {
            Course course = (from c in db.Courses
                             where c.CourseId == courseId
                             select c).FirstOrDefault();
            if (course != null)
            {
                return course.TeacherId;
            }
            return 0;
        }

        public string GetTeacher(int courseId)
        {
            Course course = (from c in db.Courses
                             where c.CourseId == courseId
                             select c).FirstOrDefault();
            if (course != null)
            {
                User user = (from u in db.Users
                             where u.UserId == course.TeacherId
                             select u).FirstOrDefault();
                if (user != null)
                {
                    return user.Name;
                }
            }
            return null;
        }

        public string GetDate(int courseId)
        {
            Course course = (from c in db.Courses
                             where c.CourseId == courseId
                             select c).FirstOrDefault();
            if (course != null)
            {
                return course.Date.ToString();
            }
            return null;
        }

        public int GetCredit(int courseId)
        {
            Course course = (from c in db.Courses
                             where c.CourseId == courseId
                             select c).FirstOrDefault();
            if (course != null)
            {
                return course.Credit;
            }
            return 0;
        }

        public string GetDepartment(int courseId)
        {
            Course course = (from c in db.Courses
                             where c.CourseId == courseId
                             select c).FirstOrDefault();
            if (course != null)
            {
                User user = (from u in db.Users
                             where u.UserId == course.TeacherId
                             select u).FirstOrDefault();
                if (user != null)
                {
                    return user.Department;
                }
                return null;
            }
            return null;
        }

        public HashSet<int> GetAllCourseId()
        {
            HashSet<int> result = new HashSet<int>();
            var courses = (from c in db.Courses
                           select c);
            foreach (var course in courses)
            {
                result.Add(course.CourseId);
            }
            return result;
        }

        public string GetDepartmentByAbbr(string name)
        {
            if (name == "信息科学与工程学院")
            {
                return "ise";
            }
            else if (name == "传媒学院")
            {
                return "cm";
            }
            else if (name == "城市与土木工程学院")
            {
                return "cz";
            }
            else if (name == "化学与生命科学学院")
            {
                return "scls";
            }
            else if (name == "商学院")
            {
                return "sy";
            }
            else if (name == "外国语学院")
            {
                return "sfl";
            }
            else if (name == "艺术学院")
            {
                return "ysxy";
            }
            return null;
        }

        public int[] Get4Recommend()
        {
            var records = from r in db.Registers
                          group r by r.CourseId into g
                          select new
                          {
                              g.Key,
                              Count = g.Count()
                          };
            int size;
            if (records != null && (size = records.Count()) > 0)
            {
                var count = from r in records
                            orderby r.Count descending
                            select r;
                int[] result = new int[4 < size ? 4 : size];
                var resultAll = count.ToArray();
                for (int i = 0; i < 4 && i < size; i++)
                {
                    result[i] = resultAll[i].Key;
                }
                return result;
            }
            return null;
        }

        public void Insert(int courseId, string name, string descn, string detail, long teacherId, int credit)
        {
            Course course = new Course
            {
                CourseId = courseId,
                Name = name,
                Descn = descn,
                Detail = detail,
                TeacherId = teacherId,
                Date = DateTime.Now,
                Credit = credit
            };
            db.Courses.InsertOnSubmit(course);
            db.SubmitChanges();
        }

        public bool Change(int courseId, string name, string descn, string detail, long teacherId, int credit)
        {
            Course course = (from c in db.Courses
                             where c.CourseId == courseId
                             select c).FirstOrDefault();
            if (course != null)
            {
                course.Name = name;
                course.Descn = descn;
                course.Detail = detail;
                course.TeacherId = teacherId;
                course.Credit = credit;
                var comments = from c in db.Comments
                               where c.CourseId == courseId
                               select c;
                foreach (Comment comment in comments)
                {
                    db.Comments.DeleteOnSubmit(comment);
                }
                var records = from r in db.Registers
                              where r.CourseId == courseId
                              select r;
                foreach (Register record in records)
                {
                    db.Registers.DeleteOnSubmit(record);
                }
                db.SubmitChanges();
                return true;
            }
            return false;
        }

        public bool Delete(int courseId)
        {
            Course course = (from c in db.Courses
                             where c.CourseId == courseId
                             select c).FirstOrDefault();
            if (course != null)
            {
                var comments = from c in db.Comments
                               where c.CourseId == courseId
                               select c;
                foreach (Comment comment in comments)
                {
                    db.Comments.DeleteOnSubmit(comment);
                }
                var records = from r in db.Registers
                              where r.CourseId == courseId
                              select r;
                foreach (Register record in records)
                {
                    db.Registers.DeleteOnSubmit(record);
                }
                db.Courses.DeleteOnSubmit(course);
                db.SubmitChanges();
                return true;
            }
            return false;
        }

        public int GetStudentNumber(int courseId)
        {
            var records = from r in db.Registers
                          where r.CourseId == courseId
                          select r;
            return records.Count();
        }

        public void InsertRegister(long userId, int courseId)
        {
            Register register = new Register
            {
                UserId = userId,
                CourseId = courseId,
                Grade = null
            };
            db.Registers.InsertOnSubmit(register);
            db.SubmitChanges();
        }

        public int[] GetCommentIds(int courseId)
        {
            var comments = from c in db.Comments
                           where c.CourseId == courseId
                           orderby c.DateTime descending
                           select c;
            if (comments != null && comments.Count() > 0)
            {
                int[] result = new int[comments.Count()];
                for (int i = 0; i < comments.Count(); i++)
                {
                    result[i] = comments.ToArray()[i].CommentId;
                }
                return result;
            }
            return null;
        }

        public string GetCommentUserName(int commentId)
        {
            Comment comment = (from c in db.Comments
                               where c.CommentId == commentId
                               select c).FirstOrDefault();
            if (comment != null)
            {
                User user = (from u in db.Users
                             where u.UserId == comment.UserId
                             select u).FirstOrDefault();
                if (user != null)
                {
                    return user.Name;
                }
            }
            return null;
        }

        public string GetCommentDate(int commentId)
        {
            Comment comment = (from c in db.Comments
                               where c.CommentId == commentId
                               select c).FirstOrDefault();
            if (comment != null)
            {
                return comment.DateTime.ToString();
            }
            return null;
        }

        public string GetCommentContent(int commentId)
        {
            Comment comment = (from c in db.Comments
                               where c.CommentId == commentId
                               select c).FirstOrDefault();
            if (comment != null)
            {
                return comment.Content;
            }
            return null;
        }

        public void InsertComment(long userId, int courseId, string content)
        {
            Comment comment = new Comment
            {
                UserId = userId,
                CourseId = courseId,
                Content = content,
                DateTime = DateTime.Now
            };
            db.Comments.InsertOnSubmit(comment);
            db.SubmitChanges();
        }
    }
}
