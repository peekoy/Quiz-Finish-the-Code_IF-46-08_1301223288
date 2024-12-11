<%-- 
    Document   : UserList
    Created on : Dec 3, 2024, 7:09:32 AM
    Author     : helmy
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.mycompany.latihanwebmvc.Model.User" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>User List</title>
</head>
<body>
    <h2>User List</h2>

    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Username</th>
                <th>Full Name</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            	<%
				for (User user : (List<User>) request.getAttribute("users")) {
			%>
                <tr>
                    <td><%= user.getId() %></td>
                    <td><%= user.getUsername() %></td>
                    <td><%= user.getFullName() %></td>

                    <td>
                        <a href="editUser?id=<%=user.getId()%>">Edit</a> |
                        <a href="deleteUser?id=<%=user.getId()%>">Delete</a>
                    </td>
                </tr>
			<%
				}
			%>
        </tbody>
    </table>

    <a href="addUser.jsp">Tambah User Baru</a>
</body>
</html>
