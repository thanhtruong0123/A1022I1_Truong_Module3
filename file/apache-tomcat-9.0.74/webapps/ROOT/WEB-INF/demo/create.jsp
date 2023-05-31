<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.LocalDateTime" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 31/05/2023
  Time: 6:49 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    LocalDateTime currentDateTime = LocalDateTime.now();
    String formattedDateTime = currentDateTime.toString();
%>
<html>
<head>
    <title>Create Form</title>
</head>
<body>
    <center>
        <h1>Create Form</h1>
        <h2><a href="/users">Back to list</a></h2>
    </center>
    <form method="post">
        <table align="center">
            <tr>
                <td>ID: </td>
                <td>
                    <input type="text" name="id" id="id">
                </td>
            </tr>
            <tr>
                <td>Name: </td>
                <td>
                    <input type="text" name="name" id="name">
                </td>
            </tr>
            <tr>
                <td>Birthday: </td>
                <td>
                    <input type="date" name="birthday" id="birthday">
                </td>
            </tr>
            <tr>
                <td>Create Time:</td>
                <td>
                    <input type="datetime-local" name="createTime" id="createTime" value="<%=formattedDateTime%>" readonly>
                </td>
            </tr>
            <tr>
                <td>Role: </td>
                <td>
                    <input type="checkbox" name="role" value="1"> Admin <br>
                    <input type="checkbox" name="role" value="2"> User
                   <%-- <select name="role" id="role">
                        <option value="1">Admin</option>
                        <option value="2">User</option>
                    </select>--%>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="Create">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
