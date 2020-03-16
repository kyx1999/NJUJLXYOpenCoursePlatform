using NJUJLXYOpenCoursePlatform.BLL;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignIn : System.Web.UI.Page
{
    UserService userSrv = new UserService();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LkbtnReset_Click(object sender, EventArgs e)
    {
        if (rfvUserId.IsValid)
        {
            if (!userSrv.IsUserIdExist(long.Parse(txtUserId.Text)))
            {
                lblUserId.Text = "该学号/工号不存在！";
            }
            else
            {
                string findPassword = userSrv.ResetPassword(long.Parse(txtUserId.Text));
                if (findPassword != null)
                {
                    string mailFromAddress = ConfigurationManager.AppSettings["MailFromAddress"];
                    bool useSsl = bool.Parse(ConfigurationManager.AppSettings["UseSsl"]);
                    string userName = ConfigurationManager.AppSettings["UserName"];
                    string password = ConfigurationManager.AppSettings["Password"];
                    string serverName = ConfigurationManager.AppSettings["ServerName"];
                    int serverPort = int.Parse(ConfigurationManager.AppSettings["ServerPort"]);
                    string mailToAddress = userSrv.GetEmail(long.Parse(txtUserId.Text));
                    using (var smtpClient = new SmtpClient())
                    {
                        smtpClient.EnableSsl = useSsl;
                        smtpClient.Host = serverName;
                        smtpClient.Port = serverPort;
                        smtpClient.Credentials = new NetworkCredential(userName, password);
                        string body = "您登录南京大学金陵学院校内课程平台的密码已重置为：" + findPassword;
                        MailMessage mailMessage = new MailMessage(
                                               mailFromAddress,
                                               mailToAddress,
                                               "南京大学金陵学院校内课程平台用户密码重置",
                                               body);
                        smtpClient.Send(mailMessage);
                    }
                    Response.Write("<script>window.alert('已发送新密码至该用户邮箱！')</script>");
                }
            }
        }
    }

    protected void LkbtnSignIn_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            long userId = userSrv.CheckSignIn(long.Parse(txtUserId.Text), txtPassword.Text);
            if (userId > 0)
            {
                if (Request.Cookies["User"] != null)
                {
                    HttpCookie oldCookie = new HttpCookie("User")
                    {
                        Expires = DateTime.Now.AddDays(-1)
                    };
                    Response.Cookies.Add(oldCookie);
                }
                HttpCookie cookie = new HttpCookie("User");
                cookie.Values.Add("UserId", userId.ToString());
                cookie.Values.Add("Name", HttpUtility.UrlEncode(userSrv.GetName(userId)));
                cookie.Expires = DateTime.Now.AddDays(1);
                Response.Cookies.Add(cookie);
                Response.Redirect("~/Index.aspx");
            }
            else
            {
                Response.Write("<script>window.alert('登陆失败，用户名或密码错误！')</script>");
            }
        }
    }
}