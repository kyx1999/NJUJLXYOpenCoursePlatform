using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy7_DataManage : System.Web.UI.Page
{
    MyPetShopDataContext db = new MyPetShopDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Bind()
    {
        var results = from c in db.Categories
                      select c;
        gvCategory.DataSource = results;
        gvCategory.DataBind();
    }

    protected void BtnQueryAll_Click(object sender, EventArgs e)
    {
        Bind();
    }

    protected void BtnFuzzy_Click(object sender, EventArgs e)
    {
        Response.Redirect("FuzzyQuery.aspx");
    }

    protected void BtnInsert_Click(object sender, EventArgs e)
    {
        Response.Redirect("Insert.aspx");
    }

    protected void BtnUpdate_Click(object sender, EventArgs e)
    {
        Response.Redirect("Update.aspx?CategoryId=" + txtCategoryId.Text);
    }

    protected void BtnDelete_Click(object sender, EventArgs e)
    {
        var results = from c in db.Categories
                      where c.CategoryId == int.Parse(txtCategoryId.Text)
                      select c;
        db.Categories.DeleteAllOnSubmit(results);
        db.SubmitChanges();
        Bind();
    }
}