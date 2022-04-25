<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="toDo_List.jsp">
	<h3 align="center">ToDo List</h3>
	Add task: 
	<input type="text" name="toDo" />
	<input type="submit" value="submit" />
	</form>
	
	<%
		List<String> tasks =(List<String>)session.getAttribute("myToDoList");
		if (tasks == null){
			tasks = new ArrayList<String>();
			session.setAttribute("myToDoList",tasks);
		}
		tasks.add(request.getParameter("toDo"));
	
	%>
	<hr>
	<hr>
	<b>List of Works:</b><br />
	<ol>
		<%
		for (String task :tasks){
			out.println("<li>" + task +"</li>");
		}
		
		%>
	
	</ol>
</body>
</html>