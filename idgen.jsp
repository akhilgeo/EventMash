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
    
    <form method="post">

<table border="2">
Welcome <%=session.getAttribute("userid")%></h1>
<% String user=(String)session.getAttribute("userid");


try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/event";
String username="root";
String password="4jjxb";
String query="select * from eventreg ";

Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();


ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{
	if(rs.getString(1).equals(user))
	{
		session.setAttribute("fnn", rs.getString(2));
		session.setAttribute("clg", rs.getString(5));
		session.setAttribute("phn", rs.getString(4));
		session.setAttribute("evt", rs.getString(6));
%>
    <h1><u>Terms and Conditions For Digital id Card</u></h1>
    <p>The Digital id card is a Computer generated id card based on the details you have provided. To participate in the event , you need to bring either the hard or soft copy of the Digital id card. To get the Digital id card click on the Generate id card below.The Digital id card id not transferable or any editing done on the same is not allowed</p>
    <h1><strong><strong><a href="generateid.jsp">Generate Digital id Card</a></strong></strong></h1> 
    
        <%
	}
}
%>
    </table>
    <%
    rs.close();
    stmt.close();
    conn.close();
    }
    catch(Exception e)
    {
        e.printStackTrace();
        }






%>

</form>
    </div>
    <!-- End of Main Block -->


<!-- Footer -->    
 <div class="footer">
 
 </div>
 <!-- End of Footer -->
    

</body>
</html>