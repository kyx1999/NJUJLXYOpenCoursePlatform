using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy4_TextBox : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtName.Focus();
    }

    protected void TxtName_TextChanged(object sender, EventArgs e)
    {
        if (txtName.Text == "leaf")
        {
            lblValidate.Text = "用户名已占用！";
        }
        else
        {
            lblValidate.Text = "√";
        }
    }
}