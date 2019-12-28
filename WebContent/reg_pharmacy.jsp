<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient Registration</title>

</head>
<body>
	<script type="text/javascript">
		// function for checking if any field is blank
		function checkBlanks() {
			var p1 = document.forms["pharmacy_form"]["ncpdp"].value;
			var p2 = document.forms["pharmacy_form"]["location"].value;
			var p3 = document.forms["pharmacy_form"]["email"].value;
			var p4 = document.forms["pharmacy_form"]["password"].value;
			if (p1 == "" && p2 == "" && p3 == "" && p4 == "") {
				alert("Please enter all details!");
				return false;
			} else if (p1 == "" || p2 == "" || p3 == "" || p4 == "") {
				alert("Please do not leave any field blank");
				return false;
			}
		}
	</script>
	<!-- form for entering details -->
	<form name="pharmacy_form" method="post" action="RegisterPharmacy"
		onsubmit="return checkBlanks()">
		<table>
			<tbody>
				<tr>
					<td>Enter NCPDP (National Council for Prescription Drug
						Programs) Number:</td>
					<td><input type="text" name="ncpdp"></td>
				</tr>
				<tr>
					<td>Enter Name and Location:</td>
					<td><input type="text" name="location"></td>
				</tr>
				<tr>
					<td>Enter Email ID:</td>
					<td><input type="text" name="email"></td>
				</tr>
				<tr>
					<td>Enter Password:</td>
					<td><input type="password" name="password"></td>
				</tr>
				<tr>
					<td><input type="submit" value="Sign Up"></td>
				</tr>
			</tbody>
		</table>
		Already registered? <a href="index.jsp">Login Here!</a>
	</form>
</body>
</html>