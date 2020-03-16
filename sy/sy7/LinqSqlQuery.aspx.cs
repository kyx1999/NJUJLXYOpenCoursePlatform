using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy7_LinqSqlQuery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnProject_Click(object sender, EventArgs e)
    {
        MyPetShopDataContext db = new MyPetShopDataContext();
        var results = from r in db.Products
                      select new
                      {
                          r.ProductId,
                          r.CategoryId,
                          r.Name
                      };
        gvProduct.DataSource = results;
        gvProduct.DataBind();
    }

    protected void BtnSelect_Click(object sender, EventArgs e)
    {
        MyPetShopDataContext db = new MyPetShopDataContext();
        var results = from r in db.Products
                      where r.UnitCost > 20
                      select r;
        gvProduct.DataSource = results;
        gvProduct.DataBind();
    }

    protected void BtnOrder_Click(object sender, EventArgs e)
    {
        MyPetShopDataContext db = new MyPetShopDataContext();
        var results = from r in db.Products
                      orderby r.UnitCost descending
                      select r;
        gvProduct.DataSource = results;
        gvProduct.DataBind();
    }

    protected void BtnGroup_Click(object sender, EventArgs e)
    {
        MyPetShopDataContext db = new MyPetShopDataContext();
        var results = from r in db.Products
                      group r by r.CategoryId;
        foreach (var g in results)
        {
            if (g.Key == 5)
            {
                var results2 = from r in g
                               select r;
                gvProduct.DataSource = results2;
                gvProduct.DataBind();
            }
        }
    }

    protected void BtnPolymerize_Click(object sender, EventArgs e)
    {
        MyPetShopDataContext db = new MyPetShopDataContext();
        var results = from r in db.Products
                      group r by r.CategoryId into g
                      select new
                      {
                          g.Key,
                          Count = g.Count(),
                          MaxPrice = g.Max(p => p.ListPrice),
                          MinPrice = g.Min(p => p.ListPrice),
                          AvgPrice = g.Average(p => p.ListPrice)
                      };
        gvProduct.DataSource = results;
        gvProduct.DataBind();
    }

    protected void BtnQuote_Click(object sender, EventArgs e)
    {
        MyPetShopDataContext db = new MyPetShopDataContext();
        var results = from r in db.Products
                      select new
                      {
                          r.ProductId,
                          r.CategoryId,
                          CategoryName = r.Category.Name
                      };
        gvProduct.DataSource = results;
        gvProduct.DataBind();
    }

    protected void BtnJoin_Click(object sender, EventArgs e)
    {
        MyPetShopDataContext db = new MyPetShopDataContext();
        var results = from product in db.Products
                      join category in db.Categories on product.CategoryId equals category.CategoryId
                      select new
                      {
                          product.ProductId,
                          product.CategoryId,
                          CategoryName = category.Name
                      };
        gvProduct.DataSource = results;
        gvProduct.DataBind();
    }

    protected void BtnFuzzy_Click(object sender, EventArgs e)
    {
        MyPetShopDataContext db = new MyPetShopDataContext();
        var results = from r in db.Products
                      where System.Data.Linq.SqlClient.SqlMethods.Like(r.Name, "%fly%")
                      select r;
        gvProduct.DataSource = results;
        gvProduct.DataBind();
    }
}