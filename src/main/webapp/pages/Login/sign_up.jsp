<!DOCTYPE HTML>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
    <head>
        <script src='https://www.google.com/recaptcha/api.js'></script>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta content="IE=edge" http-equiv="X-UA-Compatible">
        <meta name="referrer" content="origin">
        <title> Login </title>
        <link rel="icon" type="image/png" href="<c:url value="/resources/dl6fh5ptkejqa.cloudfront.net/0482a3c938673192a591f2845b9eb275.png"/>" />

        <meta name="viewport" content="width=device-width,minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">


        <link href="<c:url value="/resources/d3h5jhobc20ump.cloudfront.net/40c6c89507ca8897bd0ab2cb2808fc16.css"/>" rel="stylesheet" type="text/css">


        <script type="text/javascript">
            (function () {
                window.BITLY = {};
                if (!window.console)
                    window.console = {};
                if (!window.console.log)
                    window.console.log = function () {};
            })();
        </script>

        <script src="../../use.typekit.net/mys2uzu.js"></script>
        <script>try {
                Typekit.load();} catch (e) {
            }</script>


        <script type="text/javascript">
            var onSubmit = function (token) {
                $("#sign-up").submit();
                grecaptcha.reset();
            };
            var onloadCallback = function () {
                grecaptcha.render('submit', {
                    'sitekey': '6LftIU8UAAAAAPv1ZaXB6vObn_QhqP2AqyQuKPnT',
                    'callback': onSubmit
                });
            };
        </script>


    </head>
    <body class="registration-pages sign_up">

        <div class="container-box">
            <h1 class="header-logo"><a href="../index.html" rel="nofollow"></a></h1>

            <form id="sign-up" method="POST">
                <div class="header">
                    <h3 class="tagline">Create a free account</h3>
                </div>
                <div class="social-sign-in">
                    <a id="facebook-sign-up" rel="nofollow" href="https://graph.facebook.com/oauth/authorize?scope=publish_actions%2Cpublic_profile%2Cemail&amp;state=&amp;redirect_uri=https%2Google.com%2Fa%2Fadd_facebook_account%3Frd%3D%252F&amp;display=page&amp;client_id=124707800885763" class="social-btn facebook-social-btn button susi-width" data-network="facebook">Sign up with Facebook</a><br>
                    <a id="twitter-sign-up" rel="nofollow" href="https://api.twitter.com/oauth/authorize?oauth_callback=https%3A%2F%2Fbitly.com%2Fa%2Fadd_twitter_account%3Frd%3D%252F&amp;oauth_token=zn64JgAAAAAAXfCeAAABYeP7T4Y&amp;brand_guid=None" class="social-btn twitter-social-btn button susi-width" data-network="twitter">Sign up with Twitter</a>
                </div>
                <p class="separator t-center">
                    <span>Or</span>
                </p>
                <div class='susi-fields-wrapper'>
                    <fieldset>
                            <span class="error-message">
                        <c:if test="${not empty error }">
                           * ${error}
                          
                        </c:if>
                        </span>
                        
                            
                        <label for="username">
                            <input class="text" type="text" name="username" autocomplete="off" placeholder="Username" tabindex="3" />
                            <span class="error-message"></span>
                        </label>
                        <label for="email">
                            <input class="text" type="text" name="email" autocomplete="off" placeholder="Email address" tabindex="4" />
                            <span class="error-message"></span>
                        </label>
                        <label for="password" class="password-block">
                            <input class="text" type="password" name="password" autocomplete="off" placeholder="Password" tabindex="5" />
                            <span class='password-reqs'>6+ characters</span>
                            <span class="error-message"></span>
                        </label>
                        
                      
                        <label for="password2">
                            <input class="text" type="password" name="password2" autocomplete="off" placeholder="Password again" tabindex="6" />
                            <span class="error-message"></span>
                        </label>
                        <div class="switch to-sign-in password-tip">
                            <span class="gray-link">Password should be 6 or more characters, must contain at least one letter, number, and special character</span>
                        </div>
                            <div class="g-recaptcha"
                                 data-sitekey="6LftIU8UAAAAAPv1ZaXB6vObn_QhqP2AqyQuKPnT">
                                 
                        
                        </div>
                        
                        <input type="hidden" name="rd" value="/" />
                        <input id="submit" type="submit" class="button button-primary sign-up-in" value="Create account" tabindex="8" />
                        <input type="hidden" name="_xsrf" value="8abcf4b4a4b6462d9a36efaa2da157ad"/>
                    </fieldset>
                </div>
            </form>

            <script src="../../www.google.com/recaptcha/api85f1.js?onload=onloadCallback&amp;render=explicit"
                    async defer>
            </script>

            <form id="sign-in" method="POST">
                <div class="header">
                    <h3 class="tagline">Sign in &amp; Start Sharing</h3>
                </div>
                <div class="social-sign-in">
                    <a rel="nofollow" href="https://graph.facebook.com/oauth/authorize?scope=publish_actions%2Cpublic_profile%2Cemail&amp;state=&amp;redirect_uri=https%3A%2F%2Fbitly.com%2Fa%2Fadd_facebook_account%3Frd%3D%252F&amp;display=page&amp;client_id=124707800885763" class="social-btn facebook-social-btn button susi-width" data-network="facebook">Sign in with Facebook</a><br>
                    <a rel="nofollow" href="https://api.twitter.com/oauth/authorize?oauth_callback=https%3A%2F%2Fbitly.com%2Fa%2Fadd_twitter_account%3Frd%3D%252F&amp;oauth_token=zn64JgAAAAAAXfCeAAABYeP7T4Y&amp;brand_guid=None" class="social-btn twitter-social-btn button susi-width" data-network="twitter">Sign in with Twitter</a>
                </div>
                <p class="separator t-center">
                    <span>Or</span>
                </p>
                <div class='susi-fields-wrapper'>
                    <fieldset>
                        <label for="username">
                            <input class="text" type="text" name="username" placeholder="Email address or username" tabindex="3" />
                            <span class="error-message"></span>
                        </label>
                        <label for="password" class="password-block">
                            <input class="text" type="password" name="password" placeholder="Password" tabindex="4" autocomplete="off" />
                            <a class="forgot" title="Password Reset" href="forgot_password.html" target="_blank" tabindex="6">Forgot?</a>
                            <span class="error-message"></span>
                        </label>
                        <input type="hidden" name="rd" value="/" />
                        <input type="submit" class="button button-primary sign-up-in" value="Sign in" tabindex="5" />
                        <input type="hidden" name="_xsrf" value="8abcf4b4a4b6462d9a36efaa2da157ad"/>
                    </fieldset>
                </div>
            </form>
            <div class="t-center">
                <div class="switch to-sign-in terms-and-conditions"><span class="gray-link">By creating an account, you agree to <br>Bitly's
                        <a href="../pages/terms-of-service.html">Terms of Service</a> and <a href="../pages/privacy.html">Privacy Policy.</a></span>
                </div>
                <div class="switch to-sign-up" href="sign_up.html" tabindex="7"><span class="gray-link">Don't have an account?</span> <a href="#"<a href="<c:url value="/login"/>">Login</a>>Sign Up Now</a></div>
                <div class="switch to-sign-in" href="sign_in.html" tabindex="8"><span class="gray-link">Already have an account?</span> <a href="<c:url value="/login"/>">Sign In</a></div>
                <div class="switch"><a href="../sso/url_slug.html" tabindex="9">Sign In with SSO</a></div>
            </div>

        </div>

        <script src="../../d1ayxb9ooonjts.cloudfront.net/7986d8773257fc24d033307d62d088f8.js" type="text/javascript"></script>
        <script type="text/javascript">
            $("#facebook-sign-up").click(function () {
                window.ga('send', 'event', 'free-users', 'account-creation-attempt-facebook', 'Free Account Creation Facebook');
            });
            $("#twitter-sign-up").click(function () {
                window.ga('send', 'event', 'free-users', 'account-creation-attempt-twitter', 'Free Account Creation Twitter');
            });
        </script>


        <script type="text/javascript">
            (function (i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r;
                i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date();
                a = s.createElement(o),
                        m = s.getElementsByTagName(o)[0];a.async = 1;
                a.src = g;
                m.parentNode.insertBefore(a, m)
            })(window, document, 'script', '../../www.google-analytics.com/analytics.js', 'ga');
            (function (w, d) {

                var gaId = 'UA-25224921-3';


                var accountType = 'user';


                w.ga('create', gaId, 'auto');


                w.ga('set', 'dimension2', accountType);

                w.ga('send', 'pageview');

            })(window, document);
        </script>

    </body>

    <!-- Mirrored from bitly.com/a/sign_up by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 01 Mar 2018 23:56:32 GMT -->
</html>
