<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>WELCOME!</title>
</head>
<body>
	<!-- entering details for prescriptions -->
	<form action="pharmacymain.jsp" method="post">
		<table>
			<tbody>
				<tr>
					<td>Enter Pharmacy Name:</td>
					<td><input type="text" name="location"></td>
				</tr>
				<tr>
					<td>Enter Patient Name:</td>
					<td><input type="text" name="p_name"></td>
				</tr>
				<tr>
					<td>Enter Prescription:</td>
					<td><input type="text" name="prescription"></td>
				</tr>

			</tbody>
		</table>
		<input type="submit" value="Submit">
	</form>

	<!-- form for logging out -->
	<form name="myForm2" method="get" action="LogoutServlet">
		<input type="submit" value="Logout">
	</form>
</body>
</html>