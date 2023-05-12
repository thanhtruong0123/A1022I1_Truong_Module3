<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: Linh
  Date: 5/8/2023
  Time: 9:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Display all product</title>
</head>
<body>
    <h1>All product</h1>
    <a href="/product?action=create">Create new product</a>
    <fmt:setLocale value="vi_VN"/>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Origin</th>
        </tr>
        <c:forEach items="${products}" var="p">
            <tr>
                <td>${p.id}</td>
                <td>${p.name}</td>
                <td><fmt:formatNumber value="${p.price}" type="currency"/></td>
                <td>${p.quantity}</td>
                <td>${p.origin}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
