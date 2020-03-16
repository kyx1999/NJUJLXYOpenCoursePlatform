<%@ Page Title="课程详情" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Course.aspx.cs" Inherits="Course" %>

<asp:Content ID="head" ContentPlaceHolderID="cphHead" runat="Server"></asp:Content>
<asp:Content ID="content" ContentPlaceHolderID="cphContent" runat="Server">
    <section class="dark-wrapper opaqued parallax" data-parallax="scroll" data-image-src="Images/bg/bg1.jpg" data-speed="0.7">
        <div class="section-inner">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 mt30 text-center wow fadeIn" data-wow-delay="0.5s">
                        <h2 class="section-heading">
                            <asp:Label ID="lblTitle" runat="server"></asp:Label>
                        </h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="section-inner">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="row">
                            <div class="col-xs-12 col-sm-6 mb50">
                                <asp:Image ID="imgCourse" runat="server" CssClass="img-responsive" />
                            </div>
                            <div class="col-xs-12 col-sm-6 mb50 summary entry-summary">
                                <h3 class="price">
                                    <asp:Label ID="lblTitle2" runat="server" CssClass="amount"></asp:Label>
                                </h3>
                                <div class="lead">
                                    <p>
                                        <asp:Label ID="lblDescn1" runat="server"></asp:Label><br />
                                        <asp:Label ID="lblDescn2" runat="server"></asp:Label><br />
                                        <asp:Label ID="lblDescn3" runat="server"></asp:Label><br />
                                        <asp:Label ID="lblDescn4" runat="server"></asp:Label><br />
                                        <asp:Label ID="lblDescn5" runat="server"></asp:Label><br />
                                        <asp:Label ID="lblDescn6" runat="server"></asp:Label><br />
                                    </p>
                                </div>
                                <asp:LinkButton ID="lkbtnJoin" runat="server" CssClass="btn btn-primary btn-theme" OnClick="LkbtnJoin_Click"></asp:LinkButton>
                            </div>
                            <div class="col-md-12 product-tabs mt">
                                <ul class="nav nav-tabs">
                                    <li class="active">
                                        <a data-toggle="tab" href="#tab-description">课程详情</a>
                                    </li>
                                    <li class="reviews_tab">
                                        <a data-toggle="tab" href="#tab-reviews">课程评论</a>
                                    </li>
                                </ul>
                                <div class="tab-content mb">
                                    <div class="tab-pane active" id="tab-description">
                                        <p>
                                            <asp:Label ID="lblDetail" runat="server"></asp:Label>
                                        </p>
                                    </div>
                                    <div class="tab-pane fade" id="tab-reviews">
                                        <div id="reviews">
                                            <div id="comments">
                                                <div id="comments-list" class="gap">
                                                    <asp:ScriptManager ID="ScriptManagerComment" runat="server"></asp:ScriptManager>
                                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                        <ContentTemplate>
                                                            <asp:Literal ID="LiteralComment" runat="server"></asp:Literal>
                                                        </ContentTemplate>
                                                        <Triggers>
                                                            <asp:AsyncPostBackTrigger ControlID="lkbtnComment" EventName="Click" />
                                                        </Triggers>
                                                    </asp:UpdatePanel>
                                                </div>
                                                <div id="comment-form" class="gap">
                                                    <div class="mb">
                                                        <h3 class="single-section-title">
                                                            <strong>写评论</strong>
                                                        </h3>
                                                    </div>
                                                    <div class="form-horizontal" role="form">
                                                        <div class="form-group">
                                                            <div class="col-sm-12">
                                                                <asp:TextBox ID="txtComment" runat="server" Rows="8" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <asp:LinkButton ID="lkbtnComment" runat="server" CssClass="btn btn-primary btn-theme" OnClick="LkbtnComment_Click">发布</asp:LinkButton>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="main-sidebar" class="col-md-3 col-md-offset-1 divider-wrapper wow fadeInRight" data-wow-delay="0.5s">
                        <div class="widget">
                            <h4 class="widget-title">
                                <strong>推荐课程</strong>
                            </h4>
                            <div>
                                <asp:Literal ID="LiteralRecommend" runat="server"></asp:Literal>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="end" ContentPlaceHolderID="cphEnd" runat="Server"></asp:Content>
