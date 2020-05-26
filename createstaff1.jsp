<%@ page import ="java.sql.*" %>
<%
String username = request.getParameter("uname");
String pass = request.getParameter("upass");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root", "4jjxb");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into event.stafflogin(username, password) values ('" + username + "','"  + pass + "')");
    if (i > 0) {
        session.setAttribute("userid", username);
       
       out.print("Registration Successfull!"+"<a href='adminhome.jsp'>Go back</a>");
    } else {
        response.sendRedirect("errorregistration.jsp");
    }
%>