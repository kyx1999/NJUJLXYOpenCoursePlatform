using NJUJLXYOpenCoursePlatform.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Index : System.Web.UI.Page
{
    CourseService courseSrv = new CourseService();

    protected void Page_Load(object sender, EventArgs e)
    {
        LiteralCourse.Text = "";
        HashSet<int> courseIds = courseSrv.GetAllCourseId();
        foreach (int courseId in courseIds)
        {
            LiteralCourse.Text += GetLi(courseId);
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
                        "<a href=\"Course.aspx?CourseId=" + courseId + "\" class=\"smoothie btn btn-primary btn-white page-scroll\">查看详情</a>" +
                        "</div>" +
                        "</div>" +
                        "</li>";
        return result;
    }
}