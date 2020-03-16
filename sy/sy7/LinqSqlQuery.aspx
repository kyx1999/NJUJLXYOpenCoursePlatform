<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LinqSqlQuery.aspx.cs" Inherits="sy7_LinqSqlQuery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnProject" runat="server" Text="投影" OnClick="BtnProject_Click" />
            <asp:Button ID="btnSelect" runat="server" Text="选择" OnClick="BtnSelect_Click" />
            <asp:Button ID="btnOrder" runat="server" Text="排序" OnClick="BtnOrder_Click" />
            <asp:Button ID="btnGroup" runat="server" Text="分组" OnClick="BtnGroup_Click" />
            <asp:Button ID="btnPolymerize" runat="server" Text="聚合" OnClick="BtnPolymerize_Click" />
            <asp:Button ID="btnQuote" runat="server" Text="直接引用对象连接" OnClick="BtnQuote_Click" />
            <asp:Button ID="btnJoin" runat="server" Text="join连接" OnClick="BtnJoin_Click" />
            <asp:Button ID="btnFuzzy" runat="server" Text="模糊查询" OnClick="BtnFuzzy_Click" />
            <asp:GridView ID="gvProduct" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
