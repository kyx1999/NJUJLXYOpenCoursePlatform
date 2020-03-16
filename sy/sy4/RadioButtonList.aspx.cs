using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy4_RadioButtonList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void RdoltCountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblDisplay.Text = "你选中了" + rdoltCountry.SelectedValue;
    }
}