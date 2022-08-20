<%-- 
    Document   : viewCart
    Created on : Mar 2, 2022, 4:46:01 PM
    Author     : ACER
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="sample.shopping.Tea"%>
<%@page import="sample.shopping.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Cart Page</title>
    </head>
    <body>
        <h1>Your shopping cart:</h1>
    <c:if test="${sessionScope.CART != null}">
        <c:if test="${not empty sessionScope.CART}">
            <table border="1">
                <thead>
                    <tr>
                        <th>NO</th>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Total</th>
                        <th>Edit</th>
                        <th>Remove</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach var="tea" items="${sessionScope.CART.getCart().values()}" varStatus="counter">
                    <form action="MainController" method="POST">
                        <tr>
                            <td>${counter.count}</td>
                            <td>
                                <%--<%=tea.getId()%>--%>
                                <input type="hidden" name="id" value="${tea.id}"/>
                            </td>
                            <td>${tea.name}</td>
                            <td>${tea.price}$</td>
                            <td>
                                <input type="number" name="quantity" value="${tea.quantity}" min="1" required=""/>
                            </td>
                            <td>${tea.price * tea.quantity}$</td>
                            <!--update quantity-->
                            <td>
                                <input type="submit" name="action" value="Edit"/>
                            </td>
                            <!--remove-->
                            <td>
                                <input type="submit" name="action" value="Remove"/>
                            </td>
                        </tr>
                    </form>
                </c:forEach>
                </tbody>
            </table>

            <form action ="MainController"/>
            <input type="submit" name="action" value="CheckOut"/>
            </form>
            <a href="shopping.jsp">Add more</a>
        </c:if>
    </c:if>   

</body>
</html>
