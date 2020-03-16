using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class sy7_LinqXmlInsert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnInsert_Click(object sender, EventArgs e)
    {
        string xmlFilePath = Server.MapPath("~/sy7/Category.xml");
        XElement els = XElement.Load(xmlFilePath);
        XElement el = new XElement("Category",
            new XElement("Category", txtCategoryId.Text),
            new XElement("Name", txtName.Text),
            new XElement("Descn", txtDescn.Text));
        els.Add(el);
        els.Save(xmlFilePath);
    }

    protected void BtnReturn_Click(object sender, EventArgs e)
    {
        Response.Redirect("LinqXml.aspx");
    }
}