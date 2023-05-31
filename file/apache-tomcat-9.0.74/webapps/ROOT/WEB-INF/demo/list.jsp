<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 31/05/2023
  Time: 6:48 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List User</title>
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
    <h1>List User</h1>
    <h2><a href="users?action=create">Create new User</a></h2>
  </center>
  <table align="center">
    <tr>
      <th>ID</th>
      <th>Name</th>
      <th>Birthday</th>
      <th>Create Time</th>
      <th>Role</th>
      <th colspan="2">Action</th>
    </tr>
    <c:forEach items="${accountList}" var="account">
      <td>${account.user.getId()}</td>
      <td>${account.user.getName()}</td>
      <td>${account.user.getBirthday()}</td>
      <td>${account.user.getCreateTime()}</td>
      <th>${account.role.getName()}</th>
      <td><a href="/users?action=edit&id=${account.user.getId()}">edit</a></td>
      <td><a href="/users?action=delete&id=${account.user.getId()}">delete</a></td>
    </c:forEach>
  </table>
</body>
</html>
