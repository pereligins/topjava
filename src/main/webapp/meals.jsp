<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="ru.javawebinar.topjava.model.MealTo" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Meals</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<h2>Meals</h2>

<table border="1">

    <tr>

        <c:forEach items="${meals}" var="meal">
            <tr <c:if test="${meal.excess}">style="background-color: red"</c:if>>

                <td>
                    ${meal.description}


                </td>
                <td>${meal.date}</td>
                <td>${meal.time}</td>
            </tr>
        </c:forEach>

    </tr>



</table>

</body>
</html>