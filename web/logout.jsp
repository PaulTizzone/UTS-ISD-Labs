<%-- 
    Document   : logout
    Created on : 02/05/2021, 12:38:21 PM
    Author     : pault
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% session.invalidate(); %>
        <h1>Logged Out!</h1>
        <p>You have been logged out. Click <a href="index.jsp">here</a> to return to the main page.</p>
    </body>
</html>
