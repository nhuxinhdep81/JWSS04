<%@ page import="java.util.List" %>
<%@ page import="model.Product" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lemanh
  Date: 08/05/2025
  Time: 17:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh sach san pham</title>

</head>
<body>
<h2>Danh sách sản phẩm</h2>

<table border="1" cellpadding="10" cellspacing="0">
    <th>ID</th>
    <th>Product Name</th>
    <th>Price</th>
    <th>Desription</th>

    <c:forEach var="product" items="${products}">
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.price}</td>
            <td>${product.description}</td>
        </tr>
    </c:forEach>

</table>
</body>
</html>
