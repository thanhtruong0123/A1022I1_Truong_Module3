<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 17/05/2023
  Time: 1:09 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List products</title>
</head>
<body>
  <h1>Products</h1>
  <p><a href="/products?action=create">Create a new product</a></p>
  <table border="1">
    <tr>
      <th>Name</th>
      <th>Price</th>
      <th>Quantity</th>
      <th>Edit</th>
      <th>Delete</th>
    </tr>
    <c:forEach items="${requestScope['products']}" var="product">
      <tr>
        <td><a href="/products?action=view&id=${product.getId()}">${product.getName()}</a></td>
        <td>${product.getPrice}</td>
        <td>${product.getQuantity}</td>
        <td><a href="/products?action=edit&id=${product.getId()}">edit</a></td>
        <td><a href="/products?action=delete&id=${product.getId()}">delete</a></td>
      </tr>
    </c:forEach>
  </table>

</body>
</html>
