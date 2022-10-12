<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="ru">
<head>
    <title>Meals</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<hr>
<h2>Meals</h2>

<jsp:useBean id="limit" scope="request" type="java.lang.Integer"/>
<c:set var="limit" value="${limit}"/>

<jsp:useBean id="ml" scope="request" type="java.util.ArrayList"/>
<table border="1">
    <tr>
        <td>Date</td>
        <td>Description</td>
        <td>Calories</td>
        <td></td>
    </tr>
    <c:forEach items="${ml}" var="meal">
        <c:set var="color" value="green"/>
        <c:if test="${meal.excess}">
            <c:set var="color" value="red"/>
        </c:if>
        <tr>
            <td><span style="color: ${color}"><c:out value="${meal.dateTime}"/></span></td>
            <td><span style="color: ${color}"><c:out value="${meal.description}"/></span></td>
            <td><span style="color: ${color}"><c:out value="${meal.calories}"/></span></td>
            <td><span style="color: ${color}"><c:out value="${meal.excess}"/></span></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>