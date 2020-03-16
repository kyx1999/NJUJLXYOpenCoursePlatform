using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy4_ListBox : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnMove_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < lstLeft.Items.Count; i++)
        {
            if (lstLeft.Items[i].Selected)
            {
                lstRight.Items.Add(lstLeft.Items[i]);
                lstLeft.Items.Remove(lstLeft.Items[i]);
                i--;
            }
        }
    }
}