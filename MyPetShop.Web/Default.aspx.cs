using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminId"] != null || Session["CustomerId"] != null)
        {
            if (Session["AdminId"] != null)
            {
                lblWelcome.Text = "您好, " + Session["AdminName"].ToString();
                lnkbtnManage.Visible = true;
            }
            else if (Session["CustomerId"] != null)
            {
                lblWelcome.Text = "您好, " + Session["CustomerName"].ToString();
                lnkbtnPwd.Visible = true;
                lnkbtnCart.Visible = true;
            }
            lnkbtnLogout.Visible = true;
        }
    }

    protected void LnkbtnLogout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("~/Default.aspx");
    }
}