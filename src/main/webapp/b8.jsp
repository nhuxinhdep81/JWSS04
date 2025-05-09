<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Danh sách doanh thu</title>
  <style>
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background: linear-gradient(to right, #e0eafc, #cfdef3);
      padding: 40px;
    }

    h2 {
      text-align: center;
      color: #333;
      margin-bottom: 30px;
    }

    table {
      margin: 0 auto;
      width: 60%;
      border-collapse: collapse;
      background-color: #fff;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
      border-radius: 10px;
      overflow: hidden;
    }

    th, td {
      padding: 14px 20px;
      text-align: center;
      border-bottom: 1px solid #ddd;
    }

    th {
      background-color: #4CAF50;
      color: white;
      font-weight: bold;
    }

    tr:nth-child(even) {
      background-color: #f2f2f2;
    }

    tr:hover {
      background-color: #e9f5f0;
    }

    .summary {
      text-align: center;
      margin-top: 30px;
      font-size: 18px;
      color: #222;
    }

    .highlight {
      color: #2e7d32;
      font-weight: bold;
    }

    .warning {
      color: #d32f2f;
      font-weight: bold;
    }
  </style>
</head>
<body>

<h2>Bảng doanh thu theo tháng</h2>

<table>
  <tr>
    <th>Tháng</th>
    <th>Doanh thu (VNĐ)</th>
  </tr>
  <c:set var="totalRevenue" value="0" />
  <c:forEach var="revenue" items="${revenueList}">
    <tr>
      <td>${revenue.month}</td>
      <td>${revenue.amount}</td>
    </tr>
    <c:set var="totalRevenue" value="${totalRevenue + revenue.amount}" />
  </c:forEach>
</table>

<div class="summary">
  <p>Tổng doanh thu: <span class="highlight">${totalRevenue}</span> VNĐ</p>
  <c:choose>
    <c:when test="${totalRevenue > 10000}">
      <p class="highlight">✅ Doanh thu vượt chỉ tiêu!</p>
    </c:when>
    <c:otherwise>
      <p class="warning">⚠️ Doanh thu chưa đạt yêu cầu.</p>
    </c:otherwise>
  </c:choose>
</div>

</body>
</html>
