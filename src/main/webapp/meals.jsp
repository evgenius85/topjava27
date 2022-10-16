<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<html lang="ru">
<head>
    <style>
        table, th, td {
            border: 2px solid black;
            border-collapse: collapse;
        }
    </style>
    <title>Meals</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<hr>
<h2>Meals</h2>

<jsp:useBean id="ml" scope="request" type="java.util.ArrayList"/>
<table>
    <tr>
        <th>Date</th>
        <th>Description</th>
        <th>Calories</th>
        <th></th>
    </tr>
    <c:forEach items="${ml}" var="meal">
        <c:set var="color" value="green"/>
        <c:if test="${meal.excess}">
            <c:set var="color" value="red"/>
        </c:if>
        <tr style="color: ${color}">
            <td>${meal.dateTime.format(DateTimeFormatter.ofPattern("dd-MM-yyyy hh:mm"))}</td>
            <td>${meal.description}</td>
            <td>${meal.calories}</td>
            <td>${meal.excess}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>