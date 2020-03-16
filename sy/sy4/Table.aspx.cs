using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy4_Table : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string[] name = { "张三", "李四" };
        string[] number = { "200301", "200302" };
        for (int i = 1; i <= 2; i++)
        {
            TableRow row = new TableRow();
            TableCell cellNumber = new TableCell();
            TableCell cellName = new TableCell();
            TableCell cellInput = new TableCell();
            cellNumber.Text = number[i - 1];
            cellName.Text = name[i - 1];
            TextBox txtInput = new TextBox();
            cellInput.Controls.Add(txtInput);
            row.Cells.Add(cellNumber);
            row.Cells.Add(cellName);
            row.Cells.Add(cellInput);
            tblScore.Rows.Add(row);
        }
    }
}