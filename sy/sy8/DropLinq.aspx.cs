using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy8_DropLinq : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MyPetShopDataContext db = new MyPetShopDataContext();
            var results = from r in db.Categories
                          select r;
            ddlCategory.DataSource = results;
            ddlCategory.DataBind();
        }
    }

    protected void DdlCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblMsg.Text = "您选择的CategoryId为：" + ddlCategory.SelectedValue;
    }
}