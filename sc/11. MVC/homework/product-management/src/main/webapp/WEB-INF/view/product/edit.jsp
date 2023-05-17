<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 17/05/2023
  Time: 2:37 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit product</title>
    <style>
      .message{
        color:green;
      }
    </style>
</head>
<body>
  <h1>Edit Product</h1>
  <p>
    <c:if test="${requestScope['message'] != null}">
      <span class="message">${requestScope['message']}</span>
    </c:if>
  </p>
  <p>
    <a href="/products">Back to products list</a>
  </p>
  <form method="post">
    <fieldset>
      <legend>Product edit</legend>
      <table>
        <tr>
          <td>Name: </td>
          <td>
            <input type="text" name="name" id="name" value="${requestScope['product'].getName()}">
          </td>
        </tr>
        <tr>
          <td>Price: </td>
          <td>
            <input type="text" name="price" id="price" value="${requestScope['product'].getPrice()}">
          </td>
        </tr>
        <tr>
          <td>Quantity: </td>
          <td>
            <input type="text" name="quantity" id="quantity" value="${requestScope['product'].getQuantity()}">
          </td>
        </tr>
        <tr>
          <td></td>
          <td>
            <input type="submit" value="Update product">
          </td>
        </tr>
      </table>
    </fieldset>
  </form>
</body>
</html>
