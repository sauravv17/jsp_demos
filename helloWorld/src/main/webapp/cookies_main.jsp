<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>Training Portal</h3>
	<%
		String favLang ="Java";
		Cookie[] cookies= request.getCookies();
		if (cookies != null){
			for(Cookie cookie : cookies){
				if (cookie.getName().equals("trainingPortal.cookie")){
					favLang=cookie.getValue();
				}
			}
		}
		
	
	%>
	<p>Your favourite language is <strong><%= favLang %> </strong></p>
	<p>Some news about:   <strong><%= favLang %> </strong></p>
	<p>Few books related to:  <strong><%= favLang %> </strong></p>
	<a href = "cookies_pers.html">Personalize this page</a>
</body>
</html>