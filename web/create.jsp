<%-- 
    Document   : create
    Created on : Feb 23, 2022, 5:19:08 PM
    Author     : ACER
--%>

<%@page import="sample.user.UserError"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create user Page</title>
    </head>
    <body>
        <form action="MainController" method="POST">
            User ID<input type="text" name="userID" required=""/></br>
            ${requestScope.USER_ERROR.UserIDError}</br>
            Full Name<input type="text" name="fullName" required=""/></br>
            ${requestScope.USER_ERROR.fullNameError}</br>
            Role ID<input type="text" name="roleID" readonly="" value="US"/></br>
            Password<input type="password" name="password" required=""/></br>
            Confirm<input type="password" name="confirm" required=""/></br>
            ${requestScope.USER_ERROR.confirmError}</br>
            <input type="submit" name="action" value="Create"/></br>
            <input type="reset" value="Reset"/></br>
        </form>
    </body>
</html>
