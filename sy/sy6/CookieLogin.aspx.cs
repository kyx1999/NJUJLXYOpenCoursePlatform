using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy6_CookieLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        if (txtName.Text == "leaf" && txtPassword.Text == "111")
        {
            HttpCookie cookie = new HttpCookie("Name")
            {
                Value = "leaf",
                Expires = DateTime.Now.AddDays(1)
            };
            Response.Cookies.Add(cookie);
        }
    }
}