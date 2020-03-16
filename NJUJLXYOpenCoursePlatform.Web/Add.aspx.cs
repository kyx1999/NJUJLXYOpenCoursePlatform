using NJUJLXYOpenCoursePlatform.BLL;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Add : System.Web.UI.Page
{
    UserService userSrv = new UserService();
    CourseService courseSrv = new CourseService();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["User"] == null)
        {
            Response.Redirect("~/Index.aspx");
        }
    }

    protected void CsvCourseId_ServerValidate(object source, ServerValidateEventArgs args)
    {
        int value = int.Parse(args.Value);
        args.IsValid = !courseSrv.IsCourseIdExist(value);
    }

    protected void LkbtnAdd_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            if (Request.Cookies["User"] != null)
            {
                long userId = long.Parse(Request.Cookies["User"].Values["UserId"]);
                if (userSrv.GetIdentity(userId) == "教师")
                {
                    if (fupImg.PostedFile.FileName == "")
                    {
                        lblImg.Text = "无文件上传！";
                    }
                    else
                    {
                        if (Path.GetExtension(fupImg.PostedFile.FileName).ToLower() != ".jpg")
                        {
                            lblImg.Text = "文件的拓展名必须是.jpg！";
                        }
                    }
                    if (fupZip.PostedFile.FileName == "")
                    {
                        lblZip.Text = "无文件上传！";
                        return;
                    }
                    else
                    {
                        if (Path.GetExtension(fupZip.PostedFile.FileName).ToLower() != ".zip")
                        {
                            lblZip.Text = "文件的拓展名必须是.zip！";
                            return;
                        }
                    }
                    try
                    {
                        fupImg.SaveAs(Path.Combine(Request.PhysicalApplicationPath, "Images/course/" + int.Parse(txtCourseId.Text) + ".jpg"));
                        fupZip.SaveAs(Path.Combine(Request.PhysicalApplicationPath, "Resources/" + int.Parse(txtCourseId.Text) + ".zip"));
                    }
                    catch
                    {
                        try
                        {
                            if (File.Exists(Path.Combine(Request.PhysicalApplicationPath, "Images/course/" + int.Parse(txtCourseId.Text) + ".jpg")))
                            {
                                File.Delete(Path.Combine(Request.PhysicalApplicationPath, "Images/course/" + int.Parse(txtCourseId.Text) + ".jpg"));
                            }
                            if (File.Exists(Path.Combine(Request.PhysicalApplicationPath, "Resources/" + int.Parse(txtCourseId.Text) + ".zip")))
                            {
                                File.Delete(Path.Combine(Request.PhysicalApplicationPath, "Resources/" + int.Parse(txtCourseId.Text) + ".zip"));
                            }
                        }
                        catch { }
                        lblImg.Text = "上传失败！";
                        lblZip.Text = "上传失败！";
                        return;
                    }
                    courseSrv.Insert(int.Parse(txtCourseId.Text), txtName.Text, txtDescn.Text, txtDetail.Text, userId, int.Parse(txtCredit.Text));
                    Response.Write("<script>window.alert('添加成功！')</script>");
                    return;
                }
            }
            Response.Write("<script>window.alert('请以教师身份登录！')</script>");
            Response.Write("<script>window.location='SignIn.aspx'</script>");
        }
    }
}