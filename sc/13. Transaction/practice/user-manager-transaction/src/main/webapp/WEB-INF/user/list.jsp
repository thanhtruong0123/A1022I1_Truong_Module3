<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 24/05/2023
  Time: 2:34 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>List User</title>
</head>
<body>
  <center>
    <h1>List User</h1>
    <h2><a href="/users?action=create">Create new user</a></h2>
    <h3><a href="/users">List All Users</a></h3>
  </center>
  <div align="center">
    <table border="1" cellpadding="5">
      <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Country</th>
        <th>Edit</th>
        <th>Filter</th>
        <th>Delete</th>
      </tr>
      <c:forEach items="${userList}" var="user">
        <tr>
          <td>${user.id}</td>
          <td>${user.name}</td>
          <td>${user.email}</td>
          <td>${user.country}</td>
          <td><a href="/users?action=edit&id=${user.id}">edit</a></td>
          <td><a href="/users?action=filter&country=${user.country}">filter</a></td>
          <td><a href="/users?action=delete&id=${user.id}">delete</a></td>
        </tr>
      </c:forEach>
      <tr>
        <td colspan="7" align="center">
          <a href="/users?action=sort">Sort by name</a>
        </td>
      </tr>
    </table>
  </div>
</body>
</html>
