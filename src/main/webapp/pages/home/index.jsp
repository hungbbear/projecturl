<%-- 
    Document   : index
    Created on : Mar 6, 2018, 2:41:12 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="<c:url value = "/resources/assets/css/bootstrap.min.css"/>" />
        <title>NganGon.TK</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta content="IE=edge" http-equiv="X-UA-Compatible">
        <meta name="referrer" content="always">
        <meta name="keywords" content="ngangon, awesome, save, share, shorten" />
        <meta name="description" content="Get the most out of your social and online marketing efforts. Own, understand and activate your best audience through the power of the link with Bitly Enterprise." />
        <meta name="viewport" content="width=device-width,minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">


        <link rel="icon" type="image/png" href="<c:url value="/resources/dl6fh5ptkejqa.cloudfront.net/0482a3c938673192a591f2845b9eb275.png"/>" />


        <link href="<c:url value="/resources/d4152f9bdc4b2aa91489dd560a2cd031.css"/>" rel="stylesheet" type="text/css">

        <script src="<c:url value="/resources/js/jquery-1.12.4.min.js"/>"></script>
        <script src="<c:url value="/resources/js/jquery-ui.min.js"/>"></script>
        <style>
            .toggle { width: 260px;float: left; }

        </style>
    
    </head>
    <body class="no-zc one-or-more-links">

        <div class="stage">

            <header id="header" data-template="stage-header">
                <div id="header-inner">

                    <div class="container container-pod container-pod-short">
                        <h1 class="header-logo"><a href="<c:url value="/"/>" rel="nofollow"></a></h1>
                        <nav class="navigation" role="navigation">
                            <ul>
                                <li><a href="pages/enterprise765a.html">Enterprise</a></li>
                                <li><a href="pages/resources.html">Resources</a></li>
                                <li><a href="blog/index.html">Blog</a></li>
                                <li><a href="pages/about.html">About</a></li>
                            </ul>
                        </nav>
                        <div class="header-button-wrapper">
                            <nav class="navigation" role="navigation">
                                <ul>
                                    <li><a href="<c:url value="/login"/>">Login</a></li>
                                    <li><a href="<c:url value="/signup"/>">Sign Up</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>


                </div>
            </header>


            <div id="container" class="clearfix">


                <div class="container container-pod shorten-container">
                    <h1 class="page-title t-center">HARNESS EVERY CLICK, TAP AND SWIPE.</h1>
                    

                    <div id="form_container" class="t-center mid-container foot-room">
                        <form:form  modelAttribute="su" method="POST" name="shortenUrl" id="unAuthShortenForm" commandName="su">
                            <fieldset class="cf">
                                <form:input id="shorten_url" taborder="1" name="url" type="text" cssClass="shorten-input" placeholder="Paste a link to shorten it" value="" autocomplete="off" autocorrect="off" autocapitalize="off" path="longUrl"/>
                                <input  id="shorten_btn" type="submit" class="button button-primary button-large shorten-button" value="${buttonCheck}" />
                            </fieldset>
                        </form:form>
                        ${Error}
                        <div id="shorten_actions">
                        </div>
                    </div>

                    <div class="link-container mid-container">
                        <div id="shortened_info">
                            <ul id="most_recent_link" class="anon_history footroom">
                            </ul>
                        </div>

                        <div>
                            <c:set var="kt" value="0" />
                            <c:if test="${not empty showSU}" >

                                <c:forEach items="${showSU}" var="allSu" >
                                    <ul id="anon_history" class="anon_history" style="display: block;">
                                        <li id="1fz1hn4" class="shortened_link" data-user_hash="${allSu.shortUrl}" data-short_link= "https://ngangon.tk/l/${allSu.shortUrl}">
                                            <div class="unauth-title">
                                                <a class="article-title" href="${allSu.longUrl}">
                                                    <div id="title"> ${showSULL[kt]} </div>
                                                </a>
                                            </div>
                                            <div class="unauth-title-url">
                                                <a class="article-title smaller" href="${allSu.longUrl}">${allSu.longUrl}</a>
                                            </div>
                                            <div class="unauth_capsule clearfix">
                                                <input  id="shorten_url1${allSu.shortUrl}"  class="copy-input" value="https://ngangon.tk/l/${allSu.shortUrl}" tabindex="-1" readonly="hidden">

                                                <div  id="shorten2${allSu.shortUrl}" class="toggle">
                                                    <a  class="short-url" href="https://ngangon.tk/l/${allSu.shortUrl}">https://ngangon.tk/l/${allSu.shortUrl}</a>
                                                </div>



                                                <input style="float: left" name="shorten_btn1${allSu.shortUrl}"  id="shorten_btn1${allSu.shortUrl}" type="submit" class="copy button primary" value="Copy" />

                                                <a style="float: right" class="info_page" href="https://ngangon.tk/l/${allSu.shortUrl}+">
                                                    <i class="default fa fa-bar-chart-o"></i> 5,668
                                                </a>

                                            </div>
                                        </li>

                                        <script id="jsbin-javascript">
                                            // Copy to clipboard example
                                            document.querySelector("#shorten_btn1${allSu.shortUrl}").onclick = function () {
                                                // Select the content
                                                document.querySelector("#shorten_url1${allSu.shortUrl}").select();
                                                // Copy to the clipboard
                                                document.execCommand('copy');
                                            };

                                        </script>
                                        <script>
                                            $(function () {
                                                // run the currently selected effect
                                                function runEffect() {
                                                    // get effect type from
                                                    var selectedEffect = "highlight";

                                                    // Most effect types need no options passed by default
                                                    var options = {};
                                                    // some effects have required parameters
                                                    if (selectedEffect === "scale") {
                                                        options = {percent: 50};
                                                    } else if (selectedEffect === "size") {
                                                        options = {to: {width: 200, height: 30}};
                                                    }

                                                    // Run the effect
                                                    $("#shorten2${allSu.shortUrl}").hide(selectedEffect, options, 1000, callback);
                                                }
                                                ;

                                                // Callback function to bring a hidden box back
                                                function callback() {
                                                    setTimeout(function () {
                                                        $("#shorten2${allSu.shortUrl}").removeAttr("style").hide().fadeIn();
                                                    }, 1000);
                                                }
                                                ;

                                                // Set effect from select menu value
                                                $("[name=shorten_btn1${allSu.shortUrl}]").on("click", function () {
                                                    runEffect();
                                                });
                                            });
                                        </script>
                                        <c:if test="${not empty showSU}" ></c:if>
                                        <c:if test="${kt==0}" >
                                            <div class="signup-promotion hide-on-new-shorten">
                                                <span class="signup-tagline">Want to customize, share, and track your links? </span>
                                                <a href="<c:url value="/login"/>" class="sign-up-link sign-up-post-shorten">Sign Up For Free <i class="orange-arrow-small"></i></a>
                                                <a class="header-login sign-up-post-shorten" href="<c:url value="/login"/>">Sign Up For Free</a>
                                            </div>
                                        </c:if>       
                                        <c:set var="kt" value="${kt+1}" />
                                    </ul>
                                </c:forEach>
                            </c:if>           

                        </div>
                    </div>
                </div>




                <div id="bottom">

                    <form action="#" method="get">
                        <input type="hidden" name="_xsrf" value="8abcf4b4a4b6462d9a36efaa2da157ad"/>
                    </form>

                </div>
            </div>


                    

            <footer id="footer" role="contentinfo" data-template="stage-footer">
                <section class="stage-pod">
                    <div class="container container-pod t-center">
                        <div class="footer-links">
                            <ul id="menu-footer-menu" class="nav footer-nav clearfix">
                                <li><a href="http://blog.ngangon.tk/">Blog</a></li>
                                <li><a href="http://support.ngangon.tk/">Support</a></li>
                                <li><a href="pages/contact.html">Contact</a></li>
                                <li><a href="http://dev.ngangon.tk/">Developers</a></li>
                                <li><a href="pages/privacy.html">Privacy Policy</a></li>
                                <li><a href="pages/terms-of-service.html">Terms Of Service</a></li>
                                <li><a href="pages/partners.html">Partners</a></li>
                                <li><a href="pages/careers.html">Careers</a></li>
                            </ul>
                        </div>
                        <ul class="footer-social-links">
                            <li class="footer-social-link footer-social-link-facebook">
                                <a href="http://www.facebook.com/ngangon" target="_blank"></a>
                            </li>
                            <li class="footer-social-link footer-social-link-twitter">
                                <a href="http://twitter.com/ngangon" target="_blank"></a>
                            </li>
                            <li class="footer-social-link footer-social-link-linkedin">
                                <a href="http://www.linkedin.com/company/552285" target="_blank"></a>
                            </li>
                            <li class="footer-social-link footer-social-link-instagram">
                                <a href="http://instagram.com/ngangon" target="_blank"></a>
                            </li>
                        </ul>
                        <div class="footer-attribution">
                            <p class="small source-org copyright flush-bottom">
                                © 2018 NganGon™&nbsp;&nbsp;Handmade in NYC
                            </p>
                        </div>
                    </div>
                </section>
            </footer>


        </div>
        <script src="<c:url value="/resources/4b3cc403e4e49993436bfa9734379ad8.js"/>" type="text/javascript"></script>
        <script>
                                            $('#header-mobile-menu-button').click(function () {
                                                $('#stage-sidebar').toggleClass('open');
                                                $('.stage').toggleClass('open');
                                            })
        </script>
        <script type="text/javascript">
                    (function () {
                        BITLY.tracking.statsd.setStatPrefix("page.signed_out_shorten", true);
                        new App.Lib.PlaceholderShim("#shorten_url");
                        BITLY.unauth_shorten.init("localhost:41746/ProjectURL/", {
                            'target_form': "#unAuthShortenForm",
                            'short_box': "#shorten_url",
                            'history_container': "#anon_history",
                            'history_delay': 3000
                        });
                        $("#shorten_url").focus();
                        PromoModule.init();
                        $('#page-home-link-shortener-counter').bitlyCount();
                        $("#page-home-trust-quotes").carousel({
                            speed: 8000,
                            class_active: 'active',
                            class_inactive: 'inactive',
                            slide_animate_callback: function () {},
                            navigation_option_previous: null,
                            navigation_option_next: null,
                            pagination: false,
                            pagination_navigation: false,
                            child_selector: '.page-home-trust-quote'
                        });
                        // brand-bar
                        $("#page-about-values").carousel({
                            speed: 10000,
                            class_active: 'active',
                            class_inactive: 'inactive',
                            slide_animate_callback: function () {},
                            navigation_option_previous: $('#page-about-values-navigation-previous'),
                            navigation_option_next: $('#page-about-values-navigation-next'),
                            pagination: false,
                            pagination_navigation: false,
                            child_selector: '.page-about-value'
                        });
                        var wrap = $("#header-inner");
                        var header = $("#header");
                        var $window = $(window);
                        $window.scroll(function (e) {
                            if ($window.scrollTop() > 400) {
                                wrap.addClass("fixed-header bounceInDown");
                                header.addClass("fixed-high-index");
                            } else {
                                wrap.removeClass("fixed-header bounceInDown");
                                header.removeClass("fixed-high-index");
                            }
                        });
                        //Add ga events tracking
                        $("#promo-bitlink").bind('click', function () {
                            window.ga('send', 'event', 'link-click', 'notification-link-click', 'Notification Click');
                        });
                        $("#top-signup-cta").bind('click', function () {
                            window.ga('send', 'event', 'button-click', 'hp-sign-up-free', 'HP Sign Up for Free');
                        });
                        $("#top-learn-more-cta").bind('click', function () {
                            window.ga('send', 'event', 'link-click', 'hp-learn-more-top', 'HP Top CTA Learn More');
                        });
                        $(".tour-cta").bind('click', function () {
                            window.ga('send', 'event', 'button-click', 'hp-learn-more-mid', 'HP Mid CTA Learn More');
                        });
                        $(".counter-button").bind('click', function () {
                            window.ga('send', 'event', 'button-click', 'hp-mid-cta-free', 'HP Mid CTA Free');
                        });
                    })();
        </script>

        



        <noscript><img height="1" width="1" style="display:none"
                       src="https://www.facebook.com/tr?id=863117047105619&amp;ev=PageView&amp;noscript=1"
                       /></noscript>

        <script>
            document.getElementById("shorten_url").addEventListener("paste", myFunction);
            function myFunction() {
                myVar = setTimeout(function () {
                    document.getElementById("unAuthShortenForm").submit();
                }, 0);
            }
        </script>


        <script id="jsbin-javascript">
            // Copy to clipboard example
            document.querySelector("#shorten_btn").onclick = function () {
                // Select the content
                document.querySelector("#shorten_url").select();
                // Copy to the clipboard
                document.execCommand('copy');
            };

        </script>


        <script src="<c:url value="/resources/oct.js"/>" type="text/javascript"></script>
      
      
       


    </body>
</html>
