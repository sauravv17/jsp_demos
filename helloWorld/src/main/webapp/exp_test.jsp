<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="myHeader.html"></jsp:include>
	Convert a string to uppercase <%= new String("Hello World").toUpperCase()  %>
	<br></br>
	25 multiplied by 4 is <%= 25*4 %>
</body>
</html>