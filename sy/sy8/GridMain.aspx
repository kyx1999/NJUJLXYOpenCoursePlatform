<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GridMain.aspx.cs" Inherits="sy8_GridMain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            主表
            <asp:GridView ID="gvCategory" runat="server" AllowPaging="True" AutoGenerateColumns="False">
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="CategoryId" DataNavigateUrlFormatString="~/sy8/GridSub.aspx?CategoryId={0}" DataTextField="Name" HeaderText="CategoryId" />
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Descn" HeaderText="Descn" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
