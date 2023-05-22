<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 17/05/2023
  Time: 7:02 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
</head>
<body>
    <center>
        <h1>User Management</h1>
        <h2>
            <a href="/users?action=create">Add new user</a>
        </h2>
    </center>
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of Users</h2></caption>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Country</th>
                <th>Edit</th>
                <th>Delete</th>
                <th>Filter</th>
            </tr>
            <c:forEach items="${listUser}" var="user">
                <tr>
                    <td><c:out value="${user.id}"></c:out></td>
                    <td><c:out value="${user.name}"></c:out></td>
                    <td><c:out value="${user.email}"></c:out></td>
                    <td><c:out value="${user.country}"></c:out></td>
                    <td><a href="/users?action=edit&id=${user.id}">edit</a></td>
                    <td><a href="/users?action=delete&id=${user.id}">delete</a></td>
                    <td><a href="/users?action=filter&country=${user.country}">filter</a></td>
                </tr>
            </c:forEach>
            <tr align="center">
                <td colspan="7"><a href="/users?action=sort">Sort</a></td>
            </tr>
        </table>
    </div>
</body>
</html>
