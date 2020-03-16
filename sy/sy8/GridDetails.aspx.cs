using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy8_GridDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DvProduct_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
    {
        gvProduct.DataBind();
    }

    protected void DvProduct_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        gvProduct.DataBind();
    }
}