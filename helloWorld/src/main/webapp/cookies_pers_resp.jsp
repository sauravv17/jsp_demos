<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	
	String favLang = request.getParameter("fpl");
	Cookie myCookie = new Cookie("trainingPortal.cookie",favLang);
	myCookie.setMaxAge(60*60);
	response.addCookie(myCookie);
	
	%>

	<h3>Thank You !! Your programming language gas been set to : ${param.fpl}</h3>
	<a href ="cookies_main.jsp">Goto Training Portal</a>

</body>
</html>