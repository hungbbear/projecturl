<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>


    <!-- Mirrored from webapplayers.com/inspinia_admin-v2.7.1/dashboard_5.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 04 Oct 2017 15:24:38 GMT -->
    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>User Manager</title>

        <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/font-awesome/css/font-awesome.css"/>" rel="stylesheet">

        <link href="<c:url value="/resources/css/animate.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/d4152f9bdc4b2aa91489dd560a2cd031.css"/>" rel="stylesheet" type="text/css">

        <script src="<c:url value="/resources/vendor/jquery/jquery.min.js"/>"></script>
        <!-- DataTables JavaScript -->
        <script src="<c:url value="/resources/vendor/datatables/js/jquery.dataTables.min.js"/>"></script>
        <script src="<c:url value="/resources/vendor/datatables-plugins/dataTables.bootstrap.min.js"/>"></script>
        <script src="<c:url value="/resources/vendor/datatables-responsive/dataTables.responsive.js"/>"></script>
    </head>

    <body>
        <div id="wrapper">
            <nav class="navbar-default navbar-static-side" role="navigation">
                <div class="sidebar-collapse">
                    <ul class="nav metismenu" id="side-menu">
                        <li class="nav-header">
                            <div class="dropdown profile-element"> <span>
                                    <img alt="image" class="img-circle" src="<c:url value="/resources/img/profile_small.jpg"/>" />
                                </span>
                                <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                    <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold"><%=session.getAttribute("name") %></strong>
                                        </span> <span class="text-muted text-xs block">Art Director <b class="caret"></b></span> </span> </a>
                                <ul class="dropdown-menu animated fadeInRight m-t-xs">
                                    <li><a href="<c:url value="/profile"/>">Profile</a></li>
                                    <li><a href="<c:url value="/contacts"/>">Contacts</a></li>
                                    <li><a href="<c:url value="/mailbox"/>">Mailbox</a></li>
                                    <li class="divider"></li>
                                    <li><a href="login.jsp">Logout</a></li>
                                </ul>
                            </div>
                            <div class="logo-element">
                                IN+
                            </div>
                        </li>
                        <li>
                            <a href="#><i class="fa fa-th-large"></i> <span class="nav-label">Dashboards</span></a>

                        </li>
                        <li>
                            <a href="#><i class="fa fa-diamond"></i> <span class="nav-label">Contacts</span></a>

                        </li>
                        <li>
                            <a href="#><i class="fa fa-envelope"></i> <span class="nav-label">Mailbox </span><span class="label label-warning pull-right">16/24</span></a>
                            <ul class="nav nav-second-level collapse">
                                <li><a href="#">Inbox</a></li>
                                <li><a href="#">Email view</a></li>

                            </ul>
                        </li>

                        <li>
                            <a href="#"><i class="fa fa-globe"></i> <span class="nav-label">Miscellaneous</span><span class="label label-info pull-right">NEW</span></a>
                            <ul class="nav nav-second-level collapse">
                                <li><a href="#">Google maps</a></li>
                                <li><a href="#">Datamaps</a></li>
                                <li><a href="#">Chat view</a></li>
                            </ul>
                        </li>


                    </ul>

                </div>
            </nav>

            <div id="page-wrapper" class="gray-bg">
                <div class="row border-bottom">
                    <nav class="navbar navbar-static-top white-bg" role="navigation" style="margin-bottom: 0">
                        <div class="navbar-header">
                            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
                                <form:form modelAttribute="su" method="POST" action="insertsu" class="form-horizontal navbar-form-custom" style="width:500px ! important;">
                                <div class="input-group">
                                    <form:input path="longUrl" placeholder="Enter longURL" cssClass="form-control" />
                                    <span class="input-group-btn">
                                        <input type="submit" class="btn btn-primary" value="Short Now!" name="top-search"/>
                                    </span>
                                    
                                </div>
                             </form:form>
                        </div>
                        <ul class="nav navbar-top-links navbar-right">
                            
                            <li class="dropdown">
                                <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                                    <i class="fa fa-envelope"></i>  <span class="label label-warning">16</span>
                                </a>
                                <ul class="dropdown-menu dropdown-messages">
                                    <li>
                                        <div class="dropdown-messages-box">
                                            <a href="profile.html" class="pull-left">
                                                <img alt="image" class="img-circle" src="img/a7.jpg">
                                            </a>
                                            <div>
                                                <small class="pull-right">46h ago</small>
                                                <strong>Mike Loreipsum</strong> started following <strong>Monica Smith</strong>. <br>
                                                <small class="text-muted">3 days ago at 7:58 pm - 10.06.2014</small>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                                    <i class="fa fa-bell"></i>  <span class="label label-primary">8</span>
                                </a>
                                <ul class="dropdown-menu dropdown-alerts">
                                    <li>
                                        <a href="mailbox.html">
                                            <div>
                                                <i class="fa fa-envelope fa-fw"></i> You have 16 messages
                                                <span class="pull-right text-muted small">4 minutes ago</span>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                            </li>


                            <li>
                                <a href="/login">
                                    <i class="fa fa-sign-out"></i> Log out
                                </a>
                            </li>
                            <li>
                                <a class="right-sidebar-toggle">
                                    <i class="fa fa-tasks"></i>
                                </a>
                            </li>
                        </ul>

                    </nav>
                </div>
                <div class="wrapper wrapper-content">
                    
                <div class="row">
                    <div class="col-lg-12">
                        <div class="ibox float-e-margins">
                            <div class="ibox-title">
                                <h5>Your Shorted URL</h5>
                            </div>
                            <div class="ibox-content">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered table-hover dataTables-example dataTable" id="hungtable">
                                       <thead>
                                           <tr>
                                               <th>Date</th>
                                               <th>Url</th>
                                               <th>Shorten</th>
                                               <th>Customize</th>
                                               <th>Virus</th>
                                               <th>Edit</th>
                                           </tr>
                                       </thead>
                                       <tbody> 
                                           <c:if test="${not empty lsuser}" >
                                               <c:forEach items="${lsuser}" var="ls" >
                                                   <form action="edit/user" method="POST">
                                                       <tr>
                                                           <td>${ls.getDate()}</td>
                                                           <td>${ls.getLongUrl()}</td>
                                                           <td><a href="https://ngangon.tk/l/${ls.getShortUrl()}">${ls.getShortUrl()}</a></td>
                                                           <td><input type="text" name="custom" value="<c:if test="${not empty ls.getCustomize()}" >${ls.getCustomize()}</c:if>" placeholder="Your Customize"/>
                                                               <input type="hidden" name="shorturl" value="${ls.getShortUrl()}"/></td>
                                                           <td>${ls.getVirus()}</td>
                                                           <td><input type="submit" name="btnUpdate" value="Update" class="btn btn-lg btn-success btn-block"/></td>
                                                       </tr>
                                                   </form>
                                               </c:forEach>
                                           </c:if>           
                                       </tbody>
                                   </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>     
                        
                 
                </div>
                <div class="footer">
                    <div>
                        <strong>Copyright</strong> NganGon &copy; 2018
                    </div>
                </div>
            </div>
            


        </div>
  <script src="<c:url value="/resources/4b3cc403e4e49993436bfa9734379ad8.js"/>" type="text/javascript"></script>
        <script>
                                            $('#header-mobile-menu-button').click(function () {
                                                $('#stage-sidebar').toggleClass('open');
                                                $('.stage').toggleClass('open');
                                            })
        </script>
        

        


        <script>
            document.getElementById("shorten_url").addEventListener("paste", myFunction);
            function myFunction() {
                myVar = setTimeout(function () {
                    document.getElementById("unAuthShortenForm").submit();
                }, 2000);
            }
        </script>


        


        <script>
            $(document).ready(function() {
                $('#hungtable').dataTable({
					"order": [[ 0, "desc" ]],
                    "responsive": true,
                    "paging": true
                });
            });
        </script>
        <!-- Mainly scripts -->
        <script src="<c:url value="/resources/js/jquery-3.1.1.min.js"/>" ></script>
        <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
        <script src="<c:url value="/resources/js/plugins/metisMenu/jquery.metisMenu.js"/>"></script>
        <script src="<c:url value="/resources/js/plugins/slimscroll/jquery.slimscroll.min.js"/>"></script>

