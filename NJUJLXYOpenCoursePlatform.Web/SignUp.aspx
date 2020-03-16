<%@ Page Title="注册" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<asp:Content ID="head" ContentPlaceHolderID="cphHead" runat="Server"></asp:Content>
<asp:Content ID="content" ContentPlaceHolderID="cphContent" runat="Server">
    <section class="dark-wrapper opaqued parallax" data-parallax="scroll" data-image-src="Images/bg/bg1.jpg" data-speed="0.7">
        <div class="section-inner">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 mt30 text-center wow fadeIn" data-wow-delay="0.5s">
                        <h2 class="section-heading">注册</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="section-inner">
            <div class="container">
                <table class="col-md-12 main-contact-form wow fadeIn" data-wow-delay="0.5s">
                    <tr class="lead">
                        <td>学号/工号</td>
                        <td style="padding: 5px">
                            <asp:TextBox ID="txtUserId" runat="server" CssClass="form-control col-md-6"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvUserId" runat="server" ControlToValidate="txtUserId">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revUserId" runat="server" ControlToValidate="txtUserId" ValidationExpression="[1-9]\d*">请输入正确的学号/工号！</asp:RegularExpressionValidator>
                            <asp:CustomValidator ID="csvUserId" runat="server" ControlToValidate="txtUserId" OnServerValidate="CsvUserId_ServerValidate">该学号/工号已被注册！</asp:CustomValidator>
                        </td>
                    </tr>
                    <tr class="lead">
                        <td>密码</td>
                        <td style="padding: 5px">
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control col-md-6" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr class="lead">
                        <td>确认密码</td>
                        <td style="padding: 5px">
                            <asp:TextBox ID="txtPasswordAgain" runat="server" CssClass="form-control col-md-6" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvPasswordAgain" runat="server" ControlToValidate="txtPasswordAgain">*</asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cvPasswordAgain" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtPasswordAgain">两次输入的密码不一致！</asp:CompareValidator>
                        </td>
                    </tr>
                    <tr class="lead">
                        <td>姓名</td>
                        <td style="padding: 5px">
                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control col-md-6"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr class="lead">
                        <td>性别</td>
                        <td style="padding: 5px">
                            <asp:TextBox ID="txtSex" runat="server" CssClass="form-control col-md-6"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvSex" runat="server" ControlToValidate="txtSex">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revSex" runat="server" ControlToValidate="txtSex" ValidationExpression="男|女">请输入正确的性别（男/女）！</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr class="lead">
                        <td>学院</td>
                        <td style="padding: 5px">
                            <asp:TextBox ID="txtDepartment" runat="server" CssClass="form-control col-md-6"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvDepartment" runat="server" ControlToValidate="txtDepartment">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr class="lead">
                        <td>身份</td>
                        <td style="padding: 5px">
                            <asp:TextBox ID="txtIdentity" runat="server" CssClass="form-control col-md-6"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvIdentity" runat="server" ControlToValidate="txtIdentity">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revIdentity" runat="server" ControlToValidate="txtIdentity" ValidationExpression="学生|教师">请输入正确的身份（学生/教师）！</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr class="lead">
                        <td>邮箱</td>
                        <td style="padding: 5px">
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control col-md-6"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">请输入正确的邮箱！</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td style="text-align: center">
                            <asp:LinkButton ID="lkbtnSignUp" runat="server" CssClass="btn btn-primary btn-theme" OnClick="LkbtnSignUp_Click">注册</asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="end" ContentPlaceHolderID="cphEnd" runat="Server"></asp:Content>
