<%-- 
    Document   : register
    Created on : 15 Mar. 2021, 4:31:51 pm
    Author     : Paul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
    </head>
    <body>
        <h1>Register Page</h1>
        <form action="welcome.jsp" method="POST">
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
                    <td></td>
                    <td><input type="submit" value="Register"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
