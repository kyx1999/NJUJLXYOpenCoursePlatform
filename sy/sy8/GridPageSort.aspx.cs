using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy8_GridPageSort : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DdlPageSize_SelectedIndexChanged(object sender, EventArgs e)
    {
        gvProduct.PageSize = int.Parse(ddlPageSize.SelectedValue);
        gvProduct.DataBind();
    }

    protected void GvProduct_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        lblMsg.Text = "当前页为第" + (gvProduct.PageIndex + 1).ToString() + "页，共有" + (gvProduct.PageCount).ToString() + "页";
    }
}