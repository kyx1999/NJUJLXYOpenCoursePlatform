<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GridUpdate.aspx.cs" Inherits="sy8_GridUpdate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="gvCategory" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="CategoryId" HeaderText="CategoryId" />
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Descn" HeaderText="Descn" />
                    <asp:HyperLinkField DataNavigateUrlFields="CategoryId" DataNavigateUrlFormatString="~/sy8/Update.aspx?CategoryId={0}" Text="修改" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
