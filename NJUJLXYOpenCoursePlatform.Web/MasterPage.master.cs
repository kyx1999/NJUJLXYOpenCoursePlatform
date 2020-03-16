using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["User"] != null)
        {
            lblName.Text = HttpUtility.UrlDecode(Request.Cookies["User"].Values["Name"]);
            HyperLink hlkSignMy = new HyperLink
            {
                ID = "hlkSignMy",
                Text = "我的账户"
            };
            hlkSignMy.NavigateUrl = "~/Manage.aspx";
            LinkButton lkbtnSignQuit = new LinkButton
            {
                ID = "lkbtnSignQuit",
                Text = "退出"
            };
            lkbtnSignQuit.Click += new EventHandler(LkbtnSignQuit_Click);
            lkbtnSignQuit.CausesValidation = false;
            plh1.Controls.Clear();
            plh2.Controls.Clear();
            plh1.Controls.Add(hlkSignMy);
            plh2.Controls.Add(lkbtnSignQuit);
        }
        else
        {
            lblName.Text = "注册登录";
            HyperLink hlkUnsignUp = new HyperLink
            {
                ID = "hlkUnsignUp",
                Text = "注册"
            };
            hlkUnsignUp.NavigateUrl = "~/SignUp.aspx";
            HyperLink hlkUnsignIn = new HyperLink
            {
                ID = "hlkUnsignIn",
                Text = "登录"
            };
            hlkUnsignIn.NavigateUrl = "~/SignIn.aspx";
            plh1.Controls.Clear();
            plh2.Controls.Clear();
            plh1.Controls.Add(hlkUnsignUp);
            plh2.Controls.Add(hlkUnsignIn);
        }
    }

    protected void LkbtnSignQuit_Click(object sender, EventArgs e)
    {
        HttpCookie cookie = new HttpCookie("User")
        {
            Expires = DateTime.Now.AddDays(-1)
        };
        Response.Cookies.Add(cookie);
        plh1.Controls.Clear();
        plh2.Controls.Clear();
        lblName.Text = "注册登录";
        HyperLink hlkUnsignUp = new HyperLink
        {
            ID = "hlkUnsignUp",
            Text = "注册"
        };
        hlkUnsignUp.NavigateUrl = "~/SignUp.aspx";
        HyperLink hlkUnsignIn = new HyperLink
        {
            ID = "hlkUnsignIn",
            Text = "登录"
        };
        hlkUnsignIn.NavigateUrl = "~/SignIn.aspx";
        plh1.Controls.Add(hlkUnsignUp);
        plh2.Controls.Add(hlkUnsignIn);
        Response.Redirect("~/Index.aspx");
    }
}