<%@ Page Title="About Us|Jagrat Bharat News" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="JagratBharatNews.AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .container {
            margin: 80px auto;
            max-width: 900px;
        }

            .container > .mainContainer {
                padding: 60px 20px;
                border-radius:0px 50px 0px 50px;
                background-color: #fff;
                text-align:justify;
            }

                .container > .mainContainer > span {
                    float: right;
                    text-align: center;
                }

                    .container > .mainContainer > span > span {
                        font-weight: bolder;
                    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="mainContainer">
            <h2>Our Story</h2>
            <p>
                Website.com began in 2005. After years in the web hosting industry, we realized that it 
            was near impossible for the average Jane or Joe to create their own website. Traditional
            web hosting services were simply too complicated, time consuming, and expensive to manage.
            </p>
            <p>
                We created the Website.com Site Builder with the user's perspective in mind. We wanted to offer a
            platform that would require no coding skills or design experience. We keep it simple, so users can focus on
            creating an amazing website that reflects their brand. Best of all - it's free. You can get online, showcase your brand, 
            or start selling products right away.
            </p>
            <p>
                After seeing an increased need for ecommerce solutions, we developed one of the only fully-featured, 
            free and commission-free online store builders, allowing business owners to launch their online business.
            </p>
            <p>
                Today, we're proud to empower individuals and small business owners around the world. Everyone deserves a website,
            and we're excited to see what you create.
            </p>
            <span>Someone Name
                <br />
                <span>CEO, Jagrat Bharat News</span>
            </span>
        </div>
    </div>
</asp:Content>
