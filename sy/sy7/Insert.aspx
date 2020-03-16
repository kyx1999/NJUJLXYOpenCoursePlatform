<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Insert.aspx.cs" Inherits="sy7_Insert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td style="text-align: right">分类名：</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">描述：</td>
                    <td>
                        <asp:TextBox ID="txtDescn" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <asp:Button ID="btnInsert" runat="server" Text="插入" OnClick="BtnInsert_Click" />
            <asp:Button ID="btnReturn" runat="server" Text="返回" OnClick="BtnReturn_Click" />
        </div>
    </form>
</body>
</html>
