<%@ Page Language="C#" AutoEventWireup="true" Inherits="Login" CodeBehind="Login.aspx.cs" %>

<%--<%@ Register assembly="DevExpress.Web.v15.1, Version=15.1.12.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>--%>
<%@ Register Assembly="DevExpress.Web.v15.2, Version=15.2.11.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>




<!DOCTYPE html>
<html>

<!-- Head -->
<head>


    <title>GEARS</title>

     <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Style -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
    <link href="css/style1.css" type="text/css" rel="stylesheet" media="all">
    <link rel="stylesheet" type="text/css" href="../loginloader/waitMe.css" />
    <link href="css/font-awesome.css" rel="stylesheet">
    <style>
        /*.login.login-1 .login-aside .aside-img {
            min-height: 450px;
            box-shadow: 0 0 15px 5px #626262;
        }*/

        .transparentPopupParent .popup {
            opacity: 0.5;
        }

        #Success_PW-1 {
            width: 0px !important;
            display: block !important;
        }

        /*.dxpc-shadow {
            background: none !important;
            border: none !important;
        }*/

        .noBackground {
            background-color: transparent;
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
            /*from {
                -webkit-transform: scale(1.0) translateY(0px) rotateX(0deg);
                box-shadow: 0 0 0 rgba(0,0,0,0);
            }

            to {
                -webkit-transform: scale(1.5) translateY(-25px) rotateX(45deg);
                box-shadow: 0 25px 40px rgba(0,0,0,0.4);
                background: #3399FF;
            }*/
        }
    </style>
    <!-- Fonts -->
    <link href="//fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">
    <!-- //Fonts -->

</head>


<script>

    function PasswordEncrypt() {

        var UserId = document.getElementById("username").value;


        var UserPassword = document.getElementById("password").value;
        var strTempPass = UserPassword.trim();
        var strEncrypt = "";

        var intTmp = 0;

        if (UserPassword.length < 10) {
            strTempPass = UserPassword + UserId.trim();
            if (strTempPass.length > 10) strTempPass = strTempPass.substr(0, 10);
        }
        var intkey1 = strTempPass.substr(0, 1).charCodeAt(0);
        intkey1 = intkey1 + strTempPass.substr(1, 1).charCodeAt(0);
        var intKey = (strTempPass.length % 10) + intkey1;

        var iia;
        for (var i = 0; i < strTempPass.length; i++) {
            intkey1 = UserId.substr(i % UserId.length, 1).charCodeAt(0);

            if (i % 2 == 0) {
                intTmp = strTempPass.substr(i, 1).charCodeAt(0) + ((intKey * (i + 1)) + intkey1);
            }
            else {
                intTmp = strTempPass.substr(i, 1).charCodeAt(0) - ((intKey * (i + 1)) + intkey1);
            }

            if (intTmp < 0) intTmp = intTmp * -1;
            iia = (intTmp % 77);

            intTmp = 49 + iia;


            strEncrypt = strEncrypt + String.fromCharCode(intTmp);

        }

        document.getElementById("password2").value = encodeURIComponent(strEncrypt);
        document.getElementById('Button1').click();
    }

    function Showalert() {
        alert('Please check your login credentials');
        return;

    }



</script>


<script type="text/javascript">

    $("#username").keypress(function () {
        document.getElementById('submit').click();
    });

    $("#password").keypress(function () {
        document.getElementById('submit').click();
    });


    $(document).ready(function () {
        $('.preloader').hide();
    }
    );

    function showloader() {
        $('.preloader').show();

    }
    function rotateCard() {
        const card = document.getElementById('login-con');
        if (!card) {
            console.error("Card not found");
            return;
        }

        // Check if card is already rotated
        if (card.style.transform === 'rotateY(180deg)') {
            card.style.transform = 'rotateY(0deg)';
        } else {
            card.style.transform = 'rotateY(180deg)';
        }


    }

</script>

