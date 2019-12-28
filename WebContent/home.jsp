<%@ page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Homepage</title>
</head>
<body>
	Welcome
	<%=session.getAttribute("uname")%>! The current time is
	<%=new Date()%>
	Role:<%=session.getAttribute("role")%>
	First Name:
	<%=session.getAttribute("fname")%>

	<ul>

		<li>For patients, click <a href="patientupload.jsp">HERE!</a></li>
		<li>For doctors, click <a href="doctormain.jsp">HERE!</a></li>
		<li>For pharmacies, click <a href="pharmacymain.jsp">HERE!</a></li>

	</ul>
	<!-- form for logging out -->
	<form name="myForm2" method="get" action="LogoutServlet">
		<input type="submit" value="Logout">
	</form>
</body>
</html>