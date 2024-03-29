﻿<%@ Page Title="Home" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="JagratBharatNews.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <meta property="og:url" content="https://www.your-domain.com/your-page.html" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="The Jagrat Bharat News" />
    <meta property="og:description" content="Satya ra sandhana" />
    <meta property="og:image" content="https://www.your-domain.com/path/image.jpg" />
    <style>
        .container {
            max-width: 1200px;
            height: auto;
            margin: 70px auto 30px auto;
            display: grid;
            grid-gap: 1%;
            grid-template-columns: 20% 58% 20%;
            grid-template-rows: auto;
        }
        /* Left Side bar*/
        .leftSidebar {
            background-color: rgb(255, 255, 255);
            box-shadow: 0px 1px 3px black;
            position: relative;
        }

            .leftSidebar > ul {
                list-style-type: none;
                padding: 0px;
                margin: 0px auto 0px auto;
                height: 300px;
                overflow-y: scroll;
            }

            .leftSidebar > .flag_image {
                width: 100%;
            }

            .leftSidebar > p.flag_text {
                padding: 10px 0px;
                background-color: #e23e00;
                color: #fff;
                position: absolute;
                top: 650px;
                width: 100%;
                text-align: center
            }

            .leftSidebar > ul > li {
                width: 80%;
                padding: 10px;
                text-align: center;
                border: 1px solid rgba(0,0,0,.1);
                background-color: rgba(98, 98, 98, 0.68);
                border-radius: 5px;
                margin: 5px auto 0px auto;
            }

                .leftSidebar > ul > li > a {
                    text-decoration: none;
                    color: #fff;
                }
        /*Main Content*/
        .mainContent {
            padding: 10px;
            text-align: center;
            background-color: rgba(255, 255, 255, 1);
            box-shadow: 0px 1px 3px black;
        }

        .catSpan {
            position: relative;
            padding: 5px;
            background-color: red;
            float: left;
            display: block;
            color: white;
            top: 15px;
        }

        .cardHeadline {
            text-align: left;
        }

        .cards {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            grid-gap: 5px;
            padding: 10px;
            background-color: rgba(0,0,0,.1);
        }

        .card {
            background-color: rgba(255, 255, 255, 1);
            border: 1px solid rgba(0, 0, 0, .1);
            padding: 5px;
            border-radius: 5px;
        }

            .card > img {
                width: 100%;
            }

            .card > h4 {
                text-align: left;
                text-indent: 10px;
            }

            .card > p {
                padding: 5px;
                text-align: justify;
            }


        /* Side Content */
        .rightSidebar {
            background-color: rgba(255, 255, 255, 1);
            display: grid;
            grid-template-rows: max-content max-content auto;
            grid-gap: 10px;
            box-shadow: 0px 1px 3px black;
            padding: 10px;
        }

        .video {
            border: 1px solid rgba(0, 0, 0, .1);
            border-radius: 3px;
            overflow-x: hidden;
            overflow-y: hidden;
        }

        .scroll {
            height: 30px;
            background-color: red;
            color: white;
            font-weight: bold;
        }

            .scroll > p {
                margin: 0px;
                padding: 5px;
                white-space: nowrap;
                transform: translateX(180px);
                animation: scrolFromRight 60s linear infinite;
            }

                .scroll > p > a {
                    text-decoration: none;
                    color: white;
                }

                .scroll > p:hover {
                    animation-play-state: paused;
                }

        @keyframes scrolFromRight {
            100% {
                transform: translateX(-100%)
            }
        }

        .advertisement {
            text-align: center;
        }

            .advertisement > p {
                padding: 0;
                margin: 0;
                font-weight: bold;
            }

        .ad {
            height: 10em;
            border: 1px solid rgba(0, 0, 0, .1);
        }

        .other > div > p {
            margin: 0;
        }

        .callender {
            height: 80px;
            display: grid;
            grid-template-columns: 40% 60%;
            grid-template-rows: 50% 50%;
            border: 1px solid rgba(0, 0, 0, .1);
            cursor: pointer;
        }

        .date {
            margin: auto 0px auto auto;
            font-size: 50px;
            font-weight: bold;
            grid-row: span 2;
            color: red;
        }

        .event {
            font-weight: bold;
            margin: auto auto 0px 0px;
        }


        .rashifal > ul {
            list-style: none;
            padding: 0;
            display: none;
        }

        .rashifal > p {
            text-align: center;
            padding-top: 10px;
        }

        .rashifal > ul > li {
            height: 40px;
            vertical-align: middle;
            margin-bottom: 4px;
            border: 1px solid rgba(0, 0, 0, .1);
            cursor: pointer;
        }

            .rashifal > ul > li > p {
                margin: 10px auto auto 12px;
                vertical-align: middle;
            }

        .zodiac {
            position: relative;
        }

            .zodiac .tooltipText {
                visibility: hidden;
                width: 100%;
                background-color: black;
                color: #fff;
                text-align: left;
                border-radius: 6px;
                padding: 5px;
                /* Position the tooltip */
                position: absolute;
                z-index: 1;
            }

            .zodiac:hover .tooltipText {
                visibility: visible;
            }

        .tooltipText:active .tooltipText {
            visibility: hidden;
        }

        .watch {
            margin-top: 10px;
            text-align: center;
        }

        @media (max-width:1000px) {
            .container {
                grid-template-columns: 25% 48% 25%;
            }

            .cards {
                display: grid;
                grid-template-columns: repeat(2, 1fr);
                grid-gap: 5px;
            }
        }

        @media (max-width:750px) {
            .container {
                margin: 70px auto 30px auto;
                display: grid;
                grid-template-columns: 1fr;
            }

            .leftSidebar {
                display: none;
            }

            .cards {
                display: grid;
                grid-template-columns: repeat(1, 1fr);
                grid-gap: 5px;
            }

            .watch {
                padding-bottom: 20px;
            }
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="leftSidebar">
            <p style="margin: 10px auto 5px auto; text-align: center">Categories</p>
            <ul runat="server" id="categoryList">
                <%-- Auto Generated Categories --%>
            </ul>
            <img src="Default/flag2.gif" alt="National_Flag" class="flag_image" />
            <p class="flag_text">Jai Hind</p>
        </div>
        <div class="mainContent">
            <h3>Top Stories</h3>
            <div class="cards" id="cards" runat="server">
                <%-- Auto Generated Cards --%>
            </div>
            <div style="height: 200px; margin: 20px 0px 10px 0px">Advertisement</div>
            <div id="fb-root"></div>
            <script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v4.0"></script>

            <div class="fb-page" data-href="https://www.facebook.com/Jagratbhara/?ref=br_rs" data-tabs="timeline" data-width="" data-height="200" data-small-header="true" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true">
                <blockquote cite="https://www.facebook.com/Jagratbhara/?ref=br_rs" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/Jagratbhara/?ref=br_rs">Jagratbharatnews.com</a></blockquote>
            </div>
        </div>
        <div class="rightSidebar">
            <div class="video">
                <div runat="server" id="videoFrame">
                    <%-- Auto Generated Video --%>
                </div>
                <div class="scroll" id="scroll">
                    <p id="para" runat="server">
                        <%-- Auto Generated Scroll --%>
                    </p>
                </div>
            </div>
            <div class="advertisement">
                <p>Advertisement</p>
                <div class="ad">
                    <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                    <ins class="adsbygoogle"
                        style="display: block"
                        data-ad-format="fluid"
                        data-ad-layout-key="-fb+5w+4e-db+86"
                        data-ad-client="ca-pub-1465461908442997"
                        data-ad-slot="3141786085"></ins>
                    <script>
                        (adsbygoogle = window.adsbygoogle || []).push({});
                    </script>
                </div>
            </div>
            <div class="other">
                <div class="callender">
                    <div id="txtDate" runat="server" class="date">
                        9
                    </div>
                    <div id="txtEvent" runat="server" class="event">
                        Sunday
                    </div>
                    <div id="txtMonthYear" runat="server" class="monthYear">
                        th June 2019
                    </div>
                </div>
                <div class="rashifal">
                    <script>
                        function expand() {
                            let rashi = document.getElementById('ContentPlaceHolder1_rashifal');
                            if (rashi.style.display == "block") {
                                rashi.style.display = "none";

                            } else {
                                rashi.style.display = "block";
                            }
                        }
                    </script>
                    <p style="cursor: pointer; padding: 5px; border-radius: 3px; color: white; background-color: darkviolet; margin-top: 5px" onclick="expand()">Rashifal</p>
                    <ul id="rashifal" runat="server">
                    </ul>
                </div>
                <div class="watch">
                    <iframe
                        src="https://free.timeanddate.com/clock/i6sq6m47/n1690/szw110/szh110/hocbbb/hbw6/cf100/hgr0/fas16/fdi64/mqc000/mqs4/mql20/mqw2/mqd94/mhc000/mhs3/mhl20/mhw2/mhd94/mmc000/mml10/mmw1/mmd94/hmr7/hsc000/hss1/hsl90"
                        frameborder="0" width="110" height="110"></iframe>
                </div>
            </div>
        </div>
    </div>
    <script>
        let textWidht = document.getElementById("scroll");
        let textp = document.getElementById("ContentPlaceHolder1_para");
        textWidht.style.width = textp.scrollWidth + "px";
        textp.style.animationDuration = (textp.scrollWidth / 100) * 4 + "s";
        console.log(textp.scrollWidth);
    </script>
</asp:Content>
