<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MultiValidate.aspx.cs" Inherits="sy5_MultiValidate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            用户名：<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="请输入用户名！" ControlToValidate="txtName" SetFocusOnError="True">*</asp:RequiredFieldValidator><br />
            密码：<asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="请输入密码！" ControlToValidate="txtPassword" SetFocusOnError="True">*</asp:RequiredFieldValidator><br />
            确认密码：<asp:TextBox ID="txtPasswordAgain" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPasswordAgain" runat="server" ErrorMessage="请输入确认密码！" ControlToValidate="txtPasswordAgain" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="cvPassword" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtPasswordAgain" ErrorMessage="密码与确认密码不一致！" SetFocusOnError="True"></asp:CompareValidator><br />
            电话号码：<asp:TextBox ID="txtTelephone" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvTelephone" runat="server" ErrorMessage="请输入电话号码！" ControlToValidate="txtTelephone" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revTelephone" runat="server" ErrorMessage="电话号码格式应为021-66798304！" ControlToValidate="txtTelephone" SetFocusOnError="True" ValidationExpression="\d{3}-\d{8}"></asp:RegularExpressionValidator><br />
            身份证号：<asp:TextBox ID="txtIdentity" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvIdentity" runat="server" ErrorMessage="请输入身份证号！" ControlToValidate="txtIdentity" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            <asp:CustomValidator ID="csvIdentity" runat="server" ErrorMessage="身份证号错误！" ControlToValidate="txtIdentity" OnServerValidate="CsvIdentity_ServerValidate" SetFocusOnError="True"></asp:CustomValidator><br />
            <asp:Button ID="btnSubmit" runat="server" Text="确定" OnClick="BtnSubmit_Click" />
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
        </div>
    </form>
</body>
</html>
