<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanySite.aspx.cs" Inherits="GWL.CompanySite" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <title>GEARS-WMS | Select Site</title>
    <%--<link href='css/bootstrap.css' rel='stylesheet' />--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <%--<link href='css/rotating-card.css' rel='stylesheet' />--%>
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400..900&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Oxanium:wght@200..800&display=swap" rel="stylesheet" />
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">



    <link href="https://netdna.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet" />

    <script src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js"></script>


    <script type="text/javascript">
        history.pushState(null, null, document.URL);
        window.addEventListener('popstate', function () {
            history.pushState(null, null, document.URL);
        });
    </script>
    <style>
        html, body {
            height: 100%;
        }

        body {
            height: 100%;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            margin: 0;
            /*background-color: #fff;*/
            /*padding-top: 6.4em;*/
            /*overflow: hidden;*/
        }


        .preloader {
            position: absolute;
            top: 0px;
            left: 0px;
            right: 0px;
            bottom: 0px;
            /*background: -webkit-radial-gradient(rgba(0,0,0,0) 50%,rgba(0,0,0,0.8));*/
            z-index: 10;
        }

            .preloader > .preloader-box {
                position: absolute;
                width: 345px;
                height: 30px;
                top: 50%;
                left: 50%;
                margin: -15px 0 0 -150px;
                -webkit-perspective: 200px;
            }

            .preloader .preloader-box > div {
                position: relative;
                width: 30px;
                height: 30px;
                background: #CCC;
                float: left;
                text-align: center;
                line-height: 30px;
                font-family: Verdana;
                font-size: 20px;
                color: #FFF;
            }

                .preloader .preloader-box > div:nth-child(1) {
                    background: #3366FF;
                    margin-right: 15px;
                    -webkit-animation: movement 600ms ease 0ms infinite alternate;
                }

                .preloader .preloader-box > div:nth-child(2) {
                    background: #3366FF;
                    margin-right: 15px;
                    -webkit-animation: movement 600ms ease 75ms infinite alternate;
                }

                .preloader .preloader-box > div:nth-child(3) {
                    background: #3366FF;
                    margin-right: 15px;
                    -webkit-animation: movement 600ms ease 150ms infinite alternate;
                }

                .preloader .preloader-box > div:nth-child(4) {
                    background: #3366FF;
                    margin-right: 15px;
                    -webkit-animation: movement 600ms ease 225ms infinite alternate;
                }

                .preloader .preloader-box > div:nth-child(5) {
                    background: #3366FF;
                    margin-right: 15px;
                    -webkit-animation: movement 600ms ease 300ms infinite alternate;
                }

                .preloader .preloader-box > div:nth-child(6) {
                    background: #3366FF;
                    margin-right: 15px;
                    -webkit-animation: movement 600ms ease 375ms infinite alternate;
                }

                .preloader .preloader-box > div:nth-child(7) {
                    background: #3366FF;
                    margin-right: 15px;
                    -webkit-animation: movement 600ms ease 450ms infinite alternate;
                }

                .preloader .preloader-box > div:nth-child(8) {
                    background: #3366FF;
                    -webkit-animation: movement 600ms ease 525ms infinite alternate;
                }

        @-webkit-keyframes movement {
            from {
                -webkit-transform: scale(1.0) translateY(0px) rotateX(0deg);
                box-shadow: 0 0 0 rgba(0,0,0,0);
            }

            to {
                -webkit-transform: scale(1.5) translateY(-25px) rotateX(45deg);
                box-shadow: 0 25px 40px rgba(0,0,0,0.4);
                background: #3399FF;
            }
        }

        .site-name {
            color: #001a71;
            margin: 0 !important;
            letter-spacing: 4px;
            font-weight: 700;
            user-select: none;
            font-family: "Oxanium",sans-serif;
        }

        .site-logo {
            /*width: 100%;*/
            max-width: 16.5em;
            height: auto;
        }

        .custom-card-radius {
            border-radius: 18px !important;
            border: 2px solid #ff5002;
        }

        #card-container {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100%;
        }


        .navbar {
            background-color: transparent;
            transition: background-color 0.2s ease-in-out;
            height: 6.4em;
        }

        /*.navbar.scrolled h1 {
                color: #001a71 !important;
            }*/

        .card {
            transition: 0.2s ease-in-out;
            width: 28em !important;
        }

            .card:hover {
                box-shadow: 0 0 2.5em #fff;
                transform: scale(1.03);
                cursor: pointer;
            }

        .image-backdrop {
            height: 100%;
            width: 100%;
            z-index: 0;
            position: fixed;
            top: 0;
            left: 0;
            /*transition: .3s ease-in-out;*/
            overflow: hidden;
        }

            .image-backdrop img {
                width: 100%;
                height: auto;
                object-fit: cover;
            }

        #main-body {
            height: 100%;
            width: 100%;
            position: absolute;
            top: 0;
            left: 0;
            padding-top: 6.4em;
        }

        @media screen and (max-width: 600px) {
            .site-logo {
                /*width: 100%;*/
                max-width: 10em;
                height: auto;
            }

            .image-backdrop img {
                width: auto;
                height: 100%;
                object-fit: cover;
            }

            .site-name {
                font-size: 12px;
            }
        }
    </style>


