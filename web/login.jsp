<%-- 
    Document   : login
    Created on : Feb 11, 2022, 4:10:51 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <h1>Input your information: </h1>
        <form action="MainController" method="POST">
            User ID<input type="text" name="userID" required=""/></br>
            Password<input type="password" name="password" required=""/></br>
            <input type="submit" name="action" value="Login"/>
            <input type="reset" value="Reset"/>
        </form>
        ${requestScope.ERROR}
        <a href="create.jsp">Create user</a></br>
        <a href="shopping.jsp">Happy Shopping</a>
    </body>
</html>
