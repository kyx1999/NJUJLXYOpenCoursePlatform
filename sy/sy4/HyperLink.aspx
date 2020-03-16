<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HyperLink.aspx.cs" Inherits="sy4_HyperLink" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="hlkMouse" runat="server" NavigateUrl="http://www.21cn.com">
                <asp:Image ID="imgMouse" runat="server" ImageUrl="~/Images/mouseOut.jpg" Width="50" />
            </asp:HyperLink>
        </div>
    </form>
</body>
</html>
