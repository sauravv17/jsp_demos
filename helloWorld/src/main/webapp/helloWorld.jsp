<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>Hello World 11!!</h3>
	The time is <%= new java.util.Date() %>
	<c:set var="myNewDate" value="<%= new java.util.Date() %>" />
	
	New Time on server is :${myNewDate}
</body>
</html>