<%@ Page Title="南京大学金陵学院校内课程开放平台" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<asp:Content ID="head" ContentPlaceHolderID="cphHead" runat="Server"></asp:Content>
<asp:Content ID="content" ContentPlaceHolderID="cphContent" runat="Server">
    <header id="headerwrap" class="backstretched fullheight">
        <div class="container vertical-center">
            <div class="intro-text vertical-center text-center smoothie">
                <div class="intro-heading wow fadeIn heading-font" data-wow-delay="0.4s">
                    <span class="rotate">诚朴雄伟，励学敦行, 严谨求实，勤奋创新, 嚼得菜根，做得大事</span>
                </div>
            </div>
        </div>
    </header>
    <section>
        <div class="section-inner nopaddingbottom">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center mb100 wow fadeIn" data-wow-delay="0.5s">
                        <h2 class="section-heading">推荐课程</h2>
                        <hr class="thin-hr" />
                        <h3 class="section-subheading secondary-font">来自七大院系的精选课程。</h3>
                    </div>
                </div>
            </div>
            <div class="wow fadeIn" data-wow-delay="0.5s">
                <ul class="portfolio-filter mb30 text-center list-inline wow fadeIn" data-wow-delay="0.5s">
                    <li><a class="btn btn-primary btn-transparent active" href="#" data-filter="*">全部</a></li>
                    <li><a class="btn btn-primary btn-transparent" href="#" data-filter=".ise">信息科学与工程学院</a></li>
                    <li><a class="btn btn-primary btn-transparent" href="#" data-filter=".cm">传媒学院</a></li>
                    <li><a class="btn btn-primary btn-transparent" href="#" data-filter=".cz">城市与土木工程学院</a></li>
                    <li><a class="btn btn-primary btn-transparent" href="#" data-filter=".scls">化学与生命科学学院</a></li>
                    <li><a class="btn btn-primary btn-transparent" href="#" data-filter=".sy">商学院</a></li>
                    <li><a class="btn btn-primary btn-transparent" href="#" data-filter=".sfl">外国语学院</a></li>
                    <li><a class="btn btn-primary btn-transparent" href="#" data-filter=".ysxy">艺术学院</a></li>
                </ul>
                <ul class="portfolio-items nopadding-lr isotope list-unstyled">
                    <asp:Literal ID="LiteralCourse" runat="server"></asp:Literal>
                </ul>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="end" ContentPlaceHolderID="cphEnd" runat="Server">
    <script>
        $(document).ready(function () {
            'use strict';
            jQuery('#headerwrap').backstretch([
                "Images/bg/bg1.jpg",
                "Images/bg/bg2.jpg",
                "Images/bg/bg3.jpg"
            ], { duration: 8000, fade: 500 });
        });
    </script>
</asp:Content>
