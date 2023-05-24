<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 24/05/2023
  Time: 2:10 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Form</title>
</head>
<body>
    <center>
        <h1>User Management</h1>
        <h2><a href="/users?action=users">Back to list users</a></h2>
    </center>
    <div align="center">
        <form method="post">
            <table border="1" cellpadding="5">
                <caption>
                    <h2>Add new user</h2>
                </caption>
                <tr>
                    <td>Name: </td>
                    <td>
                        <input type="text" name="name" id="name" />
                    </td>
                </tr>
                <tr>
                    <td>Email: </td>
                    <td>
                        <input type="text" name="email" id="email" />
                    </td>
                </tr>
                <tr>
                    <td>Country: </td>
                    <td>
                        <input type="text" name="country" id="country" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="Create" />
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
