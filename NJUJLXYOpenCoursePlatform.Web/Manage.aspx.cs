using NJUJLXYOpenCoursePlatform.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Manage : System.Web.UI.Page
{
    UserService userSrv = new UserService();
    CourseService courseSrv = new CourseService();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["User"] != null)
            {
                long userId = long.Parse(Request.Cookies["User"].Values["UserId"]);
                lblTab1.Text = "我的课程";
                if (userSrv.GetIdentity(userId) == "管理员")
                {
                    lblTab1.Text = "重置课程";
                    LiteralDepartment.Text = "";
                    LiteralDepartment.Text += "<ul class=\"portfolio-filter mb30 text-center list-inline wow fadeIn\" data-wow-delay=\"0.5s\">" +
                                              "<li><a class=\"btn btn-primary btn-transparent active\" href=\"#\" data-filter=\"*\">全部</a></li>" +
                                              "<li><a class=\"btn btn-primary btn-transparent\" href=\"#\" data-filter=\".ise\">信息科学与工程学院</a></li>" +
                                              "<li><a class=\"btn btn-primary btn-transparent\" href=\"#\" data-filter=\".cm\">传媒学院</a></li>" +
                                              "<li><a class=\"btn btn-primary btn-transparent\" href=\"#\" data-filter=\".cz\">城市与土木工程学院</a></li>" +
                                              "<li><a class=\"btn btn-primary btn-transparent\" href=\"#\" data-filter=\".scls\">化学与生命科学学院</a></li>" +
                                              "<li><a class=\"btn btn-primary btn-transparent\" href=\"#\" data-filter=\".sy\">商学院</a></li>" +
                                              "<li><a class=\"btn btn-primary btn-transparent\" href=\"#\" data-filter=\".sfl\">外国语学院</a></li>" +
                                              "<li><a class=\"btn btn-primary btn-transparent\" href=\"#\" data-filter=\".ysxy\">艺术学院</a></li>" +
                                              "</ul>";
                    LiteralCourse.Text = "";
                    HashSet<int> courseIds = courseSrv.GetAllCourseId();
                    foreach (int courseId in courseIds)
                    {
                        LiteralCourse.Text += GetLi(courseId);
                    }
                }
                else if (userSrv.GetIdentity(userId) == "学生")
                {
                    LiteralDepartment.Text = "";
                    LiteralCourse.Text = "";
                    HashSet<int> courseIds = courseSrv.GetAllCourseId();
                    foreach (int courseId in courseIds)
                    {
                        LiteralCourse.Text += GetLiByUserId(courseId, userId);
                    }
                }
                else if (userSrv.GetIdentity(userId) == "教师")
                {
                    LiteralDepartment.Text = "";
                    LiteralCourse.Text = "";
                    HashSet<int> courseIds = courseSrv.GetAllCourseId();
                    foreach (int courseId in courseIds)
                    {
                        LiteralCourse.Text += GetLiByTeacherId(courseId, userId);
                    }
                    LiteralCourse.Text += "<li class=\"col-md-4 portfolio-item nopadding-lr isotope-item hover-item\">" +
                                          "<img src=\"Images/course/0.jpg\" class=\"img-responsive smoothie wow fadeIn\" data-wow-delay=\"0.5s\" />" +
                                          "<div class=\"overlay-item-caption smoothie wow fadeIn\" data-wow-delay=\"0.5s\">" +
                                          "<h3 class=\"vertical-center smoothie\">" +
                                          "<a href=\"Add.aspx\">添加课程</a>" +
                                          "</h3>" +
                                          "</div>" +
                                          "<div class=\"hover-item-caption smoothie\">" +
                                          "<div class=\"vertical-center smoothie\">" +
                                          "<a href=\"Add.aspx\" class=\"smoothie btn btn-primary btn-white page-scroll\">添加课程</a>" +
                                          "</div>" +
                                          "</div>" +
                                          "</li>";
                }
                lblUserId.Text = userId.ToString();
                lblIdentity.Text = userSrv.GetIdentity(userId);
                txtName.Text = userSrv.GetName(userId);
                txtSex.Text = userSrv.GetSex(userId);
                txtDepartment.Text = userSrv.GetDepartment(userId);
                txtEmail.Text = userSrv.GetEmail(userId);
            }
            else
            {
                Response.Redirect("~/Index.aspx");
            }
        }
    }

    protected void LkbtnChange_Click(object sender, EventArgs e)
    {
        if (Request.Cookies["User"] != null && Page.IsValid)
        {
            if (userSrv.Change(long.Parse(Request.Cookies["User"].Values["UserId"]), txtOldPassword.Text, txtPassword.Text, txtName.Text, txtSex.Text, txtDepartment.Text, txtEmail.Text) == true)
            {
                Response.Write("<script>window.alert('修改成功，请重新登录！')</script>");
                HttpCookie cookie = new HttpCookie("User")
                {
                    Expires = DateTime.Now.AddDays(-1)
                };
                Response.Cookies.Add(cookie);
                Response.Write("<script>window.location='SignIn.aspx'</script>");
            }
            else
            {
                Response.Write("<script>window.alert('修改失败！')</script>");
            }
        }
    }

    protected string GetLi(int courseId)
    {
        string deparment = courseSrv.GetDepartment(courseId);
        if (deparment == null)
        {
            return "";
        }
        string addr = courseSrv.GetDepartmentByAbbr(deparment);
        if (addr == null)
        {
            return "";
        }
        string name = courseSrv.GetName(courseId);
        if (name == null)
        {
            return "";
        }
        string result = "<li class=\"col-md-4 portfolio-item nopadding-lr " + addr + " isotope-item hover-item\">" +
                        "<img src=\"Images/course/" + courseId + ".jpg\" class=\"img-responsive smoothie wow fadeIn\" data-wow-delay=\"0.5s\" />" +
                        "<div class=\"overlay-item-caption smoothie wow fadeIn\" data-wow-delay=\"0.5s\">" +
                        "<h3 class=\"vertical-center smoothie\">" +
                        "<a href=\"Course.aspx?CourseId=" + courseId + "\">" + name + "</a>" +
                        "</h3>" +
                        "</div>" +
                        "<div class=\"hover-item-caption smoothie\">" +
                        "<div class=\"vertical-center smoothie\">" +
                        "<a href=\"Reset.aspx?CourseId=" + courseId + "\" class=\"smoothie btn btn-primary btn-white page-scroll\">重置</a>" +
                        "</div>" +
                        "</div>" +
                        "</li>";
        return result;
    }

    protected string GetLiByUserId(int courseId, long userId)
    {
        string deparment = courseSrv.GetDepartment(courseId);
        if (deparment == null)
        {
            return "";
        }
        string addr = courseSrv.GetDepartmentByAbbr(deparment);
        if (addr == null)
        {
            return "";
        }
        string name = courseSrv.GetName(courseId);
        if (name == null)
        {
            return "";
        }
        string result = "";
        if (userSrv.IsJoinCourse(userId, courseId))
        {
            result = "<li class=\"col-md-4 portfolio-item nopadding-lr " + addr + " isotope-item hover-item\">" +
                     "<img src=\"Images/course/" + courseId + ".jpg\" class=\"img-responsive smoothie wow fadeIn\" data-wow-delay=\"0.5s\" />" +
                     "<div class=\"overlay-item-caption smoothie wow fadeIn\" data-wow-delay=\"0.5s\">" +
                     "<h3 class=\"vertical-center smoothie\">" +
                     "<a href=\"Course.aspx?CourseId=" + courseId + "\">" + name + "</a>" +
                     "</h3>" +
                     "</div>" +
                     "<div class=\"hover-item-caption smoothie\">" +
                     "<div class=\"vertical-center smoothie\">" +
                     "<a href=\"Course.aspx?CourseId=" + courseId + "\" class=\"smoothie btn btn-primary btn-white page-scroll\">查看详情</a>" +
                     "</div>" +
                     "</div>" +
                     "</li>";
        }
        return result;
    }

    protected string GetLiByTeacherId(int courseId, long userId)
    {
        string deparment = courseSrv.GetDepartment(courseId);
        if (deparment == null)
        {
            return "";
        }
        string addr = courseSrv.GetDepartmentByAbbr(deparment);
        if (addr == null)
        {
            return "";
        }
        string name = courseSrv.GetName(courseId);
        if (name == null)
        {
            return "";
        }
        string result = "";
        if (userSrv.IsTeachCourse(userId, courseId))
        {
            result = "<li class=\"col-md-4 portfolio-item nopadding-lr " + addr + " isotope-item hover-item\">" +
                     "<img src=\"Images/course/" + courseId + ".jpg\" class=\"img-responsive smoothie wow fadeIn\" data-wow-delay=\"0.5s\" />" +
                     "<div class=\"overlay-item-caption smoothie wow fadeIn\" data-wow-delay=\"0.5s\">" +
                     "<h3 class=\"vertical-center smoothie\">" +
                     "<a href=\"Course.aspx?CourseId=" + courseId + "\">" + name + "</a>" +
                     "</h3>" +
                     "</div>" +
                     "<div class=\"hover-item-caption smoothie\">" +
                     "<div class=\"vertical-center smoothie\">" +
                     "<a href=\"Course.aspx?CourseId=" + courseId + "\" class=\"smoothie btn btn-primary btn-white page-scroll\">查看详情</a>" +
                     "</div>" +
                     "</div>" +
                     "</li>";
        }
        return result;
    }
}