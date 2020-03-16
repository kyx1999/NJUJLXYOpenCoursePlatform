using NJUJLXYOpenCoursePlatform.BLL;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Course : System.Web.UI.Page
{
    UserService userSrv = new UserService();
    CourseService courseSrv = new CourseService();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["CourseId"] != null && Request.QueryString["CourseId"] != "" && courseSrv.IsCourseIdExist(int.Parse(Request.QueryString["CourseId"])))
        {
            imgCourse.ImageUrl = "Images/course/" + Request.QueryString["CourseId"] + ".jpg";
            lblTitle.Text = courseSrv.GetName(int.Parse(Request.QueryString["CourseId"]));
            lblTitle2.Text = lblTitle.Text;
            lblDescn1.Text = "开课院系：" + courseSrv.GetDepartment(int.Parse(Request.QueryString["CourseId"]));
            lblDescn2.Text = "任课老师：" + courseSrv.GetTeacher(int.Parse(Request.QueryString["CourseId"]));
            lblDescn3.Text = "开课时间：" + courseSrv.GetDate(int.Parse(Request.QueryString["CourseId"]));
            lblDescn4.Text = "课程简介：" + courseSrv.GetDescn(int.Parse(Request.QueryString["CourseId"]));
            lblDescn5.Text = "课程学分：" + courseSrv.GetCredit(int.Parse(Request.QueryString["CourseId"]));
            lblDescn6.Text = "选课人数：" + courseSrv.GetStudentNumber(int.Parse(Request.QueryString["CourseId"]));
            lblDetail.Text = courseSrv.GetDetail(int.Parse(Request.QueryString["CourseId"]));
            LiteralRecommend.Text = "";
            int[] recommend = courseSrv.Get4Recommend();
            if (recommend != null)
            {
                foreach (int i in recommend)
                {
                    LiteralRecommend.Text += GetRecommend(i);
                }
            }
            if (Request.Cookies["User"] != null)
            {
                if (userSrv.IsJoinCourse(long.Parse(Request.Cookies["User"].Values["UserId"]), int.Parse(Request.QueryString["CourseId"])) || userSrv.GetIdentity(long.Parse(Request.Cookies["User"].Values["UserId"])) == "教师" || userSrv.GetIdentity(long.Parse(Request.Cookies["User"].Values["UserId"])) == "管理员")
                {
                    lkbtnJoin.Text = "下载课程资料";
                }
                else
                {
                    lkbtnJoin.Text = "加入课程";
                }
            }
            else
            {
                lkbtnJoin.Text = "加入课程";
            }
            LiteralComment.Text = "";
            int[] comments = courseSrv.GetCommentIds(int.Parse(Request.QueryString["CourseId"]));
            if (comments != null)
            {
                foreach (int i in comments)
                {
                    LiteralComment.Text += GetComment(i);
                }
            }
        }
        else
        {
            Response.Redirect("~/Index.aspx");
        }
    }

    protected string GetRecommend(int courseId)
    {
        string result = "<div class=\"media\">" +
                        "<div class=\"pull-left\">" +
                        "<img class=\"widget-img\" src=\"Images/course/" + courseId + ".jpg\" height=\"60\" width=\"60\">" +
                        "</div>" +
                        "<div class=\"media-body\">" +
                        "<span class=\"media-heading\">" +
                        "<a class=\"coloured\" href=\"Course.aspx?CourseId=" + courseId + "\">" + courseSrv.GetName(courseId) + "</a>" +
                        "</span>" +
                        "</div>" +
                        "</div>";
        return result;
    }

    protected string GetComment(int commentId)
    {
        string result = "<div class=\"media\">" +
                        "<div class=\"media-body\">" +
                        "<div class=\"well\">" +
                        "<div class=\"media-heading\">" +
                        "<strong>" + courseSrv.GetCommentUserName(commentId) + "</strong>&nbsp;<small>" + courseSrv.GetCommentDate(commentId) + "</small>" +
                        "</div>" +
                        "<p>" + courseSrv.GetCommentContent(commentId) + "</p>" +
                        "</div>" +
                        "</div>" +
                        "</div>";
        return result;
    }

    protected void LkbtnJoin_Click(object sender, EventArgs e)
    {
        if (Request.Cookies["User"] != null)
        {
            if (lkbtnJoin.Text == "加入课程")
            {
                courseSrv.InsertRegister(long.Parse(Request.Cookies["User"].Values["UserId"]), int.Parse(Request.QueryString["CourseId"]));
                lkbtnJoin.Text = "下载课程资料";
            }
            else if (lkbtnJoin.Text == "下载课程资料")
            {
                Response.Redirect("Resources/" + int.Parse(Request.QueryString["CourseId"]) + ".zip");
            }
        }
        else
        {
            Response.Write("<script>window.alert('请先登录！')</script>");
            Response.Write("<script>window.location='SignIn.aspx'</script>");
        }
    }

    protected void LkbtnComment_Click(object sender, EventArgs e)
    {
        if (Request.Cookies["User"] != null && txtComment.Text != null && txtComment.Text != "")
        {
            LiteralComment.Text = "";
            courseSrv.InsertComment(long.Parse(Request.Cookies["User"].Values["UserId"]), int.Parse(Request.QueryString["CourseId"]), txtComment.Text);
            int[] comments = courseSrv.GetCommentIds(int.Parse(Request.QueryString["CourseId"]));
            if (comments != null)
            {
                foreach (int i in comments)
                {
                    LiteralComment.Text += GetComment(i);
                }
            }
        }
    }
}