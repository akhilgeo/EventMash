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
     <%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<h1><a href="participantlogin.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("userid")%></h1>
 <p align="right"><button class="Register"  onclick="window.location.href='logout.jsp'">Logout</button></p>

 <form method="post" action="connectstaff1.jsp">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Contact Event Head</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Name</td>
                        <td><input type="text" name="name" value="" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="email" value="" /></td>
                    </tr>
                    <tr>
                        <td>Subject</td>
                        <td><input type="text" name="subject" value="" /></td>
                    </tr>
                    <tr>
                        <td>Question</td>
                        <td><input type="text" name="question" value="" /></td>
                    </tr>
                   
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
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