<%--
  Created by IntelliJ IDEA.
  User: lemanh
  Date: 09/05/2025
  Time: 09:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Tìm kiếm sản phẩm</title>
</head>
<body>
<h2>Tìm kiếm sản phẩm theo ID</h2>

<form action="b5" method="post">
    <input type="text" name="id" placeholder="Nhập ID sản phẩm">
    <button type="submit">Tìm kiếm</button>
</form>

<hr/>

<c:if test="${not empty product}">
    <h3>Kết quả:</h3>
    <table border="1" cellpadding="10">
        <tr>
            <td>ID</td>
            <td>${product.id}</td>
        </tr>
        <tr>
            <td>Tên sản phẩm</td>
            <td>${product.name}</td>
        </tr>
        <tr>
            <td>Giá</td>
            <td>${product.price}</td>
        </tr>
        <tr>
            <td>Mô tả</td>
            <td>
                <c:choose>
                    <c:when test="${empty product.description}">
                        <span style="color:red;">Sản phẩm chưa có thông tin</span>
                    </c:when>
                    <c:otherwise>
                        ${product.description}
                    </c:otherwise>
                </c:choose>
            </td>
        </tr>
    </table>
</c:if>

<c:if test="${empty product && param.id != null}">
    <p style="color: red;">Không tìm thấy sản phẩm với ID: ${param.id}</p>
</c:if>
</body>
</html>

