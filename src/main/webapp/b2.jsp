<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lemanh
  Date: 08/05/2025
  Time: 17:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dang nhap</title>
</head>
<body>
<h2>Dang nhap</h2>
<form action="b2.jsp" method="post">
    <label for="username">Username: </label>
    <input type="text" name="name" id="username">

    <label for="pass">Password: </label>
    <input type="text" name="password" id="pass">

    <button type="submit">Dang nhap</button>
</form>

<%
    String username = request.getParameter("name");
    String password = request.getParameter("password");

    request.setAttribute("name",username);
    request.setAttribute("pass", password);
    
%>
<c:if test="${not empty name and not empty pass}">
    <c:choose>
        <c:when test="${name eq 'admin' and pass eq '123456'}">
            <p style="color: green;">Đăng nhập thành công! Chào mừng, <b>${name}</b>.</p>
        </c:when>
        <c:otherwise>
            <p style="color: red;">Thông tin đăng nhập không đúng. Vui lòng thử lại.</p>
        </c:otherwise>
    </c:choose>
</c:if>

</body>
</html>
