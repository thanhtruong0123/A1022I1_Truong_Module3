<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 17/05/2023
  Time: 6:22 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete product</title>
</head>
<body>
    <h1>Delete product</h1>
    <p>
        <a href="/products">Back to products list</a>
    </p>
    <form method="post">
        <h3>Are you sure?</h3>
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
                <tr>
                    <td><input type="submit" value="Delete Product"></td>
                    <td><a href="/products">Back to the products list</a></td>
                </tr>
            </table>
        </fieldset>
    </form>

</body>
</html>
