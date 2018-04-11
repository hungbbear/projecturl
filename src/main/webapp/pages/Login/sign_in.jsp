<%-- 
    Document   : sign_in.jsp
    Created on : Mar 7, 2018, 2:14:21 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta content="IE=edge" http-equiv="X-UA-Compatible">
        <meta name="referrer" content="origin">
        <title> Login </title>
        <link rel="icon" type="image/png" href="<c:url value="/resources/dl6fh5ptkejqa.cloudfront.net/0482a3c938673192a591f2845b9eb275.png"/>" />

        <meta name="viewport" content="width=device-width,minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">


        <link href="<c:url value="/resources/d3h5jhobc20ump.cloudfront.net/40c6c89507ca8897bd0ab2cb2808fc16.css"/>" rel="stylesheet" type="text/css">







        <script>
            // This is called with the results from from FB.getLoginStatus().
            function myFunction() {
                function statusChangeCallback(response) {
                    console.log('statusChangeCallback');
                    console.log(response);
                    console.log(response.authResponse.accessToken);

                    if (response.status === 'connected') {
                        window.location.href = '<c:url value="/fb?access_token="/>' + response.authResponse.accessToken;
                    } else {
                        // The person is not logged into your app or we are unable to tell.
                        document.getElementById('status').innerHTML = 'Please log ' +
                                'into this app.';
                    }
                }
                // This function is called when someone finishes with the Login
                // Button. See the onlogin handler attached to it in the sample
                // code below.
                function checkLoginState() {
                    FB.getLoginStatus(function (response) {
                        statusChangeCallback(response);
                    });
                }
                window.fbAsyncInit = function () {
                    FB.init({
                        appId: '2016000671758370',
                        cookie: true, // enable cookies to allow the server to access 
                        // the session
                        xfbml: true, // parse social plugins on this page
                        version: 'v2.8' // use graph api version 2.8
                    });
                    FB.getLoginStatus(function (response) {
                        statusChangeCallback(response);
                    });
                };
                // Load the SDK asynchronously
                (function (d, s, id) {
                    var js, fjs = d.getElementsByTagName(s)[0];
                    if (d.getElementById(id))
                        return;
                    js = d.createElement(s);
                    js.id = id;
                    js.src = "https://connect.facebook.net/en_US/sdk.js";
                    fjs.parentNode.insertBefore(js, fjs);
                }(document, 'script', 'facebook-jssdk'));
            }
            // Here we run a very simple test of the Graph API after login is
            // successful. See statusChangeCallback() for when this call is made.
        </script>


    </head>
    <body class="registration-pages sign_in">

        <div class="container-box">
            <h1 class="header-logo"><a href="../index.html" rel="nofollow"></a></h1>



            <!--            <script src="../../www.google.com/recaptcha/api85f1.js?onload=onloadCallback&amp;render=explicit"
                                async defer>
                        </script>-->
            <!--id="sign-in"-->
            <form id="sign-in" action="login" method="POST" >
                <div class="header">
                    <h3 class="tagline">Sign in &amp; Start Sharing</h3>
                </div>
                <div class="social-sign-in">

                    <a id="facebook-sign-up" rel="nofollow"  onclick="myFunction();" class="social-btn facebook-social-btn button susi-width" data-network="facebook">Sign up with Facebook</a><br>


                </div>
                <p class="separator t-center">
                    <span>Or</span>
                </p>
                <span class="error-message">
                    <c:if test="${not empty error }">
                        * ${error}

                    </c:if>
                </span>
                <div class='susi-fields-wrapper'>
                    <fieldset>
                        <label for="username">
                            <input class="text" type="text" name="username" placeholder="Email address or username" tabindex="3" />

                        </label>
                        <label for="password" class="password-block">
                            <input class="text" type="password" name="password" placeholder="Password" tabindex="4" autocomplete="off" />
                            <a class="forgot" title="Password Reset" href="forgot_password.html" target="_blank" tabindex="6">Forgot?</a>

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
                <div class="switch to-sign-up" href="/signup" tabindex="7"><span class="gray-link">Don't have an account?</span> <a href="<c:url value="/signup"/>" >Sign Up Now</a></div>
                <div class="switch to-sign-in" href="sign_in.html" tabindex="8"><span class="gray-link">Already have an account?</span> <a href="">Sign In</a></div>
                <div class="switch"><a href="../sso/url_slug.html" tabindex="9">Sign In with SSO</a></div>
            </div>

        </div>


    </body>
</html>
