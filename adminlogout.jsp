<%
session.setAttribute("userid", null);

session.invalidate();
response.sendRedirect("adminlogin.jsp");
%>