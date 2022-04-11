<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="myHeader.html" />
	<h1>JSP built in objects</h1>
	Check users Browser <%= request.getHeader("User-Agent") %>
	
</body>
</html>