<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DataManage.aspx.cs" Inherits="sy7_DataManage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            分类Id：<asp:TextBox ID="txtCategoryId" runat="server">输入分类Id，只用于“修改”和“删除”</asp:TextBox><br />
            <asp:Button ID="btnQueryAll" runat="server" Text="显示全部" OnClick="BtnQueryAll_Click" />
            <asp:Button ID="btnFuzzy" runat="server" Text="模糊查找" OnClick="BtnFuzzy_Click" />
            <asp:Button ID="btnInsert" runat="server" Text="插入" OnClick="BtnInsert_Click" />
            <asp:Button ID="btnUpdate" runat="server" Text="修改" OnClick="BtnUpdate_Click" />
            <asp:Button ID="btnDelete" runat="server" Text="删除" OnClick="BtnDelete_Click" />
            <asp:GridView ID="gvCategory" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
