using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy7_LinqSqlManageData : System.Web.UI.Page
{
    MyPetShopDataContext db = new MyPetShopDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind();
        }
    }

    protected void BtnInsert_Click(object sender, EventArgs e)
    {
        Category category = new Category
        {
            Name = txtName.Text,
            Descn = txtDescn.Text
        };
        db.Categories.InsertOnSubmit(category);
        db.SubmitChanges();
        Bind();
    }

    protected void BtnUpdate_Click(object sender, EventArgs e)
    {
        var results = from r in db.Categories
                      where r.CategoryId == int.Parse(txtCategoryId.Text)
                      select r;
        if (results != null)
        {
            foreach (Category r in results)
            {
                r.Name = txtName.Text;
                r.Descn = txtDescn.Text;
            }
            db.SubmitChanges();
            Bind();
        }
    }

    protected void BtnDelete_Click(object sender, EventArgs e)
    {
        var results = from r in db.Categories
                      where r.CategoryId == int.Parse(txtCategoryId.Text)
                      select r;
        db.Categories.DeleteAllOnSubmit(results);
        db.SubmitChanges();
        Bind();
    }

    protected void BtnProcedure_Click(object sender, EventArgs e)
    {
        db.CategoryInsert(txtName.Text.ToString(), txtDescn.Text.ToString());
        Bind();
    }

    protected void Bind()
    {
        var result = from r in db.Categories
                     select r;
        gvCategory.DataSource = result;
        gvCategory.DataBind();
    }
}