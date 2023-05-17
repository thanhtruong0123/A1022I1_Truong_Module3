<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 17/05/2023
  Time: 2:16 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new product</title>
    <style>
      .message{
        color:green;
      }
    </style>
</head>
<body>
  <h1>Create new product</h1>
  <p>
    <c:if test="${requestScope['message'] != null}">
      <span class="message">${requestScope['message']}</span>
    </c:if>
  </p>
  <p>
    <a href="/products">Back to product lists</a>
  </p>
  <form method="post">
    <fieldset>
      <legend>Product Detail</legend>
      <table>
        <tr>
          <td>Name: </td>
          <td><input type="text" name="name" id="name"></td>
        </tr>
        <tr>
          <td>Price: </td>
          <td><input type="text" name="price" id="price"></td>
        </tr>
        <tr>
          <td>Quantity: </td>
          <td><input type="text" name="quantity" id="quantity"></td>
        </tr>
        <tr>
          <td></td>
          <td>
            <input type="submit" value="Create product">
          </td>
        </tr>
      </table>
    </fieldset>
  </form>
</body>
</html>
