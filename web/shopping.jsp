<%-- 
    Document   : shopping
    Created on : Mar 2, 2022, 4:21:36 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sweet Tea Farm</title>
    </head>
    <body>
        <h1>Welcome to our farm:</h1>
        <form action="MainController">
            <select name ="cmbTea">
            <option value="T001-Milk Tea with pearl-10">Milk Tea with pearl-10$</option>
            <option value="T002-Orio Milk Tea-30 ">Orio Milk Tea-30$</option>
            <option value="T003-Macha Japan-60 ">Macha Japan-60$</option>
            <option value="T004-Taro Milk Tea-50 ">Taro Milk Tea-50$</option>
        </select>
        <select name ="cmbQuantity">
            <option value="1">1 cup</option>
            <option value="2">2 cups</option>
            <option value="3">3 cups</option>
            <option value="4">4 cups</option>
            <option value="5">5 cups</option>
            <option value="10">10 cups</option>
        </select>
        <input type="submit" name="action" value="Add"/>
        <input type="submit" name="action" value="View"/>
        </form>
        ${requestScope.MESSAGE}
    </body>
</html>
