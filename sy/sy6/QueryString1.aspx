<%@ Page Language="C#" AutoEventWireup="true" CodeFile="QueryString1.aspx.cs" Inherits="sy6_QueryString1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="hlkQueryString" runat="server" NavigateUrl="~/sy6/QueryString2.aspx?username=张三&age=23">传递查询字符串到QueryString2.aspx</asp:HyperLink>
        </div>
    </form>
</body>
</html>
