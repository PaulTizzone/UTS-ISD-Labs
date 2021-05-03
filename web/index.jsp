<%-- 
    Document   : index
    Created on : 22/03/2021, 4:14:47 PM
    Author     : paul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uts.isd.model.User"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            User user = (User)session.getAttribute("user");
        %>
        <% if (user == null) { %>
            <h1>Diary Keeper</h1>
            <p style="text-align:right;">You are not logged in</p>
            <p style="text-align:right;"><a href="register.jsp">Register</a></p>
            <p style="text-align:right;"><a href="login.jsp">Log In</a></p>
        <% } else { %>
            <h1>Hello <%=user.getName()%>!</h1>
            <p style="text-align:right;">You are logged in as ${user.name} &lt;<jsp:getProperty name="user" property="email" />&gt;</p>
            <p style="text-align:right;"><a href="logout.jsp">Logout</a></p>
            <ul>
                <li><a href="edit_user.jsp">My Account</a></li>
            </ul>
        <% } %>
        <jsp:include page="/ConnServlet" flush="true" />
    </body>
</html>
