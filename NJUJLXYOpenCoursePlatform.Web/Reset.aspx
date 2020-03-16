<%@ Page Title="重置课程" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Reset.aspx.cs" Inherits="Reset" %>

<asp:Content ID="head" ContentPlaceHolderID="cphHead" runat="Server"></asp:Content>
<asp:Content ID="content" ContentPlaceHolderID="cphContent" runat="Server">
    <section class="dark-wrapper opaqued parallax" data-parallax="scroll" data-image-src="Images/bg/bg1.jpg" data-speed="0.7">
        <div class="section-inner">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 mt30 text-center wow fadeIn" data-wow-delay="0.5s">
                        <h2 class="section-heading">重置课程</h2>
                        <hr class="thin-hr" />
                        <h3 class="section-subheading secondary-font">
                            <asp:Label ID="lblDescn" runat="server"></asp:Label>
                        </h3>
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
                        <td>课程号</td>
                        <td style="padding: 5px">
                            <asp:Label ID="lblCourseId" runat="server"></asp:Label>
                        </td>
                        <td></td>
                    </tr>
                    <tr class="lead">
                        <td>名称</td>
                        <td style="padding: 5px">
                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control col-md-6"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr class="lead">
                        <td>简介</td>
                        <td style="padding: 5px">
                            <asp:TextBox ID="txtDescn" runat="server" CssClass="form-control col-md-6"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvDescn" runat="server" ControlToValidate="txtDescn">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr class="lead">
                        <td>详情</td>
                        <td style="padding: 5px">
                            <asp:TextBox ID="txtDetail" runat="server" CssClass="form-control col-md-6" Rows="8" TextMode="MultiLine"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvDetail" runat="server" ControlToValidate="txtDetail">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr class="lead">
                        <td>教师工号</td>
                        <td style="padding: 5px">
                            <asp:TextBox ID="txtTeacherId" runat="server" CssClass="form-control col-md-6"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvTeacherId" runat="server" ControlToValidate="txtTeacherId">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revTeacherId" runat="server" ControlToValidate="txtTeacherId" ValidationExpression="[1-9]\d*">请输入正确的教师工号！</asp:RegularExpressionValidator>
                            <asp:CustomValidator ID="csvTeacherId" runat="server" ControlToValidate="txtTeacherId" OnServerValidate="CsvTeacherId_ServerValidate">该教师不存在！</asp:CustomValidator>
                        </td>
                    </tr>
                    <tr class="lead">
                        <td>学分</td>
                        <td style="padding: 5px">
                            <asp:TextBox ID="txtCredit" runat="server" CssClass="form-control col-md-6"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvCredit" runat="server" ControlToValidate="txtCredit">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revCredit" runat="server" ControlToValidate="txtCredit" ValidationExpression="[1-9]\d*">请输入正确的学分！</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td style="text-align: center">
                            <asp:LinkButton ID="lkbtnReset" runat="server" CssClass="btn btn-primary btn-theme" OnClick="LkbtnReset_Click">重置</asp:LinkButton>
                            <asp:LinkButton ID="lkbtnDelete" runat="server" CssClass="btn btn-primary btn-theme" OnClick="LkbtnDelete_Click">删除课程</asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="end" ContentPlaceHolderID="cphEnd" runat="Server"></asp:Content>
