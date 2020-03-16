using NJUJLXYOpenCoursePlatform.BLL;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Reset : System.Web.UI.Page
{
    UserService userSrv = new UserService();
    CourseService courseSrv = new CourseService();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["User"] != null && Request.QueryString["CourseId"] != null && Request.QueryString["CourseId"] != "" && courseSrv.IsCourseIdExist(int.Parse(Request.QueryString["CourseId"])))
            {
                int courseId = int.Parse(Request.QueryString["CourseId"]);
                lblDescn.Text = "重置课程将刷新开课时间、取消以往学生加入课程记录，以及删除所有评论。";
                lblCourseId.Text = courseId.ToString();
                txtName.Text = courseSrv.GetName(courseId);
                txtDescn.Text = courseSrv.GetDescn(courseId);
                txtDetail.Text = courseSrv.GetDetail(courseId);
                txtTeacherId.Text = courseSrv.GetTeacherId(courseId).ToString();
                txtCredit.Text = courseSrv.GetCredit(courseId).ToString();
            }
            else
            {
                Response.Redirect("~/Index.aspx");
            }
        }
    }

    protected void CsvTeacherId_ServerValidate(object source, ServerValidateEventArgs args)
    {
        long value = long.Parse(args.Value);
        args.IsValid = userSrv.GetIdentity(value) == "教师";
    }

    protected void LkbtnReset_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            if (Request.Cookies["User"] != null)
            {
                long userId = long.Parse(Request.Cookies["User"].Values["UserId"]);
                if (userSrv.GetIdentity(userId) == "管理员")
                {
                    if (courseSrv.Change(int.Parse(Request.QueryString["CourseId"]), txtName.Text, txtDescn.Text, txtDetail.Text, long.Parse(txtTeacherId.Text), int.Parse(txtCredit.Text)) == true)
                    {
                        Response.Write("<script>window.alert('重置成功！')</script>");
                    }
                    else
                    {
                        Response.Write("<script>window.alert('重置失败！')</script>");
                    }
                    return;
                }
            }
            Response.Write("<script>window.alert('请以管理员身份登录！')</script>");
            Response.Write("<script>window.location='SignIn.aspx'</script>");
        }
    }

    protected void LkbtnDelete_Click(object sender, EventArgs e)
    {
        if (Request.Cookies["User"] != null)
        {
            long userId = long.Parse(Request.Cookies["User"].Values["UserId"]);
            if (userSrv.GetIdentity(userId) == "管理员")
            {
                try
                {
                    if (File.Exists(Path.Combine(Request.PhysicalApplicationPath, "Images/course/" + int.Parse(Request.QueryString["CourseId"]) + ".jpg")))
                    {
                        File.Delete(Path.Combine(Request.PhysicalApplicationPath, "Images/course/" + int.Parse(Request.QueryString["CourseId"]) + ".jpg"));
                    }
                    if (File.Exists(Path.Combine(Request.PhysicalApplicationPath, "Resources/" + int.Parse(Request.QueryString["CourseId"]) + ".zip")))
                    {
                        File.Delete(Path.Combine(Request.PhysicalApplicationPath, "Resources/" + int.Parse(Request.QueryString["CourseId"]) + ".zip"));
                    }
                }
                catch
                {
                    Response.Write("<script>window.alert('删除失败！')</script>");
                    return;
                }
                if (courseSrv.Delete(int.Parse(Request.QueryString["CourseId"])) == true)
                {
                    Response.Write("<script>window.alert('删除成功！')</script>");
                    Response.Write("<script>window.location='Manage.aspx'</script>");
                }
                else
                {
                    Response.Write("<script>window.alert('删除失败！')</script>");
                }
                return;
            }
        }
        Response.Write("<script>window.alert('请以管理员身份登录！')</script>");
        Response.Write("<script>window.location='SignIn.aspx'</script>");
    }
}