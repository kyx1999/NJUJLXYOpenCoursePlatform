using MyPetShop.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChangePwd : System.Web.UI.Page
{
    CustomerService customerSrv = new CustomerService();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["CustomerId"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }
    }

    protected void BtnChangePwd_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            if (customerSrv.CheckLogin(Session["CustomerName"].ToString(), txtOldPwd.Text) > 0)
            {
                customerSrv.ChangePassword(Convert.ToInt32(Session["CustomerId"]), txtPwd.Text);
                lblMsg.Text = "密码修改成功！";
            }
            else
            {
                lblMsg.Text = "原密码不正确！";
            }
        }
    }
}