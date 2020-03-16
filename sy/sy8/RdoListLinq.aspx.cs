using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy8_RdoListLinq : System.Web.UI.Page
{
    MyPetShopDataContext db = new MyPetShopDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            var results = from r in db.Categories
                          select r;
            rdoltCategory.DataSource = results;
            rdoltCategory.DataBind();
        }
    }

    protected void RdoltCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        var results = from r in db.Products
                      where r.CategoryId == int.Parse(rdoltCategory.SelectedValue)
                      select r;
        lstProduct.DataSource = results;
        lstProduct.DataBind();
    }
}