<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 24/05/2023
  Time: 9:18 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.time.LocalDate" %>

<%
  LocalDate currentDate = LocalDate.now();
  String formattedDate = currentDate.toString();
%>
<html>
<head>
    <title>Borrowing Form</title>
</head>
<body>
  <center>
    <h1>Mượn Sách</h1>
  </center>
  <form method="post">
    <table align="center">
      <tr>
        <td>Mã mượn sách: </td>
        <td>
          <input type="text" name="id" id="id" />
        </td>
      </tr>
      <tr>
        <td>Tên sách: </td>
        <td>
          <input type="text" name="book_name" id="book_name" value="${book.name}" readonly />
        </td>
      </tr>
      <tr>
        <td>Tên học sinh: </td>
        <td>
          <select name="student_name">
            <c:forEach items="${studentList}" var="student">
              <option value="${student.name}">${student.name}</option>
            </c:forEach>
          </select>
        </td>
      </tr>
      <tr>
        <td>Ngày mượn sách: </td>
        <td>
          <input type="date" name="first_date" id="first_date" value="<%= formattedDate %>" readonly/>
        </td>
      </tr>
      <tr>
        <td>Ngày trả sách: </td>
        <td>
          <input type="date" name="last_date" id="last_date" />
        </td>
      </tr>
    </table>
    <div align="center">
      <input type="submit" value="Mượn sách">
      <a href="/library"><input type="button" value="Quay lại"></a>
    </div>
  </form>
</body>
</html>
