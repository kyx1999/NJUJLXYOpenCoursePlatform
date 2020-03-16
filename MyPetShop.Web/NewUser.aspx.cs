using MyPetShop.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewUser : System.Web.UI.Page
{
    CustomerService customerSrv = new CustomerService();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnReg_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            if (customerSrv.IsNameExist(txtName.Text.Trim()))
            {
                lblMsg.Text = "用户名已存在！";
            }
            else
            {
                customerSrv.Insert(txtName.Text.Trim(), txtPwd.Text.Trim(), txtEmail.Text.Trim());
                Response.Redirect("Login.aspx?name=" + txtName.Text);
            }
        }
    }
}