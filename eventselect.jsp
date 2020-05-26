<%@ page language ="java" import="java.sql.*"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Event Mash</title>
        <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/bootstrap-responsive.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="font/css/fontello.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
<!-- Navigation Bar -->
<div class="navbar">
      <div class="navbar-inner">
        <div class="container"> <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </a> <a class="brand" href="home.jsp"><img src="img/user.jpg"/></a>
          <ul class="nav nav-collapse pull-right">
            <li><a href="home.jsp" ><i class="icon-user"></i>Home</a></li>
           <li><a href="adminlogin.jsp" ><i class="icon-user"></i>Admin</a></li>
            <li><a href="stafflogin.jsp"><i class="icon-picture"></i> Staff</a></li>
            <li><a href="participantlogin.jsp" class="active"><i class="icon-doc-text"></i> Participant</a></li>
          </ul>
          <!-- Everything you want hidden at 940px or less, place within here -->
          <div class="nav-collapse collapse">
            <!-- .nav, .navbar-search, .navbar-form, etc -->
          </div>
        </div>
      </div>
    </div>
    <!-- End of Navigation Bar -->
    
    <!-- Main Block -->
    <div class="container profile">

    
    <form method="post" action="eventselect1.jsp" >
    Select eventuages:<br>
    <input type="checkbox" name="event" value="event1">Event 1<br>
    <input type="checkbox" name="event" value="event2">Event 2<br>
    <input type="checkbox" name="event" value="event3">Event 3<br>
    <input type="checkbox" name="event" value="event4">Event 4<br>
    <input type="checkbox" name="event" value="event5">Event 5<br>
    <input type="submit" value="Submit">
    </form>
   
     <%@ page import ="java.sql.*" %>
<%
	
    String fname = request.getParameter("fname");    
    String lname = request.getParameter("lname");
    String college = request.getParameter("college");
    String phone = request.getParameter("phone");
    
    session.setAttribute("fname",fname);
    session.setAttribute("lname",lname);
    session.setAttribute("college",college);
    session.setAttribute("phone",phone); %>
    
    </div>
    <!-- End of Main Block -->


<!-- Footer -->    
 <div class="footer">
 
 </div>
 <!-- End of Footer -->
    

</body>
</html>