<%--
  Created by IntelliJ IDEA.
  User: quang
  Date: 01-Mar-25
  Time: 12:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Quản lý Người dùng</title>
</head>
<body>
<h2>${user == null ? "Thêm Người Dùng" : "Chỉnh Sửa Người Dùng"}</h2>
<form action="<%= request.getContextPath() %>/user" method="post">

    <c:if test="${user != null}">
        <input type="hidden" name="id" value="${user.id}">
        <input type="hidden" name="action" value="update">
    </c:if>
    <c:if test="${user == null}">
        <input type="hidden" name="action" value="add">
    </c:if>
    <label>Username:</label>
    <input type="text" name="username" value="${user.username}" required><br>
    <label>Email:</label>
    <input type="email" name="email" value="${user.email}" required><br>
    <label>Password:</label>
    <input type="password" name="password" required><br>
    <input type="submit" value="${user == null ? "Thêm" : "Cập nhật"}">
</form>
</body>
</html>
