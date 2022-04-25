<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String[] cities ={"Mumbai", "Patna","Delhi","Pune","Bangalore"};
	pageContext.setAttribute("myCities",cities);
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<c:forEach var ="city" items ="${myCities}">
	<li>${city}</li>
	</c:forEach>
	
</body>
</html>