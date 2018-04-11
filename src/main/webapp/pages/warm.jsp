<%-- 
    Document   : warm
    Created on : Mar 23, 2018, 3:32:46 PM
    Author     : hung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<title>Warning! | There might be a problem with the requested link</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="referrer" content="always">
<style type="text/css">
* { padding:0; margin:0; }
body {
font-family:Arial, sans-serif;
font-size:12px;
color:#333;
background:#555;
}
h1,h2,h3,h4,h5,h6,input,select,option {
font-size:12px;
font-family:Arial, sans-serif;
}
ul li { list-style:none; }
.hr { clear:both; float:none; }
.hr hr {display:none;}
a { text-decoration:none; color:#6699ff; }
a:hover { text-decoration:underline; }
.spamContainer {
width:960px;
margin:50px auto 0;
border:1px solid #ccc;
background:white;
text-align:center;
padding-bottom:20px;
}
p {
padding-bottom:10px;
}
.spamWarningHeader {
background:#ccc;
text-align:center;
padding:15px;
margin-top:20px;
font-size:24px;
}
.warningHeaderText {
color:#ff0101;
text-transform:uppercase;
}
.spamWarningMessage {
font-size:16px;
padding:10px 80px;
text-align:center;
}
.spamWarningMessage p {
line-height:1.5em;
}
.spamSuggestionsBox {
width:560px;
margin:0 auto;
background:#ffc;
border:1px solid #eee;
padding:10px 10px 20px;
}
.spamSuggestionsBox h3 {
font-weight:bold;
font-size:16px;
padding-bottom:6px;
}
.spamSuggestionsBox .spamSuggestionsInnerContainer ul {
list-style-position:inside;
}
.spamSuggestionsBox .spamSuggestionsInnerContainer ul li {
list-style-type:disc;
list-style-position:inside;
}
.spamSuggestionsInnerContainer {
text-align:left;
font-size:16px;
width:380px;
margin:0 auto;
}
.spamSuggestionsInnerContainer h3 {
padding:0 0 10px 30px;
}
.spamSuggestionsInnerContainer p {
padding-top:16px;
}
.spamSuggestionsInnerContainer p a {
text-align:center;
}
.spamLearnMoreBox {
border-top:1px solid #ccc;
padding-top:15px;
text-align:left;
padding-left:10px;
}
.spamLearnMoreBox ul li {
padding-bottom:3px;
}
.spamPartnersBox {
}
.spamWarningIconBox {
padding-top:15px;
}
.spamCallToActionBox {
font-size:18px;
font-weight:bold;
}
.spamPartnersBox {
padding-top:20px;
font-size:14px;
}
.spamURLBox {
font-size:16px;
padding-top:20px;
overflow:hidden;
}
.spamURLBox p a {
font-size:12px;
}
.spamWarningMessageReasonsList {
text-align:left;
padding-bottom:10px;
padding-left:10px;
}
.spamWarningMessageReasonsList li {
list-style-type:disc;
list-style-position:inside;
padding-bottom:5px;
}
</style>
</head>
<body>
<div class="spamContainer">
    <div class="spamWarningIconBox"><img src="<c:url value="/resources/images/bitly_warning_hand.png"/>" border="0" width"77" height="78" alt="warning, this website may harm your computer icon" /></div>
<h2 class="spamWarningHeader"><b class="warningHeaderText">Stop</b> - there might be a problem with the requested link</h2>
<div class="spamWarningMessage">
<p>The link you requested has been identified by prolinks as being potentially problematic. This could be because a prolinks user has reported a problem, a black-list service reported a problem, because the link has been shortened more than once, or because we have detected potentially malicious content. This may be a problem because:</p>
<ul class="spamWarningMessageReasonsList">
<li>Some URL-shorteners re-use their links, so prolinks can't guarantee the validity of this link.</li>
<li>Some URL-shorteners allow their links to be edited, so prolinks can't tell where this link will lead you.</li>
<li>Spam and malware is very often propagated by exploiting these loopholes, neither of which prolinks allows for. </li>
</ul>
<p>The link you requested may contain inappropriate content, or even spam or malicious code that could be downloaded to your computer without your consent, or may be a forgery or imitation of another website, designed to trick users into sharing personal or financial information.</p>
</div>
<div class="spamSuggestionsBox">
<h3>prolinks suggests that you</h3>
<div class="spamSuggestionsInnerContainer">
<ul>
<li>Change the original link, and re-shorten with prolinks</li>
<li>Close your browser window</li>
<li>Notify the sender of the URL</li>
</ul>
</div>
<div class="spamURLBox">
<p> Or, continue at your own risk to<br />
    <form:form modelAttribute="su">
        <div class="col-md-8">
            <a id="clickthrough" href="http://${su}">${su}</a>

        </div>
    </form:form>
</p>
</div>
<div class="spamLearnMoreBox">
<ul>
<li>You can learn more about harmful content at <a href="http://www.StopBadware.org/" target="_new">www.StopBadware.org</a></li>
<li>You can find out more about phishing from <a href="http://www.antiphishing.org/" target="_new">www.antiphishing.org</a></li>
<li>For more information or to report a false positive please contact <a href="mailto:support@prolinks.tk?body=More information on https://ngangon.tk as spam">support@ngangon.tk</a></li>
</ul>
</div>
</div>
<!-- <div class="spamPartnersBox">
<p>bitly works with world-class partners to protect our users from spam and malware, including:</p>
</div> -->
<div class="spamPartnersBox">
<p>Read more about prolinks's spam and antiphishing partners <a href="https://ngangon.tk">here</a></p>
</div>
<div class="spamCallToActionBox">
<p>Publish with <a href="https://ngangon.tk">NganGon</a> and protect your links</p>
</div>
</div>
<script type="text/javascript">
// utils
function addEvent( obj, type, fn ) {
return obj.attachEvent ? obj.attachEvent( 'on'+type, fn ) : obj.addEventListener( type, fn, false );
}
function removeEvent( obj, type, fn ) {
return obj.detachEvent ? obj.detachEvent( 'on'+type, fn ) : obj.removeEventListener( type, fn, false );
}
</script>

</body>
</html>
