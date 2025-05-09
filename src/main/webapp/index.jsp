<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<jsp:include page="b3.jsp"></jsp:include>
<br>
<h1><%= "Hello World!" %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
<br>
<a href="b1">Bai 1</a>
<br>
<a href="b2.jsp">Bai 2</a>
<br>
<a href="b4">Bai 4</a>
<br>
<a href="b5">Bai 5</a>
<br>
<a href="b6">Bai 6</a>
<br>
<a href="b7">Bai 7</a>
<br>
<a href="b8">Bai 8</a>
</body>
</html>