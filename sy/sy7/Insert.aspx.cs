using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy7_Insert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnInsert_Click(object sender, EventArgs e)
    {
        MyPetShopDataContext db = new MyPetShopDataContext();
        Category category = new Category
        {
            Name = txtName.Text,
            Descn = txtDescn.Text
        };
        db.Categories.InsertOnSubmit(category);
        db.SubmitChanges();
    }

    protected void BtnReturn_Click(object sender, EventArgs e)
    {
        Response.Redirect("DataManage.aspx");
    }
}