<%--
  Created by IntelliJ IDEA.
  User: lemanh
  Date: 09/05/2025
  Time: 10:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Lọc sản phẩm theo giá</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f4f6f8;
            padding: 40px;
        }

        h2 {
            color: #2c3e50;
        }

        form {
            margin-bottom: 30px;
            background-color: #fff;
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            display: inline-block;
        }

        input[type="text"] {
            padding: 10px;
            margin-right: 10px;
            border: 1px solid #ccc;
            border-radius: 8px;
            width: 150px;
        }

        button {
            padding: 10px 16px;
            background-color: #3498db;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #2980b9;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
            margin-top: 20px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            border-radius: 12px;
            overflow: hidden;
        }

        th, td {
            padding: 14px 20px;
            text-align: left;
            border-bottom: 1px solid #eaeaea;
        }

        th {
            background-color: #2980b9;
            color: white;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        .no-result {
            color: red;
            font-style: italic;
            margin-top: 20px;
        }
    </style>
</head>
<body>

<h2>Lọc sản phẩm theo khoảng giá</h2>

<form action="b7" method="get">
    <input type="text" name="minPrice" placeholder="Giá nhỏ nhất">
    <input type="text" name="maxPrice" placeholder="Giá lớn nhất">
    <button type="submit">Tìm kiếm</button>
</form>

<c:choose>
    <c:when test="${not empty filterProduct}">
        <table>
            <tr>
                <th>ID</th>
                <th>Tên sản phẩm</th>
                <th>Giá</th>
                <th>Mô tả</th>
            </tr>
            <c:forEach var="product" items="${filterProduct}">
                <tr>
                    <td>${product.id}</td>
                    <td>${product.name}</td>
                    <td>${product.price}</td>
                    <td>${product.description}</td>
                </tr>
            </c:forEach>
        </table>
    </c:when>
    <c:otherwise>
        <p class="no-result">Không tìm thấy sản phẩm nào trong khoảng giá yêu cầu.</p>
    </c:otherwise>
</c:choose>

</body>
</html>

