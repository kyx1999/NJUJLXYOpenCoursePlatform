using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy7_Update : System.Web.UI.Page
{
    MyPetShopDataContext db = new MyPetShopDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string categoryId = Request.QueryString["CategoryId"];
            var category = (from c in db.Categories
                            where c.CategoryId == int.Parse(categoryId)
                            select c).First();
            txtCategoryId.Text = categoryId;
            txtCategoryId.ReadOnly = true;
            txtName.Text = category.Name;
            txtDescn.Text = category.Descn;
        }
    }

    protected void BtnUpdate_Click(object sender, EventArgs e)
    {
        var category = (from c in db.Categories
                        where c.CategoryId == int.Parse(txtCategoryId.Text)
                        select c).First();
        category.Name = txtName.Text;
        category.Descn = txtDescn.Text;
        db.SubmitChanges();
    }

    protected void BtnReturn_Click(object sender, EventArgs e)
    {
        Response.Redirect("DataManage.aspx");
    }
}