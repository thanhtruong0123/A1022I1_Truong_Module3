<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 17/05/2023
  Time: 6:41 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Product</title>
</head>
<body>
  <h1>View product</h1>
  <p>
    <a href="/products">Back to products list</a>
  </p>
  <fieldset>
    <legend>Product infomation</legend>
    <table>
      <tr>
        <td>Name: </td>
        <td>${requestScope["product"].getName()}</td>
      </tr>
      <tr>
        <td>Price: </td>
        <td>${requestScope["product"].getPrice()}</td>
      </tr>
      <tr>
        <td>Quantity: </td>
        <td>${requestScope["product"].getQuantity()}</td>
      </tr>
    </table>
  </fieldset>

</body>
</html>
