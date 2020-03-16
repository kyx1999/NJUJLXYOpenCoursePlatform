<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ImageMap.aspx.cs" Inherits="sy4_ImageMap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ImageMap ID="imapNav" runat="server" ImageUrl="~/Images/map.jpg">
                <asp:RectangleHotSpot Bottom="26" Right="76" NavigateUrl="http://jw.dhu.edu.cn" />
                <asp:RectangleHotSpot Bottom="26" Left="72" Right="141" NavigateUrl="http://research.dhu.edu.cn/" />
                <asp:RectangleHotSpot Bottom="26" Left="143" Right="214" />
                <asp:RectangleHotSpot Bottom="26" Left="216" Right="287" />
            </asp:ImageMap>
        </div>
    </form>
</body>
</html>
