<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <%@ page import ="java.sql.*" %>
<%

    
    String events="";
    String event[]=request.getParameterValues("event");
    for(int i=0;i<event.length;i++){
        events+=event[i]+" ";
    }
    try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event",
            "root", "4jjxb");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into event.eventreg(username, fname, lname, phone,college,event) values ('" + session.getAttribute("userid") + "','" + session.getAttribute("fname") + "','" + session.getAttribute("lname") + "','" + session.getAttribute("college") + "','"+ session.getAttribute("phone") + "','" + events + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcomeregistration.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
    }
    catch(Exception e){
    	response.sendRedirect("errorregistration.jsp");
        }
%>
</body>
</html>