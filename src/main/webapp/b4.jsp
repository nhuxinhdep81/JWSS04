<%--
  Created by IntelliJ IDEA.
  User: lemanh
  Date: 09/05/2025
  Time: 09:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Danh sách sản phẩm</title>
</head>
<body>
<h2>Danh sách sản phẩm</h2>

<c:choose>
    <c:when test="${not empty productsb4}">
        <table border="1" cellpadding="10" cellspacing="0">
            <tr>
                <th>ID</th>
                <th>Product Name</th>
                <th>Price</th>
                <th>Description</th>
            </tr>
            <c:forEach var="product" items="${productsb4}">
                <tr>
                    <td>
                        <c:choose>
                            <c:when test="${empty product.id}">
                                Không có ID
                            </c:when>
                            <c:otherwise>
                                ${product.id}
                            </c:otherwise>
                        </c:choose>
                    </td>
                    <td>
                        <c:choose>
                            <c:when test="${empty product.name}">
                                Không có tên
                            </c:when>
                            <c:otherwise>
                                ${product.name}
                            </c:otherwise>
                        </c:choose>
                    </td>
                    <td>
                        <c:choose>
                            <c:when test="${empty product.price}">
                                Không có giá
                            </c:when>
                            <c:otherwise>
                                ${product.price}
                            </c:otherwise>
                        </c:choose>
                    </td>
                    <td>
                        <c:choose>
                            <c:when test="${empty product.description}">
                                Sản phẩm chưa có thông tin
                            </c:when>
                            <c:otherwise>
                                ${product.description}
                            </c:otherwise>
                        </c:choose>
                    </td>
                </tr>
            </c:forEach>

        </table>
    </c:when>

    <c:otherwise>
        <p style="color: red;">Sản phẩm không có thông tin.</p>
    </c:otherwise>
</c:choose>

</body>
</html>

