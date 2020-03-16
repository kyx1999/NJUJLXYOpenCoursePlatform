using NJUJLXYOpenCoursePlatform.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Department : System.Web.UI.Page
{
    CourseService courseSrv = new CourseService();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["Addr"] != null && Request.QueryString["Addr"] != "")
        {
            if (Request.QueryString["Addr"] == "ise")
            {
                lblTitle.Text = "信息科学与工程学院";
                lblDescn.Text = "我们是信息科学与工程学院。";
            }
            else if (Request.QueryString["Addr"] == "cm")
            {
                lblTitle.Text = "传媒学院";
                lblDescn.Text = "我们是传媒学院。";
            }
            else if (Request.QueryString["Addr"] == "cz")
            {
                lblTitle.Text = "城市与土木工程学院";
                lblDescn.Text = "我们是城市与土木工程学院。";
            }
            else if (Request.QueryString["Addr"] == "scls")
            {
                lblTitle.Text = "化学与生命科学学院";
                lblDescn.Text = "我们是化学与生命科学学院。";
            }
            else if (Request.QueryString["Addr"] == "sy")
            {
                lblTitle.Text = "商学院";
                lblDescn.Text = "我们是商学院。";
            }
            else if (Request.QueryString["Addr"] == "sfl")
            {
                lblTitle.Text = "外国语学院";
                lblDescn.Text = "我们是外国语学院。";
            }
            else if (Request.QueryString["Addr"] == "ysxy")
            {
                lblTitle.Text = "艺术学院";
                lblDescn.Text = "我们是艺术学院。";
            }
            else
            {
                Response.Redirect("~/Index.aspx");
            }
            LiteralCourse.Text = "";
            HashSet<int> courseIds = courseSrv.GetAllCourseId();
            foreach (int courseId in courseIds)
            {
                LiteralCourse.Text += GetLiByAddr(courseId, Request.QueryString["Addr"]);
            }
        }
        else
        {
            Response.Redirect("~/Index.aspx");
        }
    }

    protected string GetLiByAddr(int courseId, string addr)
    {
        string deparment = courseSrv.GetDepartment(courseId);
        if (deparment == null)
        {
            return "";
        }
        string courseAddr = courseSrv.GetDepartmentByAbbr(deparment);
        if (courseAddr == null)
        {
            return "";
        }
        string name = courseSrv.GetName(courseId);
        if (name == null)
        {
            return "";
        }
        string result = "";
        if (courseAddr == addr)
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