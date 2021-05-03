<%-- 
    Document   : main
    Created on : 03/05/2021, 5:15:08 PM
    Author     : pault
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
            String email = user.getEmail();
            String name = user.getName();
            String pass = user.getPassword();
            String gender = user.getGender();
            String colour = user.getFavouriteColour();
        %>
        <h1>Welcome, <%=name%>!</h1>
        <p>Your Email is <%=email%>.
            <br>
            Your password is <%=pass%>.
            <br>
            Your gender is <%=gender%>.
            <br>
            Your favourite colour is <%=colour%>
            <br>
            Click <a href="index.jsp">here</a> to return to the main page.
        </p>
    </body>
</html>
