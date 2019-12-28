<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>WELCOME!</title>
<link rel="stylesheet" href="css/patient.css">
</head>
<body>

	<h1>Upload File Form</h1>
	<h2>${requestScope.message}</h2>
	<form action="FileUploadServlet" enctype="multipart/form-data"
		method="post">
		Enter File Name <input type="text" name="file_name"><br>
		Select<input type="file" name="file2" /><br> <input
			type="submit" value="upload" />
	</form>
	<!-- form for uploading the files -->
	<%
		String file_name = (String) request.getParameter("filename");
		if (file_name != null) {
			out.println(file_name + " File(s) uploaded successfuly");
		}
	%>
	<!-- form for logging out -->
	<form name="myForm2" method="get" action="LogoutServlet">
		<input type="submit" value="Logout">
	</form>





</body>
</html>