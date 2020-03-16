<%@ Page Title="关于我们" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="head" ContentPlaceHolderID="cphHead" runat="Server"></asp:Content>
<asp:Content ID="content" ContentPlaceHolderID="cphContent" runat="Server">
    <section class="dark-wrapper opaqued parallax" data-parallax="scroll" data-image-src="Images/bg/bg1.jpg" data-speed="0.7">
        <div class="section-inner">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 mt30 text-center wow fadeIn" data-wow-delay="0.5s">
                        <h2 class="section-heading">关于我们</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="section-inner">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center mb100 wow fadeIn" data-wow-delay="0.5s">
                        <h3 class="section-subheading secondary-font">好吧其实只有我。</h3>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <img src="Images/about/about.jpg" class="img-responsive alignright wow fadeInRight" data-wow-delay="0.5s" />
                    </div>
                    <div class="col-md-6 wow fadeInLeft" data-wow-delay="0.5s">
                        <p class="lead">
                            匡胤鑫，男，汉族，<br />
                            出生于1999年2月20日，共青团员，<br />
                            南京大学金陵学院2017级计算机科学与技术专业学生，现担任南京大学金陵学院蓝桥杯校队负责人。<br />
                            <br />
                            另外，他可能是世界上最帅的男人。<br />
                            <br />
                            “我制作《南京大学金陵学院校内课程开放平台》，是旨在向世界名校看齐，在学校范围内先搭建一个类似MIT OpenCourseWare、Stanford Online Lagunita这类网站的课程学习平台，然后逐步扩展，做成一个真正有助于大家学习的网站平台。”<br />
                            <br />
                            这个男人如是说。<br />
                        </p>
                        <br />
                        <p class="lead">
                            Arnold Kuang, male, Han nationality,<br />
                            was born on February 20, 1999, member of the Communist Youth League,<br />
                            a student of grade 2017 studying computer science and technology at Nanjing University Jinling College and currently the head of the Blue Bridge Cup team of Nanjing University Jinling College.<br />
                            <br />
                            In addition, he may be the most handsome man in the world.<br />
                            <br />
                            "I produced the Nanjing University Jinling College Open Course Platform, which aims to align with the world's famous schools, first set up a curriculum learning platform like MIT OpenCourseWare and Stanford Online Lagunita within the college, and then gradually expand to make it a website platform that really helps everyone learn."<br />
                            <br />
                            Said the man.<br />
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="end" ContentPlaceHolderID="cphEnd" runat="Server"></asp:Content>
