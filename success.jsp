<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="home.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("userid")%>
 <button class="Register"  onclick="window.location.href='logout.jsp'">Logout</button>
<%
    }
%>