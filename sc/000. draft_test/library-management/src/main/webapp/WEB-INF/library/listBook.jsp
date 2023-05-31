<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 24/05/2023
  Time: 7:56 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>List Book</title>
    <style>
        table{
            border-collapse: collapse;
            border: 1px solid silver;
        }
        th, td {
            border-right: 1px solid silver;
            border-left: 1px solid silver;
            padding: 8px;
            text-align: center;
        }
        th {
            background: #f2f2f2;
        }
    </style>
</head>
<body>
    <center>
        <h1>Danh sách sách</h1>
        <h3><a href="/library?action=listBorrow">Danh sách mượn</a></h3>
    </center>
    <table align="center">
        <tr>
            <th>Mã sách</th>
            <th>Tên sách</th>
            <th>Tác giả</th>
            <th>Số lượng</th>
            <th>Mô tả</th>
            <th></th>
        </tr>
        <c:forEach items="${bookList}" var="book">
            <tr>
                <td>${book.id}</td>
                <td>${book.name}</td>
                <td>${book.author}</td>
                <td>${book.quantity}</td>
                <td>${book.description}</td>
                <td><button onclick="window.location.href = 'library?action=borrow&book_id=${book.id}'">Mượn</button></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
