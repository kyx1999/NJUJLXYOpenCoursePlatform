using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy8_Update : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack & Request.QueryString["CategoryId"] != null)
        {
            int categoryId = int.Parse(Request.QueryString["CategoryId"]);
            MyPetShopDataContext db = new MyPetShopDataContext();
            var category = (from r in db.Categories
                            where r.CategoryId == categoryId
                            select r).First();
            txtCategoryId.ReadOnly = true;
            txtCategoryId.Text = category.CategoryId.ToString();
            txtName.Text = category.Name;
            txtDescn.Text = category.Descn;
        }
    }

    protected void BtnUpdate_Click(object sender, EventArgs e)
    {
        MyPetShopDataContext db = new MyPetShopDataContext();
        var category = (from r in db.Categories
                        where r.CategoryId == int.Parse(txtCategoryId.Text)
                        select r).First();
        category.Name = txtName.Text;
        category.Descn = txtDescn.Text;
        db.SubmitChanges();
        Response.Redirect("~/sy8/GridUpdate.aspx");
    }
}