<!--         Flot 
        <script src="<c:url value="/resources/js/plugins/flot/jquery.flot.js"/>"></script>
        <script src="<c:url value="/resources/js/plugins/flot/jquery.flot.tooltip.min.js"/>"></script>
        <script src="<c:url value="/resources/js/plugins/flot/jquery.flot.spline.js"/>"></script>
        <script src="<c:url value="/resources/js/plugins/flot/jquery.flot.resize.js"/>"></script>
        <script src="<c:url value="/resources/js/plugins/flot/jquery.flot.pie.js"/>"></script>
        <script src="<c:url value="/resources/js/plugins/flot/jquery.flot.symbol.js"/>"></script>
        <script src="<c:url value="/resources/js/plugins/flot/jquery.flot.time.js"/>"></script>-->
<!--
         Custom and plugin javascript 
        <script src="<c:url value="/resources/js/inspinia.js"/>"></script>
        <script src="<c:url value="/resources/js/plugins/pace/pace.min.js"/>"></script>

         Sparkline 
        <script src="<c:url value="/resources/js/plugins/sparkline/jquery.sparkline.min.js"/>"></script>
-->

        
    </body>

    <!-- Mirrored from webapplayers.com/inspinia_admin-v2.7.1/dashboard_5.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 04 Oct 2017 15:24:38 GMT -->
</html>
