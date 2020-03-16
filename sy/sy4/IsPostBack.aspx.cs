using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy4_IsPostBack : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Response.Write("页面第一次加载！");
        }
    }

    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        Response.Write("执行Click实践处理代码！");
    }
}