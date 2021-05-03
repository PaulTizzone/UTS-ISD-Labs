<%-- 
    Document   : login
    Created on : 03/05/2021, 4:21:26 PM
    Author     : pault
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <%
            String emailErr = (String)session.getAttribute("emailErr");
            String passErr = (String)session.getAttribute("passErr");
        %>
        <h1>Log In</h1>
        <form action="LoginController" method="post">
            <label for="email">Email:</label>
            <input type="text" id="email" name="email" placeholder="${emailErr}">
            <br />
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" placeholder="${passErr}">
            <br />
            <input type="submit" value="Log In">
            <input type="reset" value="Reset">
        </form>
    </body>
</html>
