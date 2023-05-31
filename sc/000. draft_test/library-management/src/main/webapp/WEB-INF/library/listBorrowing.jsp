<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 26/05/2023
  Time: 12:14 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Borrow List</title>
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
    <h1>Thống kê sách đang mượn</h1>
    <h2><a href="/library">Danh sách sách</a></h2>
    <form method="post">
        Tên sách:
        <input type="text" name="book_name" id="book_name" />
        &nbsp;&nbsp;&nbsp;
        Tên học sinh:
        <input type="text" name="student_name" id="student_name" />
        &nbsp;&nbsp;&nbsp;
        <input type="submit" value="Tìm kiếm">
    </form>
  </center>
  <table align="center">
      <tr>
          <th>Mã thẻ mượn</th>
          <th>Tên sách</th>
          <th>Tác giả</th>
          <th>Tên học sinh</th>
          <th>Lớp</th>
          <th>Ngày mượn</th>
          <th>Ngày trả</th>
          <th></th>
      </tr>
      <c:forEach items="${borrowingList}" var="borrowing">
          <tr>
              <td>${borrowing.id}</td>
              <td>${borrowing.book.getName()}</td>
              <td>${borrowing.book.getAuthor()}</td>
              <td>${borrowing.student.getName()}</td>
              <td>${borrowing.student.getClassroom()}</td>
              <td>${borrowing.firstDate}</td>
              <td>${borrowing.lastDate}</td>
              <td><button onclick="window.location.href = 'library?action=return&id=${borrowing.id}&bookId=${borrowing.book.getId()}'">Return</button></td>
          </tr>
      </c:forEach>
  </table>
</body>
</html>
