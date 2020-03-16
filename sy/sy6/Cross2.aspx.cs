using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy6_Cross2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (PreviousPage.IsCrossPagePostBack)
        {
            lblMsg.Text = "用户名：" + PreviousPage.Name + "<br />";
            TextBox txtPassword = (TextBox)PreviousPage.FindControl("txtPassword");
            lblMsg.Text += "密码：" + txtPassword.Text;
        }
    }
}