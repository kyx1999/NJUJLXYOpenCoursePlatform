<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LinqSqlManageData.aspx.cs" Inherits="sy7_LinqSqlManageData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            CategoryId：<asp:TextBox ID="txtCategoryId" runat="server"></asp:TextBox>
            Name：<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            Descn：<asp:TextBox ID="txtDescn" runat="server"></asp:TextBox><br />
            <asp:Button ID="btnInsert" runat="server" Text="插入数据" OnClick="BtnInsert_Click" />
            <asp:Button ID="btnUpdate" runat="server" Text="修改数据" OnClick="BtnUpdate_Click" />
            <asp:Button ID="btnDelete" runat="server" Text="删除数据" OnClick="BtnDelete_Click" />
            <asp:Button ID="btnProcedure" runat="server" Text="存储过程" OnClick="BtnProcedure_Click" />
            <asp:GridView ID="gvCategory" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
