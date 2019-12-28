<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>WELCOME!</title>
<link rel="stylesheet" href="css/pharmacy.css">

</head>
<body>
	<!-- getting prescriptions from Doctor -->
	<jsp:declaration>String prescription = "";
	String p_name = "";</jsp:declaration>
	<jsp:scriptlet>prescription = request.getParameter("prescription");
			p_name = request.getParameter("p_name");</jsp:scriptlet>
	<strong>These are the prescribed medicines for the patient: <jsp:expression>prescription</jsp:expression></strong>

	<!-- form for logging out -->
	<form name="myForm2" method="get" action="LogoutServlet">
		<input type="submit" value="Logout">
	</form>


</body>
</html>