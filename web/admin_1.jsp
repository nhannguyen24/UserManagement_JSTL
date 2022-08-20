<%-- 
    Document   : admin
    Created on : Feb 16, 2022, 5:06:14 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
    </head>
    <body>
        <c:if test="${sessionScope.LOGIN_USER == null or sessionScope.LOGIN_USER.roleID ne 'AD'}">
            <c:redirect url="login.jsp"></c:redirect>
        </c:if>
        Welcome: <h1>${sessionScope.LOGIN_USER.fullName}</h1>
        <a href="MainController?action=Logout">Logout</a>
        <form action="MainController">
            <input type="submit" name="action" value="Logout"/>
        </form>
        <c:url var="logout" value="MainController">
            <c:param name="action" value="Logout"></c:param>
        </c:url>
        <a href="${logout}">Logout JSTL</a>
        <form action="MainController">
            Search<input type="text" name="search" value="${param.search}"/>
            <input type="submit" name="action" value="Search"/>
        </form>

        <c:if test="${requestScope.LIST_USER != null}">
            <c:if test="${not empty requestScope.LIST_USER}">
                <table border="1">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>User ID</th>
                            <th>Full Name</th>
                            <th>Role ID</th>
                            <th>Password</th>
                            <th>Delete</th>
                            <th>Update</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="user" items="${requestScope.LIST_USER}" varStatus="counter">
                        <form action="MainController">
                            <tr>
                                <td>${counter.count}</td>
                                <td>${user.userID}</td>
                                <td>
                                    <input type="text" name="fullName" value="${user.fullName}" required="/>"
                                </td>
                                <td>
                                    <input type="text" name="roleID" value="${user.roleID}" required=""/>
                                </td>
                                <td>${user.password}</td>
                                <td>
                                    <c:url var="delete" value="MainController">
                                        <c:param name="action" value="Delete"></c:param>
                                        <c:param name="search" value="${param.search}"></c:param>
                                        <c:param name="userID" value="${user.userID}"></c:param>
                                    </c:url>
                                    <a href="${delete}">Delete</a>
                                </td>
                                <td>
                                    <input type="submit" name="action" value="Update"/>
                                    <input type="hidden" name="search" value="${param.search}"/>
                                    <input type="hidden" name="userID" value="${user.userID}"/>
                                </td>
                            </tr>
                        </form>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>
    </c:if>
</body>
</html>
