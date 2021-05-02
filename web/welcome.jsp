<%-- 
    Document   : welcome
    Created on : 15 Mar. 2021, 4:53:15 pm
    Author     : Paul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uts.isd.model.User"%>
<!DOCTYPE html>
        <%  
            String email = request.getParameter("email");
            String name = request.getParameter("name");
            String pass = request.getParameter("password");
            String gender = request.getParameter("gender");
            String colour = request.getParameter("favcol");
            String tos = request.getParameter("tos");
            User user = new User(email, name, pass, gender, colour);
            session.setAttribute("user", user);
        %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Page</title>
    </head>
    <body style="background-color:<%=colour%>">
        <%  if (tos != null) { %>
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
        <%  } else { %>
                <h1>Sorry, you must agree to the Terms of Service.</h1>
                <p><a href="register.jsp">Click here</a> to go back.</p>
        <%  } %>
        <!--
        <table>
            <tr>
                <td>Email: </td>
                <td><%=email%></td>
            </tr>
            <tr>
                <td>Name: </td>
                <td><%=name%></td>
            </tr>
            <tr>
                <td>Password: </td>
                <td><%=pass%></td>
            </tr>
            <tr>
                <td>Gender: </td>
                <td><%=gender%></td>
            </tr>
            <tr>
                <td>Favourite Colour: </td>
                <td><%=colour%></td>
            </tr>
            <tr>
                <td>Terms of Service: </td>
                <td><%=tos%></td>
            </tr>
        </table>
        -->
    </body>
</html>
