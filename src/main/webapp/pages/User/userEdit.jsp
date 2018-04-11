 <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element"> <span>
                            <img alt="image" class="img-circle" src="<c:url value="/resources/img/profile_small.jpg"/>" />
                             </span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">David Williams</strong>
                             </span> <span class="text-muted text-xs block">Art Director <b class="caret"></b></span> </span> </a>
                        <ul class="dropdown-menu animated fadeInRight m-t-xs">
                            <li><a href="profile.jsp">Profile</a></li>
                            <li><a href="contacts.jsp">Contacts</a></li>
                            <li><a href="mailbox.jsp">Mailbox</a></li>
                            <li class="divider"></li>
                            <li><a href="login.jsp">Logout</a></li>
                        </ul>
                    </div>
                    <div class="logo-element">
                        IN+
                    </div>
                </li>
                <li>
                    <a href="<c:url value="/dashboard_5"/>"><i class="fa fa-th-large"></i> <span class="nav-label">Dashboards</span></a>
                   
                </li>
                           <li>
                    <a href="<c:url value="/contacts"/>"><i class="fa fa-diamond"></i> <span class="nav-label">Contacts</span></a>
                   
                </li>
                <li>
                    <a href="<c:url value="/mailbox"/>"><i class="fa fa-envelope"></i> <span class="nav-label">Mailbox </span><span class="label label-warning pull-right">16/24</span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="<c:url value="/mailbox"/>">Inbox</a></li>
                        <li><a href="<c:url value="/mail_detail"/>">Email view</a></li>
                    
                    </ul>
                </li>
           
                	   <li>
                        <a href="#"><i class="fa fa-globe"></i> <span class="nav-label">Miscellaneous</span><span class="label label-info pull-right">NEW</span></a>
                        <ul class="nav nav-second-level collapse">
                            <li><a href="<c:url value="/google_maps"/>google_maps.jsp">Google maps</a></li>
                            <li><a href="<c:url value="/datamaps"/>datamaps.jsp">Datamaps</a></li>
                            <li><a href="<c:url value="/chat_view"/>chat_view.jsp">Chat view</a></li>
                        </ul>
                    </li>
             
			
            </ul>