</head>

<body>

    <%--  <div style="background-image: url('../images/b1.jpg'); 	background-repeat: no-repeat;
	background-attachment: fixed;
	background-position: center;
	background-size: cover;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	color: #FFF;
	font-family: 'Quicksand', sans-serif;
	text-align: center;">

     <div style="   background: url(../images/dott.png)repeat 0px 0px;
    background-size: 2px;
    -webkit-background-size: 2px;
    -moz-background-size: 2px;
    -o-background-size: 2px;
    -ms-background-size: 2px;
    padding: 1em 0 6em;">--%>
    <%--orig--%>
    <div id="image-backdrop" class="image-backdrop">
        <img id="preloaded-image" style="z-index: -1000" src="data:image/gif;base64,R0lGODlhAQABAAD/ACwAAAAAAQABAAACADs=" alt="Preloaded Image" />
    </div>

    <form id="form1" runat="server" style="height: 100%; padding-top: 6.4em;">
        <div id="card-container" class="container">
            <div class="row py-5">
                <div class="col-12">


                    <div class="banner" style="height: 100%">
                        <div class="col-12">
                            <div class="row">
                                <%--<h1 class="mb-3">Select Site</h1>--%>

                                <div class="col-sm-12">
                                    <%--<div id="cardhtml" runat="server"></div>--%>
                                    <%-- <div id="cardhtml" class="row" runat="server">
                                        </div>--%>

                                    <div id="cardhtml" class="row g-4"></div>




                                    <%--<div class="space-200"></div>--%>
                                </div>

                                <button runat="server" hidden="hidden" type="submit" id="Button1" name="Button1" onserverclick="Site_Click"></button>

                                <input type="text" id="textname" hidden="hidden" runat="server" value="Mickey Mouse" />

                                <input type="text" id="textsoftware" hidden="hidden" runat="server" value="Mickey Mouse" />
                            </div>
                        </div>
                    </div>

                </div>

            </div>

        </div>
    </form>

    <nav class="navbar fixed-top navbar-light bg-transparent ">
        <div class="container-fluid d-flex justify-content-center w-100">
            <h1 style="margin: 0 !important">Select Site</h1>
        </div>
    </nav>


    <div class="loader" id="loader" style="display: none"></div>
    <div class="preloader">
        <div class="preloader-box">
            <div>L</div>
            <div>O</div>
            <div>A</div>
            <div>D</div>
            <div>I</div>
            <div>N</div>
            <div>G</div>
        </div>
    </div>

    <%--    <form id="form1" runat="server" style="height: 100%">
        <div class="banner" style="height: 100%">
            <div class="agileinfo-dot">
                <div class="container-fluid">
                    <div class="col-12">
                        <div class="row">
                            <h1>Select Company and Software
                        <br />
                            </h1>


                            <div class="col-sm-10 col-sm-offset-1">
                                <div id="cardhtml" runat="server"></div>

                                <div class="col-md-4 col-sm-6">
                                    <div class="card-container manual-flip">
                                        <div class="card">
                                            <div class="front">
                                                <div class="cover">
                                                    <img src="images/rotating_card_thumb.png" />
                                                </div>
                                                <div class="user">
                                                    <img class="img-circle" src="images/rotating_card_profile2.png" />
                                                </div>
                                                <div class="content">
                                                    <div class="main">
                                                        <h3 class="name">Andrew Mike</h3>
                                                        <p class="profession">Web Developer</p>
                                                        <p class="text-center">
                                                            "Lamborghini Mercy
                                                        <br>
                                                            Your chick she so thirsty
                                                        <br>
                                                            I'm in that two seat Lambo"
                                                        </p>
                                                    </div>
                                                    <div class="footer">
                                                        <button type="button" class="btn btn-simple" onclick="rotateCard(this);">
                                                            <i class="fa fa-mail-forward"></i>Software
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- end front panel -->
                                            <div class="back">
                                                <div class="header">
                                                    <h5 class="motto">"To be or not to be, this is my awesome motto!"</h5>
                                                </div>
                                                <div class="content">
                                                    <div class="main">
                                                        <h4 class="text-center">Job Description</h4>
                                                        <p class="text-center">Web design, Adobe Photoshop, HTML5, CSS3, Corel and many others...</p>

                                                        <div class="stats-container">
                                                            <div class="social-links text-center">
                                                                <a href="#" runat="server">BILLING</a>
                                                                <br />
                                                                <a href="#" runat="server">GWL PISA</a>
                                                                <br />
                                                                <a href="#" runat="server">GWL WMS</a>
                                                                <br />
                                                            </div>
                                                        </div>

                                                    </div>

                                                </div>
                                                <div class="footer">



                                                    <button type="button" class="btn btn-simple" rel="tooltip" title="Flip Card" onclick="rotateCard(this);">
                                                        <i class="fa fa-reply"></i>Back
                                                    </button>
                                                </div>
                                            </div>
                                            <!-- end back panel -->
                                        </div>
                                        <!-- end card -->
                                    </div>
                                    <!-- end card-container -->
                                </div>
                                <!-- end col sm 3 -->


                                <div class="col-md-4 col-sm-6">
                                    <div class="card-container manual-flip">
                                        <div class="card">
                                            <div class="front">
                                                <div class="cover">
                                                    <img src="images/rotating_card_thumb.png" />
                                                </div>
                                                <div class="user">
                                                    <img class="img-circle" src="images/rotating_card_profile2.png" />
                                                </div>
                                                <div class="content">
                                                    <div class="main">
                                                        <h3 class="name">Andrew Mike</h3>
                                                        <p class="profession">Web Developer</p>
                                                        <p class="text-center">
                                                            "Lamborghini Mercy
                                                        <br>
                                                            Your chick she so thirsty
                                                        <br>
                                                            I'm in that two seat Lambo"
                                                        </p>
                                                    </div>
                                                    <div class="footer">
                                                        <button type="button" class="btn btn-simple" onclick="rotateCard(this);">
                                                            <i class="fa fa-mail-forward"></i>Software
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- end front panel -->
                                            <div class="back">
                                                <div class="header">
                                                    <h5 class="motto">"To be or not to be, this is my awesome motto!"</h5>
                                                </div>
                                                <div class="content">
                                                    <div class="main">
                                                        <h4 class="text-center">Job Description</h4>
                                                        <p class="text-center">Web design, Adobe Photoshop, HTML5, CSS3, Corel and many others...</p>

                                                        <div class="stats-container">
                                                            <div class="stats">
                                                                <h4>235</h4>
                                                                <p>
                                                                    Followers
                                                                </p>
                                                            </div>
                                                            <div class="stats">
                                                                <h4>114</h4>
                                                                <p>
                                                                    Following
                                                                </p>
                                                            </div>
                                                            <div class="stats">
                                                                <h4>35</h4>
                                                                <p>
                                                                    Projects
                                                                </p>
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <div class="social-links text-center">
                                                        <a href="#" runat="server">GWL</a>

                                                    </div>
                                                </div>
                                                <div class="footer">



                                                    <button type="button" class="btn btn-simple" rel="tooltip" title="Flip Card" onclick="rotateCard(this);">
                                                        <i class="fa fa-reply"></i>Back
                                                    </button>
                                                </div>
                                            </div>
                                            <!-- end back panel -->
                                        </div>
                                        <!-- end card -->
                                    </div>
                                    <!-- end card-container -->
                                </div>
                                <!-- end col sm 3 -->
                                <!--         <div class="col-sm-1"></div> -->


                                <!-- end row -->

                                <div class="loader" id="loader" style="display: none"></div>


                                <div class="space-200"></div>
                            </div>

                            <button runat="server" hidden="hidden" type="submit" id="Button1" name="Button1" onserverclick="Software_Click"></button>

                            <input type="text" id="textname" hidden="hidden" runat="server" value="Mickey Mouse" />

                            <input type="text" id="textsoftware" hidden="hidden" runat="server" value="Mickey Mouse" />

                            <div class="preloader">
                                <div class="preloader-box">
                                    <div>L</div>
                                    <div>O</div>
                                    <div>A</div>
                                    <div>D</div>
                                    <div>I</div>
                                    <div>N</div>
                                    <div>G</div>
                                </div>
                            </div>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

    --%>

    <%--<script src="js/jquery-1.10.2.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>--%>
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

    <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

    <script type="text/javascript">
        $().ready(function () {

            $('[rel="tooltip"]').tooltip();
        });

        //$(document).on('click', "a", function () {
        //    var $partType = $(this).closest('div.card');
        //    $("#textname").val($partType.find('h3.name').text());
        //    $("#textsoftware").val($(this).text());

        //    $('#loader').css('display', 'show');
        //    $('.preloader').show();

        //    $("#Button1").click();

        //});

        //function rotateCard(btn) {
        //    var $card = $(btn).closest('.card-container');

        //    if ($card.hasClass('hover')) {
        //        $card.removeClass('hover');
        //    } else {
        //        $card.addClass('hover');
        //    }
        //}
        function validate() {
            return false;
        }
        $(document).ready(function () {
            preLoadImages();
            AOS.init();

            $(window).scroll(function () {
                if ($(window).scrollTop() > 0) {
                    $('.navbar').addClass('bg-light');
                    $('.navbar').addClass('scrolled');
                    $('.navbar').addClass('shadow-sm ');
                    $('.navbar').removeClass('bg-transparent');
                } else {
                    $('.navbar').removeClass('bg-light');
                    $('.navbar').removeClass('scrolled');
                    $('.navbar').removeClass('shadow-sm ');
                    $('.navbar').addClass('bg-transparent');
                }
            });

            checkWarehouse();

            $('.preloader').hide();
        });

        function checkWarehouse() {
            $.ajax({
                type: "POST",
                url: "CompanySite.aspx/CheckWarehouse",
                dataType: "json",
                cache: false,
                contentType: "application/json; charset=utf-8",
                success: function (data) {

                    let datas = JSON.parse(data.d)
                    console.log(datas);
                    if (datas.length > 0) {
                        if (datas.length > 1) {
                            let ele = "";

                            for (var i = 0; i < datas.length; i++) {
                                if (i % 2 == 0) {
                                    ele +=
                                        '<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 col-6 d-flex align-items-center justify-content-end">' +
                                        '<div class="card custom-card-radius" data-whcode="' + datas[i].Field5 + '" data-image="' + datas[i].Field8 + '">' +
                                        '<div class="p-3">' +
                                        '<img class="site-logo" src="images/MLI_logo_png.png" />' +
                                        '<h2 class="site-name">' + datas[i].Field7 + '</h2>' +
                                        '</div>' +
                                        '</div>' +
                                        '</div>';
                                } else {
                                    ele +=
                                        '<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 col-6 d-flex align-items-center justify-content-start">' +
                                        '<div class="card custom-card-radius" data-whcode="' + datas[i].Field5 + '" data-image="' + datas[i].Field8 + '">' +
                                        '<div class="p-3">' +
                                        '<img class="site-logo" src="images/MLI_logo_png.png" />' +
                                        '<h2 class="site-name">' + datas[i].Field7 + '</h2>' +
                                        '</div>' +
                                        '</div>' +
                                        '</div>';
                                }

                                
                            }


                            $("#cardhtml").append(ele);

                            var fadeOutComplete = false;
                            var defaultImage = "/images/METS Website bg.png";



                            //$('.card').on('mouseenter', function () {
                            //    var newImageSrc = $(this).data('image');
                            //    if (fadeOutComplete) {
                            //        $('body').css('background-image', 'url(' + newImageSrc + ')').stop(true, true).fadeIn(300);
                            //    } else {
                            //         $('body').stop(true, true).fadeOut(300, function () {
                            //            $('body').css('background-image', 'url(' + newImageSrc + ')').fadeIn(300);
                            //        });
                            //    }
                            //    fadeOutComplete = false;
                            //}).on('mouseleave', function () {
                            //    $('body').stop(true, true).fadeOut(300, function () {
                            //         $('body').css('background-image', 'url(' + defaultImage + ')');
                            //        fadeOutComplete = true;
                            //    });
                            //});

                            $('.card').on('mouseenter', function () {
                                var newImageSrc = $(this).data('image');
                                if (fadeOutComplete) {
                                    $('#preloaded-image').attr('src', newImageSrc).stop(true, true).fadeIn(300);
                                } else {
                                    $('#preloaded-image').stop(true, true).fadeOut(300, function () {
                                        $(this).attr('src', newImageSrc).fadeIn(300);
                                    });
                                }
                                fadeOutComplete = false;
                            }).on('mouseleave', function () {
                                $('#preloaded-image').stop(true, true).fadeOut(300, function () {
                                    $(this).attr('src', defaultImage);
                                    fadeOutComplete = true;
                                });
                            });


                            $(".card").on("click", function () {
                                //alert("Redirect: Cliked!");

                                //RCD Change Value on click
                                $("#textsoftware").val('WMS');
                                $("#textname").val($(this).attr("data-whcode"));
                                $('#loader').css('display', 'show');
                                $('.preloader').show();

                                $("#Button1").click();

                            });
                        } else {
                            //alert("Redirect: Auto!");
                            $("#textsoftware").val('WMS');
                            $("#textname").val(datas[0].Field5);
                            $('#loader').css('display', 'show');
                            $('.preloader').show();

                            $("#Button1").click();
                        }

                    }
                    else {
                        alert("No WarehouseCode found!");
                    }
                },
                error: function (x) {
                    alert("Error: " + x);
                }
            });
        }

        function Redirect(site) {
            $.ajax({
                type: "POST",
                url: "CompanySite.aspx/Redirect",
                dataType: "json",
                data: "{Site : " + JSON.stringify(site) + "}",
                cache: false,
                contentType: "application/json; charset=utf-8",
                error: function (x) {
                    alert("Error: " + x);
                }
            });
        }


        function preLoadImages() {
            var images = [
                '/images/METS Website bg.png',
                '/images/Sites/cavite.jpeg',
                '/images/Sites/cdo1.png',
                '/images/Sites/cebu.jpeg',
                '/images/Sites/maguyam.jpeg',
            ];

            // Preload images
            $(images).each(function () {
                $('<img/>')[0].src = this;
            });
        }

    </script>

    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
                m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-46172202-4', 'auto');
        ga('send', 'pageview');

    </script>
</body>

</html>
