<%@ Page Title="登录" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="SignIn" %>

<asp:Content ID="head" ContentPlaceHolderID="cphHead" runat="Server"></asp:Content>
<asp:Content ID="content" ContentPlaceHolderID="cphContent" runat="Server">
    <section class="dark-wrapper opaqued parallax" data-parallax="scroll" data-image-src="Images/bg/bg1.jpg" data-speed="0.7">
        <div class="section-inner">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 mt30 text-center wow fadeIn" data-wow-delay="0.5s">
                        <h2 class="section-heading">登录</h2>
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
                            <asp:Label ID="lblUserId" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr class="lead">
                        <td>密码</td>
                        <td style="padding: 5px">
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control col-md-6" TextMode="Password"></asp:TextBox>
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td style="text-align: center">
                            <asp:LinkButton ID="lkbtnReset" runat="server" CssClass="btn btn-primary btn-theme" OnClick="LkbtnReset_Click">忘记密码</asp:LinkButton>
                            <asp:LinkButton ID="lkbtnSignIn" runat="server" CssClass="btn btn-primary btn-theme" OnClick="LkbtnSignIn_Click">登录</asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="end" ContentPlaceHolderID="cphEnd" runat="Server"></asp:Content>
