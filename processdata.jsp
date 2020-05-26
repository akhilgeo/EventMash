<%@ page import ="java.sql.*" %>
<%
String username = request.getParameter("uname");
String email = request.getParameter("uemail");
String pass = request.getParameter("upass");
String dob = request.getParameter("udob");
String gender = request.getParameter("ugender");
String phone = request.getParameter("uphone");
String college = request.getParameter("uloc");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root", "4jjxb");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into event.participant(username, email, password, dob, gender, phone,college) values ('" + username + "','" + email + "','" + pass + "','" + dob + "','" + gender + "','" + phone + "','" + college +"')");
    if (i > 0) {
        session.setAttribute("userid", username);
        response.sendRedirect("pregsuccessful.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("errorregistration.jsp");
    }
%>