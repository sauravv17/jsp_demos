<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	Student <%= request.getParameter("firstName") %> <%= request.getParameter("lastName") %> registration is confirmed !!
	<br /><br />
	Welcome - ${param.lastName}, ${param.firstName}, from ${param.country}
	<br /><br />
	<%
		String[] langs =request.getParameterValues("fpl");
		if (langs != null){
			out.println("Your favourite lang is");
			out.println("<ul>");
			for(String lang:langs){
				out.println("<li>" + lang +"</li>");
			}
			out.println("</ul");
		}
	%>
	
	
</body>
</html>