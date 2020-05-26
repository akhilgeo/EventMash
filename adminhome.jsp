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
              <li><a href="home.jsp"><i class="icon-user"></i> Home</a></li>
            <li><a href="adminlogin.jsp" class="active><i class="icon-trophy"></i> Admin</a></li>
            <li><a href="stafflogin.jsp" "><i class="icon-trophy"></i> Staff</a></li>
            <li><a href="participantlogin.jsp"><i class="icon-doc-text"></i> Participant</a></li>
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
   
    <%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<h1><a href="stafflogin.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("userid")%></h1>
 <p align="right"><button class="Register"  onclick="window.location.href='adminlogout.jsp'">Logout</button></p>

   <div id="login">
    <p align="left">
    <a class="menu1"><span class="fontawesome-Register"></span></a>
    <button class="Register"  onclick="window.location.href='createstaff.jsp'">Create staff </button>
  	 </br></br>
  	 
 	<a class="menu1"><span class="fontawesome-Register"></span></a>
    <button class="Register"  onclick="window.location.href='viewstaff.jsp'">View staffs </button>
  	 </br></br>
  	 
   <a class="menu1"><span class="fontawesome-Register"></span></a>
   <button class="Register"  onclick="window.location.href='viewallregistration.jsp'">View Registarations </button>
   </br></br>
    <a class="menu1"><span class="fontawesome-Register"></span></a>
   <button class="Register"  onclick="window.location.href='viewquestions.jsp'">View Questions </button>

</br></br>
    <a class="menu1"><span class="fontawesome-Register"></span></a>
   <button class="Register"  onclick="window.location.href='viewparticipants.jsp'">View Participants </button>
   
  

  </p>
    </div> 
<%
    }
%>
    
</div>

    <!-- End of Main Block -->


<!-- Footer -->    
 <div class="footer">
 
 </div>
 <!-- End of Footer -->
    

</body>
</html>