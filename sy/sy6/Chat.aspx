<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Chat.aspx.cs" Inherits="sy6_Chat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/jquery-3.4.1.min.js"></script>
    <script type="text/javascript">
        function refresh() {
            $.ajax({
                url: "Ajax.aspx",
                cache: false,
                success: function (text) {
                    document.getElementById("divMsg").innerHTML = text;
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    alert("网络连接有问题，请重试！");
                }
            });
            setTimeout("refresh()", 500);
        }
    </script>
</head>
<body onload="refresh()">
    <form id="form1" runat="server">
        <div id="divMsg">
        </div>
        <div>
            <asp:Label ID="lblName" runat="server"></asp:Label><br />
            <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine"></asp:TextBox><br />
            <asp:Button ID="btnSend" runat="server" Text="发送" OnClick="BtnSend_Click" />
        </div>
    </form>
</body>
</html>
