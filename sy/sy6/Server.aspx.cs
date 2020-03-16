using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy6_Server : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("This is a dog <hr />");
        Response.Write(Server.HtmlEncode("This is a dog <hr />") + "<br />");
        Response.Write("<a href=Student.aspx?name=张  三>Student.aspx</a><br />");
        Response.Write("<a href=Student.aspx?name=" + Server.UrlEncode("张  三") + ">Student.aspx(UrlEncode)</a>");
    }
}