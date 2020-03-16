<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="sy5_Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td style="text-align: right">用户名：</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="请输入用户名！" ControlToValidate="txtName" Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">密码：</td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="请输入密码！" ControlToValidate="txtPassword" Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">确认密码：</td>
                    <td>
                        <asp:TextBox ID="txtPasswordAgain" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvPasswordAgain" runat="server" ErrorMessage="请输入确认密码！" ControlToValidate="txtPasswordAgain" Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvPassword" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtPasswordAgain" Display="Dynamic" ErrorMessage="密码与确认密码不一致！" SetFocusOnError="True"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">生日：</td>
                    <td>
                        <asp:TextBox ID="txtBirthday" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvBirthday" runat="server" ErrorMessage="请输入生日！" ControlToValidate="txtBirthday" Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvBirthday" runat="server" ControlToValidate="txtBirthday" Display="Dynamic" ErrorMessage="日期应在1900-1-1到2020-1-1之间！" MaximumValue="2020-1-1" MinimumValue="1900-1-1" SetFocusOnError="True" Type="Date"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">电话号码：</td>
                    <td>
                        <asp:TextBox ID="txtTelephone" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvTelephone" runat="server" ErrorMessage="请输入电话号码！" ControlToValidate="txtTelephone" Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revTelephone" runat="server" ErrorMessage="电话号码格式应为021-66798304！" ControlToValidate="txtTelephone" Display="Dynamic" SetFocusOnError="True" ValidationExpression="\d{3}-\d{8}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">身份证号：</td>
                    <td>
                        <asp:TextBox ID="txtIdentity" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvIdentity" runat="server" ErrorMessage="请输入身份证号！" ControlToValidate="txtIdentity" Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="csvIdentity" runat="server" ErrorMessage="身份证号错误！" ControlToValidate="txtIdentity" Display="Dynamic" OnServerValidate="CsvIdentity_ServerValidate" SetFocusOnError="True"></asp:CustomValidator>
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <asp:Button ID="btnSubmit" runat="server" Text="确定" OnClick="BtnSubmit_Click" />
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
            <asp:ValidationSummary ID="vsSubmit" runat="server" ShowMessageBox="True" ShowSummary="False" />
        </div>
    </form>
</body>
</html>
