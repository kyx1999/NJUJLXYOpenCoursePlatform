using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy8_ProShow : System.Web.UI.Page
{
    MyPetShopDataContext db = new MyPetShopDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            var categories = from c in db.Categories
                             select new
                             {
                                 c.CategoryId,
                                 c.Name
                             };
            foreach (var category in categories)
            {
                ddlCategory.Items.Add(new ListItem(category.Name.ToString(), category.CategoryId.ToString()));
            }
            Bind();
        }
    }

    private void Bind()
    {
        int categoryId = int.Parse(ddlCategory.SelectedValue);
        var products = from p in db.Products
                       where p.CategoryId == categoryId
                       select p;
        gvProduct.DataSource = products;
        gvProduct.DataBind();
    }



    protected void DdlCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        Bind();
    }

    protected void GvProduct_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvProduct.PageIndex = e.NewPageIndex;
        Bind();
    }
}