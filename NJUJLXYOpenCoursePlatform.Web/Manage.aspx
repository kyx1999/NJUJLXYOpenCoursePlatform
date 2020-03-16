<%@ Page Title="我的账户" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Manage.aspx.cs" Inherits="Manage" %>

<asp:Content ID="head" ContentPlaceHolderID="cphHead" runat="Server"></asp:Content>
<asp:Content ID="content" ContentPlaceHolderID="cphContent" runat="Server">
    <section class="dark-wrapper opaqued parallax" data-parallax="scroll" data-image-src="Images/bg/bg1.jpg" data-speed="0.7">
        <div class="section-inner">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 mt30 text-center wow fadeIn" data-wow-delay="0.5s">
                        <h2 class="section-heading">我的账户</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div role="tabpanel">
        <ul class="nav nav-justified icon-tabs" id="nav-tabs" role="tablist">
            <li role="presentation" class="ptb silver-bg smoothie active">
                <a href="#contact1" aria-controls="dustin" role="tab" data-toggle="tab">
                    <asp:Label ID="lblTab1" runat="server" CssClass="tabtitle heading-font"></asp:Label>
                </a>
            </li>
            <li role="presentation" class="ptb silver-bg smoothie">
                <a href="#contact2" aria-controls="daksh" role="tab" data-toggle="tab">
                    <span class="tabtitle heading-font">修改资料</span>
                </a>
            </li>
        </ul>
        <div class="tab-content" id="tabs-collapse">
            <div role="tabpanel" class="tab-pane fade in active" id="contact1">
                <section>
                    <div class="section-inner nopaddingbottom">
                        <div class="wow fadeIn" data-wow-delay="0.5s">
                            <asp:Literal ID="LiteralDepartment" runat="server"></asp:Literal>
                            <ul class="portfolio-items nopadding-lr isotope list-unstyled">
                                <asp:Literal ID="LiteralCourse" runat="server"></asp:Literal>
                            </ul>
                        </div>
                    </div>
                </section>
            </div>
            <div role="tabpanel" class="tab-pane fade" id="contact2">
                <div class="contact-inner">
                    <br />
                    <br />
                    <br />
                    <div class="container">
                        <table class="col-md-12 main-contact-form wow fadeIn" data-wow-delay="0.5s">
                            <tr class="lead">
                                <td>学号/工号</td>
                                <td style="padding: 5px">
                                    <asp:Label ID="lblUserId" runat="server" CssClass="col-md-6"></asp:Label>
                                </td>
                                <td></td>
                            </tr>
                            <tr class="lead">
                                <td>旧密码</td>
                                <td style="padding: 5px">
                                    <asp:TextBox ID="txtOldPassword" runat="server" CssClass="form-control col-md-6" TextMode="Password"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="rfvOldPassword" runat="server" ControlToValidate="txtOldPassword">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr class="lead">
                                <td>新密码</td>
                                <td style="padding: 5px">
                                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control col-md-6" TextMode="Password"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr class="lead">
                                <td>确认新密码</td>
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
                                    <asp:Label ID="lblIdentity" runat="server" CssClass="col-md-6"></asp:Label>
                                </td>
                                <td></td>
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
                                    <asp:LinkButton ID="lkbtnChange" runat="server" CssClass="btn btn-primary btn-theme" OnClick="LkbtnChange_Click">修改</asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <br />
                    <br />
                    <br />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="end" ContentPlaceHolderID="cphEnd" runat="Server"></asp:Content>
