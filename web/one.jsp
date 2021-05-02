<%-- 
    Document   : one
    Created on : 22/03/2021, 4:31:41 PM
    Author     : paul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uts.isd.model.User"%>
<%  String submitted = request.getParameter("submitted");
    String email = request.getParameter("email");
    String name = request.getParameter("name");
    String pass = request.getParameter("password");
    String gender = request.getParameter("gender");
    String colour = request.getParameter("favcol");
    String tos = request.getParameter("tos");
    User user = new User(email, name, pass, gender, colour);
    session.setAttribute("user", user); %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>One Page</title>
    </head>
    <body style="background-color:<%if(submitted!=null&&tos!=null){out.print(colour);}%>">
        
        <%  if (submitted!=null) {
                if (tos != null) { %>
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
            <%  } 
            } else { %>
                <h1>Register Page</h1>
        <form action="one.jsp" method="POST">
            <table>
                <tr>
                    <td><label for="email">Email Address:</label></td>
                    <td><input name="email" type="text" placeholder="Enter your e-mail."></td>
                </tr>
                <tr>
                    <td><label for="name">Name:</label></td>
                    <td><input name="name" type="text" placeholder="Enter your name."></td>
                </tr>
                <tr>
                    <td><label for="password">Password:</label></td>
                    <td><input name="password" type="password" placeholder="Choose a secure password."></td>
                </tr>
                <tr>
                    <td><label for="gender">Gender:</label></td>
                    <td>
                        <input name="gender" type="radio" id="male" value="male">
                        <label for="male">Male</label>
                        <input name="gender" type="radio" id="female" value="female">
                        <label for="female">Female</label>
                        <input name="gender" type="radio" id="other" value="other">
                        <label for="other">Other</label>
                    </td>
                </tr>
                <tr>
                    <td><label for="favcol">Favourite Colour:</label></td>
                    <td>
                        <select name="favcol" id="favcol">
                            <option value="red">Red</option>
                            <option value="green">Green</option>
                            <option value="blue">Blue</option>
                            <option value="other">Other</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="tos">Terms of Service:</label></td>
                    <td>
                        <input type="checkbox" id="tos" name="tos" value="accept">
                        <label for="tos">I Accept</label>
                    </td>
                </tr>
                <tr>
                    <td><input type="hidden" id="submitted" name="submitted" value="yes"</td>
                    <td><input type="submit" value="Register"></td>
                </tr>
            </table>
        </form>
            <% } %>
        
    </body>
</html>
