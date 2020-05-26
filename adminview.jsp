<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
<form method="post">

<table border="7">
<tr>
<td>Name</td>
<td>Email</td>
<td>DOB</td>
<td>Gender</td>
<td>Phone</td>
<td></td>
<td colspan="2" align="center">ACTION</td>
</tr>


<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/event";
String username="root";
String password="4jjxb";
String query="select * from register";

Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();


ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>
    <tr>
    
    <td><input type="text" value="<%=rs.getString("name") %>"></td>
    <td><input type="text" value="<%=rs.getString("email") %>"></td>
    <td><input type="text" value="<%=rs.getString("dob") %>"></td>
    <td><input type="text" value="<%=rs.getString("gender") %>"></td>
    <td><input type="text" value="<%=rs.getString("phone") %>"></td>
    <td><input type="button" name="UPDATE" value="UPDATE" onclick="
    <% 
    String qmod="update event.register set name=?,email=? where name=? ";
    PreparedStatement pstmt=conn.prepareStatement(qmod);
    String one=request.getParameter("name");
    String two=request.getParameter("email");
    String three=request.getParameter("name");
    pstmt.setString(1,one);
    pstmt.setString(2,two);
    pstmt.setString(3,three);
    pstmt.executeUpdate(); 
    %>"></td>
    <td> <input type="button" name="DELETE" value="DELETE"></td>
    </tr>
        <%

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
</html>