using NJUJLXYOpenCoursePlatform.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignUp : System.Web.UI.Page
{
    UserService userSrv = new UserService();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CsvUserId_ServerValidate(object source, ServerValidateEventArgs args)
    {
        long value = long.Parse(args.Value);
        args.IsValid = !userSrv.IsUserIdExist(value);
    }

    protected void LkbtnSignUp_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            userSrv.Insert(long.Parse(txtUserId.Text), txtPassword.Text, txtName.Text, txtSex.Text, txtDepartment.Text, txtIdentity.Text, txtEmail.Text);
            Response.Write("<script>window.alert('注册成功！')</script>");
            Response.Write("<script>window.location='Index.aspx'</script>");
        }
    }
}