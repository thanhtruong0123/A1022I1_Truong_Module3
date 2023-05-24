<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 22/05/2023
  Time: 3:26 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Sort By Name</title>
</head>
<body>
  <center>
    <h1>Sort By Name</h1>
    <h2><a href="/users">Back to list user</a></h2>
  </center>
  <div align="center">
    <table border="1" cellpadding="5">
      <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Country</th>
      </tr>
      <c:forEach items="${sortList}" var="user">
        <tr>
          <td><c:out value="${user.id}"></c:out></td>
          <td><c:out value="${user.name}"></c:out></td>
          <td><c:out value="${user.email}"></c:out></td>
          <td><c:out value="${user.country}"></c:out></td>
        </tr>
      </c:forEach>
    </table>
  </div>
</body>
</html>
