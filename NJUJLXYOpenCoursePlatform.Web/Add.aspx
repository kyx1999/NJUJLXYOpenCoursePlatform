<%@ Page Title="添加课程" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Add.aspx.cs" Inherits="Add" %>

<asp:Content ID="head" ContentPlaceHolderID="cphHead" runat="Server"></asp:Content>
<asp:Content ID="content" ContentPlaceHolderID="cphContent" runat="Server">
    <section class="dark-wrapper opaqued parallax" data-parallax="scroll" data-image-src="Images/bg/bg1.jpg" data-speed="0.7">
        <div class="section-inner">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 mt30 text-center wow fadeIn" data-wow-delay="0.5s">
                        <h2 class="section-heading">添加课程</h2>
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
                            <asp:TextBox ID="txtCourseId" runat="server" CssClass="form-control col-md-6"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvCourseId" runat="server" ControlToValidate="txtCourseId">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revCourseId" runat="server" ControlToValidate="txtCourseId" ValidationExpression="[1-9]\d*">请输入正确的课程号！</asp:RegularExpressionValidator>
                            <asp:CustomValidator ID="csvCourseId" runat="server" ControlToValidate="txtCourseId" OnServerValidate="CsvCourseId_ServerValidate">该课程号已被注册！</asp:CustomValidator>
                        </td>
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
                        <td>上传图片</td>
                        <td style="padding: 5px">
                            <asp:FileUpload ID="fupImg" runat="server" CssClass="btn btn-primary btn-theme" />
                        </td>
                        <td>
                            <asp:Label ID="lblImg" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>上传课程资料</td>
                        <td style="padding: 5px">
                            <asp:FileUpload ID="fupZip" runat="server" CssClass="btn btn-primary btn-theme" />
                        </td>
                        <td>
                            <asp:Label ID="lblZip" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td style="text-align: center">
                            <asp:LinkButton ID="lkbtnAdd" runat="server" CssClass="btn btn-primary btn-theme" OnClick="LkbtnAdd_Click">添加</asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="end" ContentPlaceHolderID="cphEnd" runat="Server"></asp:Content>
