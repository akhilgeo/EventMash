<%
session.setAttribute("userid", null);
session.setAttribute("fnn", null);
session.setAttribute("phn", null);
session.setAttribute("evt", null);
session.setAttribute("clg", null);

session.invalidate();
response.sendRedirect("participantlogin.jsp");
%>