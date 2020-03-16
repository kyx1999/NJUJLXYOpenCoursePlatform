using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy8_GridTemplate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ChkAll_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox chkAll = (CheckBox)sender;
        foreach (GridViewRow gvRow in gvProduct.Rows)
        {
            CheckBox chkItem = (CheckBox)gvRow.FindControl("chkItem");
            chkItem.Checked = chkAll.Checked;
        }
    }

    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        lblProductId.Text = "您选择的ProductId为：";
        foreach (GridViewRow gvRow in gvProduct.Rows)
        {
            CheckBox chkItem = (CheckBox)gvRow.FindControl("chkItem");
            if (chkItem.Checked)
            {
                lblProductId.Text += gvRow.Cells[1].Text + "、";
            }
        }
    }
}