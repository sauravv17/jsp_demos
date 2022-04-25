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
	<form action ="SignUp.jsp">
		<h2 align="center">SignUp</h2>
		Enter your First Name :  <input name="fName">
		<br />
		<br />
		Enter your Last Name :  <input name="lName">
		<br />
		<br />
		Gender :
		<input type ="radio" value ="M">Male
		<input type ="radio" value ="F">Female
		<br />
		<br />
		Select preferred programming Language : 
		<select name ="fpl">
			<option>Java</option>
			<option>Python</option>
			<option>C++</option>
		</select>
		<br /><br />
		<input type="submit" value="Add" />
	</form>
	<hr><hr>
	People present :
	<%  
		List<String> names1 = (List<String>) session.getAttribute("signUp1");
		List<String> names2 = (List<String>) session.getAttribute("signUp1");

		if (names1==null){
			names1 =new ArrayList<String>();
			names2 =new ArrayList<String>();


			session.setAttribute("signUp1",names1);
		}
		String fname=request.getParameter("fName");
		String lname=request.getParameter("lName");

		names1.add(fname);
		names2.add(lname);
		for(String name1:names1){
				out.println(name1);
			}
		
	
	%>
	
	
</body>
</html>