<%@ Page Title="院系主页" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Department.aspx.cs" Inherits="Department" %>

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
        <div class="section-inner nopaddingbottom">
            <div class="wow fadeIn" data-wow-delay="0.5s">
                <ul class="portfolio-items nopadding-lr isotope list-unstyled">
                    <asp:Literal ID="LiteralCourse" runat="server"></asp:Literal>
                </ul>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="end" ContentPlaceHolderID="cphEnd" runat="Server"></asp:Content>
