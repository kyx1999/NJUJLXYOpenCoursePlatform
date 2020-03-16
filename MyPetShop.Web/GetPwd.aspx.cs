using MyPetShop.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GetPwd : System.Web.UI.Page
{
    CustomerService customerSrv = new CustomerService();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnResetPwd_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            if (!customerSrv.IsNameExist(txtName.Text.Trim()))
            {
                lblMsg.Text = "用户名不存在！";
            }
            else
            {
                if (!customerSrv.IsEmailExist(txtName.Text.Trim(), txtEmail.Text.Trim()))
                {
                    lblMsg.Text = "邮箱不正确！";
                }
                else
                {
                    customerSrv.ResetPassword(txtName.Text.Trim(), txtEmail.Text.Trim());
                    EmailSender emailSender = new EmailSender(txtEmail.Text.Trim(), txtName.Text.Trim());
                    emailSender.Send();
                    lblMsg.Text = "密码已发送至邮箱！";
                }
            }
        }
    }
}