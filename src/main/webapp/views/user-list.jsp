<%--
  Created by IntelliJ IDEA.
  User: quang
  Date: 01-Mar-25
  Time: 12:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Danh sách Người dùng</title>
</head>
<body>
<h2>Danh sách Người dùng</h2>
<a href="../views/user-form.jsp">Add User</a>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Username</th>
        <th>Email</th>
        <th>Hành động</th>
    </tr>
    <c:forEach var="user" items="${users}">
        <tr>
            <td>${user.id}</td>
            <td>${user.username}</td>
            <td>${user.email}</td>
            <td>
                <a href="user?action=edit&id=${user.id}">Sửa</a> |
                <a href="user?action=delete&id=${user.id}" onclick="return confirm('Bạn có chắc muốn xóa không?')">Xóa</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
