<%-- 
    Document   : home
    Created on : Jan 15, 2018, 8:23:19 PM
    Author     : Quan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="<c:url value = "resources/assets/css/bootstrap.min.css"/>" />
        <title>ShortURL</title>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2" style="margin-top: 200px">
                    <form:form modelAttribute="su" method="POST" >
                        <div class="col-md-8">
                            <form:input path="longUrl" placeholder="Enter longURL" cssClass="form-control"/>
                        </div>
                        <div class="col-md-4">
                            <input type="submit" value="ShortURL" class="btn btn-success"/>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </body>
</html>
