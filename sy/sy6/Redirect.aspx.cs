using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy6_Redirect : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        if (rdoltStatus.SelectedValue == "teacher")
        {
            Response.Redirect("~/sy6/Teacher.aspx?name=" + txtName.Text);
        }
        else
        {
            Response.Redirect("~/sy6/Student.aspx?name=" + txtName.Text);
        }
    }
}