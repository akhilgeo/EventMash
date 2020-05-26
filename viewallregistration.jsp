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
            <li><a href="adminlogin.jsp"><i class="icon-trophy"></i> Admin</a></li>
            <li><a href="stafflogin.jsp" class="active"><i class="icon-trophy"></i> Staff</a></li>
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
    
    <form method="post">

<table border="7">
<tr>
<td>Username</td>
<td>First_Name</td>
<td>Last_Name</td>
<td>College</td>
<td>Phone</td>
<td>Event</td>
<td></td>
<td colspan="2" align="center">ACTION</td>
</tr>

<h1><strong>ALL REGISTRATIONS</strong></h1>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/event";
String username="root";
String password="4jjxb";
String query="select * from eventreg";

Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();

ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>
    <tr>
    
    <td><input type="text" value="<%=rs.getString("username") %>"></td>
    <td><input type="text" value="<%=rs.getString("fname") %>"></td>
    <td><input type="text" value="<%=rs.getString("lname") %>"></td>
    <td><input type="text" value="<%=rs.getString("college") %>"></td>
    <td><input type="text" value="<%=rs.getString("phone") %>"></td>
    <td><input type="text" value="<%=rs.getString("event") %>"></td>
    <% String uname = rs.getString("username");
      String fname = rs.getString("fname");
       String lname = rs.getString("lname");  
        String college = rs.getString("college");
         String phone = rs.getString("phone");
          String event = rs.getString("event");
      %>    
   <td><input type="button" name="UPDATE" value="UPDATE" onclick="
       <% 
       
    String qmod="update event.eventreg set fname='"+fname+"',lname='"+lname+",college='"+college+"',phone='"+phone+"',event='"+event+"' where username='"+uname+"' ";
    /*PreparedStatement pstmt=conn.prepareStatement(qmod);
    String one=request.getParameter("fname");
    String two=request.getParameter("lname");
    String three=request.getParameter("college");
    String four=request.getParameter("phone");
    String five=request.getParameter("event");
    String six=request.getParameter("username");

    pstmt.setString(1,one);
    pstmt.setString(2,two);
    pstmt.setString(3,three);
    pstmt.setString(4,four);
    pstmt.setString(5,five);
    pstmt.setString(6,six);
    
    
    pstmt.executeUpdate(); */
    %>"></input></td>
    <td><input type="button" name="DELETE" value="DELETE"></td>
    </tr>
    
    <%
}
    rs.close();
    stmt.close();
    conn.close();
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
   
%>
 </table>

</form>
    </div>
    <!-- End of Main Block -->


<!-- Footer -->    
 <div class="footer">
 
 </div>
 <!-- End of Footer -->
    

</body>
</html>