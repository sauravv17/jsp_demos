<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.* , helperUtils.*" %>

<%
	List<Student> data =new ArrayList<Student>();
	data.add(new Student("John", "Doe",false));
	data.add(new Student("Max", "William",true));
	data.add(new Student("John", "Wilson",true));
	data.add(new Student("Dexter", "Mathews",false));
	data.add(new Student("Jane", "McDonell",true));
	pageContext.setAttribute("myStudent", data);
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<table border="1">
			<tr>
				<th>FirstName</th>
				<th>LastName</th>
				<th>Recieved Award </th>
			</tr>
			<c:forEach var="student" items="${myStudent}">
				<tr>
					<td>${student.fName}</td>
					<td>${student.lname}</td>
					<td>
						<c:if test="${student.recieveAward}">
							Congratulations
						</c:if>
						<c:if test="${not student.recieveAward}">
							Better luck next time
						</c:if>
					</td>
				</tr>
			</c:forEach>
		
		</table>
</body>
</html>