<body>
    <div class="background-bg"></div>
    <div class="front-bg"></div>
    <div id="main-b" class="container-fluid m-0 p-0 h-auto pos-relative">
        <!-- Main Content Row -->
        <div id="main-containerlog" class="row  m-0 p-0">
            <div class="contentlog">
                <!-- Column 1 - Top (on larger screens) -->
                <div class="colly colly-1">
                    <div class="win-con">
                        <div id="gears-logo" class="d-flex justify-content-center align-items-center">
                            <img src="../images/GearsLOGO1.gif" id="gears" style="color: gray;" />
                        </div>
                        <h1 class="" id="gears-title">GEARS</h1>
                        <hr />
                    </div>
                </div>

                <!-- Column 2 - Right (on larger screens) -->
                <div class="colly colly-2">
                    <div class="d-flex align-items-center">
                        <!-- Form -->
                        <form runat="server" id="loginform">
                            <div id="card-container">
                                <div id="login-con">
                                    <div id="login-card" class="d-flex justify-content-center align-items-center flex-column shadow-none">

                                        <h1>Sign in</h1>
                                        <input type="text" class="input-con" runat="server" title="username" pattern="[ña-zA-Z0-9-.]{0,100}" id="username" autocomplete="off" name="username" placeholder="USERNAME">
                                        <p class="text-white" style="margin: 10px 45% 10px 0px">EMAIL</p>
                                        <input type="password" class="input-con" runat="server" onkeypress="" name="password" id="password" placeholder="PASSWORD">
                                        <p class="text-white" style="margin: 10px 35% 5px 0px">PASSWORD</p>
                                        <input id="password2" runat="server" type="hidden" name="password2" class="password2" tabindex="2" />

                                        <div id="Login-but"  style="padding:0 5%;" class="container-fluid">
                                             <div class="row">
                                            <div class="col-6 d-flex justify-content-start align-items-center">
                                                <input type="submit" id="submit" onserverclick="submit_ServerClick" onclick="PasswordEncrypt()" runat="server" value="Login">
                                                <button runat="server" hidden="hidden" type="submit" id="Button1" name="Button1" onserverclick="submit_ServerClick"></button>

                                            </div>
                                            <div class="col-6 d-flex justify-content-end align-items-center">
                                                <a id="forgotPassword" onclick="rotateCard()" class="forgot-password">Forgot Password?</a>
                                            </div>
                                            </div>
                                        </div>

                                        <br />
                                    </div>

                                    <div id="login-password" style="padding-top:10px" class="d-flex justify-content-center align-items-center flex-column shadow-none">

                                        <h1>Reset Password</h1>
                                        <input type="text" style="margin-top: 0 !important;" class="input-con" runat="server" title="userForgot" pattern="[ña-zA-Z0-9-.]{0,100}" id="userForgot" autocomplete="off" name="userForgot" placeholder="USERNAME">
                                        <p class="text-white" style="margin: 10px 45% 10px 0px">EMAIL</p>
                                        <input type="password" class="input-con" runat="server" onkeypress="" name="pin" id="pin" placeholder="PIN">
                                        <p class="text-white" style="margin: 10px 50% 5px 0px">PIN</p>
                                        <input type="password" class="input-con" runat="server" onkeypress="" name="newpassword" id="newpassword" placeholder="NEW PASSWORD">
                                        <p class="text-white" style="margin: 10px 25% 5px 0px">NEW PASSWORD</p>
                                        <input id="Hidden1" runat="server" type="hidden" name="newpassword2" class="newpassword2" tabindex="2" />
                                        <div id="Login-but2" style="padding:0 5%;" class="container-fluid">
                                             <div class="row">
                                            <div class="col-6 d-flex justify-content-start align-items-center">
                                                <input type="submit" id="submit1" onserverclick="change_Password" onclick="PasswordEncrypt()" runat="server" value="Reset">
                                                <button runat="server" hidden="hidden" type="submit" id="Reset1" name="Reset1" onserverclick="change_Password"></button>
                                            </div>
                                            <div class="col-6 d-flex justify-content-end align-items-center">
                                                <a onclick="rotateCard()" class="forgot-password">Back to Login</a>
                                            </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <dx:ASPxPopupControl ID="Error" runat="server" ShowHeader="False" ClientInstanceName="pop" CloseAction="None" CloseOnEscape="True" Modal="True" Theme="iOS" PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter">
                                    <ContentCollection>
                                        <dx:PopupControlContentControl runat="server">
                                            <asp:Label ID="Valid" runat="server" Text="test"></asp:Label>
                                            <br />
                                            <br />
                                            <dx:ASPxButton ID="btnClose" runat="server" AutoPostBack="False" ClientInstanceName="btnClose"
                                                Text="OK" Width="80px">
                                                <ClientSideEvents Click="function(s, e) {
	                                                    pop.Hide();
                                                    }" />
                                            </dx:ASPxButton>
                                        </dx:PopupControlContentControl>
                                    </ContentCollection>
                                </dx:ASPxPopupControl>

                           <%-- <dx:ASPxPopupControl ID="Success" Modal="true" ContentStyle-HorizontalAlign="Center" runat="server" ShowHeader="False" ClientInstanceName="pop2" CloseAction="None" PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" Width="0">
                                <ClientSideEvents PopUp="function(s, e) {
                        setTimeout(function(){
                            // label1.SetText('Logging in.');
                             location.href='../CompName.aspx';
                            } , 200); 
                        setTimeout(function(){
                             //label1.SetText('Logging in..');
                            } , 300); 
                        setTimeout(function(){
                             //label1.SetText('Logging in...');
                            } , 400); 
                        setTimeout(function(){
                            // label1.SetText('Log in success!');
                            } , 500); 
			            
                        }" />
                                <ModalBackgroundStyle Opacity="0" BackColor="Transparent"></ModalBackgroundStyle>
                                <ContentStyle HorizontalAlign="Center" CssClass="noBackground" BackColor="Transparent"></ContentStyle>
                                <ContentCollection>
                                    <dx:PopupControlContentControl runat="server" BackColor="Transparent" BorderStyle="None">
                                
                                        <div class="loading">
                                            <div class="lds-spinner">
                                                <div></div>
                                                <div></div>
                                                <div></div>
                                                <div></div>
                                                <div></div>
                                                <div></div>
                                                <div></div>
                                                <div></div>
                                                <div></div>
                                                <div></div>
                                                <div></div>
                                                <div></div>
                                            </div>
                                            <div class="loading-text">
                                                <span class="loading-text-words">L</span>
                                                <span class="loading-text-words">O</span>
                                                <span class="loading-text-words">A</span>
                                                <span class="loading-text-words">D</span>
                                                <span class="loading-text-words">I</span>
                                                <span class="loading-text-words">N</span>
                                                <span class="loading-text-words">G</span>
                                            </div>
                                        </div>
                                    </dx:PopupControlContentControl>
                                </ContentCollection>
                            </dx:ASPxPopupControl>--%>
                        </form>

                    </div>

                </div>

                <!-- Column 3 - Bottom (on larger screens) -->
                <div class="colly colly-3">
                    <div class="win-con">
                        <!-- CONTACT SECTION -->
                        <div id="contact-section" class="d-flex flex-column justify-content-center align-items-center " style="padding-top: 10px;">
                            <a href="https://metsit.freshdesk.com/support/login" target="_blank" style="color: white; font-weight: bold" class="contact1">CONTACT US</a>
                            <span><i style="color: #F64E47;" class="fa fa-phone"></i><span>(02) 8249-9999 &nbsp</span></span>
                            <span>support@metsit.freshdesk.com &nbsp </span>
                        </div>

                        <div id="learnmore-btn">
                            <button>Learn More</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Footer Row -->
        <div class="row m-0 p-0 footer">
            <div id="foot-con" class="col-12 pos-absolute">
                <img id="creditlog" src="images/mets_credits.png" />
            </div>
        </div>
    </div>

</body>

<script src="js/jquery-1.10.2.js" type="text/javascript"></script>




</html>
