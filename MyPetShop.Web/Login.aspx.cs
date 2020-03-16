using MyPetShop.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    CustomerService customerSrv = new CustomerService();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["name"] != null)
            {
                txtName.Text = Request.QueryString["name"];
                lblMsg.Text = "注册成功，请登录!";
            }
        }
    }

    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            int customerId = customerSrv.CheckLogin(txtName.Text.Trim(), txtPwd.Text.Trim());
            if (customerId > 0)
            {
                Session.Clear();    
                if (txtName.Text.Trim() == "admin")
                {
                    Session["AdminId"] = customerId;
                    Session["AdminName"] = txtName.Text;
                    Response.Redirect("~/Admin/Default.aspx");
                }
                else
                {
                    Session["CustomerId"] = customerId;
                    Session["CustomerName"] = txtName.Text;
                    Response.Redirect("~/Default.aspx");
                }
            }
            else
            {
                lblMsg.Text = "用户名或密码错误！";
            }
        }
    }
}