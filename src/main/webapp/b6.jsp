<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lemanh
  Date: 09/05/2025
  Time: 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh sách học sinh</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        table {
            width: 80%;
            margin: 20px 0;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px;
            text-align: left;
            border: 1px solid #ddd;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        p {
            text-align: center;
            font-size: 18px;
            color: #4CAF50;
            font-weight: bold;
        }

        .container {
            width: 90%;
            margin: 0 auto;
            max-width: 1000px;
        }

        .footer {
            text-align: center;
            font-size: 14px;
            color: #888;
            margin-top: 20px;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Danh sách học sinh</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Họ và tên</th>
            <th>Tuổi</th>
            <th>Điểm trung bình</th>
        </tr>

        <c:set var="countGPA" value="0" />

        <c:forEach var="student" items="${students}">
            <tr>
                <td>${student.id}</td>
                <td>${student.name}</td>
                <td>${student.age}</td>
                <td>${student.gpa}</td>
            </tr>

            <c:if test="${student.gpa > 7.0}">
                <c:set var="countGPA" value="${countGPA + 1}" />
            </c:if>
        </c:forEach>
    </table>

    <p>Số lượng sinh viên có GPA lớn hơn 7.0 là: ${countGPA}</p>
</div>

</body>
</html>
