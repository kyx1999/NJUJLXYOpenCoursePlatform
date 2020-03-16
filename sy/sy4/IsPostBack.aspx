<%@ Page Language="C#" AutoEventWireup="true" CodeFile="IsPostBack.aspx.cs" Inherits="sy4_IsPostBack" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnSubmit" runat="server" Text="提交" OnClick="BtnSubmit_Click" />
        </div>
    </form>
</body>
</html>
