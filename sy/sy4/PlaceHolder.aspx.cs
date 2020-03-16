using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy4_PlaceHolder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Button btnSubmit = new Button
        {
            ID = "btnSubmit",
            Text = "确定"
        };
        btnSubmit.Click += new EventHandler(BtnSubmit_Click);
        plhTest.Controls.Add(btnSubmit);
        TextBox txtInput = new TextBox
        {
            ID = "txtInput"
        };
        plhTest.Controls.Add(txtInput);
    }

    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        Response.Write("触发了“确定”按钮的Click事件！");
    }

    protected void BtnAcquire_Click(object sender, EventArgs e)
    {
        TextBox txtInput = (TextBox)plhTest.FindControl("txtInput");
        Response.Write(txtInput.Text);
    }
}