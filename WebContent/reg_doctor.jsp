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
			var p1 = document.forms["doctor_form"]["upin"].value;
			var p2 = document.forms["doctor_form"]["fname"].value;
			var p3 = document.forms["doctor_form"]["lname"].value;
			var p4 = document.forms["doctor_form"]["dob"].value;
			var p5 = document.forms["doctor_form"]["ssn"].value;
			var p6 = document.forms["doctor_form"]["address"].value;
			var p7 = document.forms["doctor_form"]["email"].value;
			var p8 = document.forms["doctor_form"]["password"].value;
			var p9 = document.forms["doctor_form"]["specialization"].value;

			if (p1 == "" && p2 == "" && p3 == "" && p4 == "" && p5 == ""
					&& p6 == "" && p7 == "" && p8 == "" && p9 == "") {
				alert("Please enter all details!");
				return false;
			} else if (p1 == "" || p2 == "" || p3 == "" || p4 == "" || p5 == ""
					|| p6 == "" || p7 == "" || p8 == "" || p9 == "") {
				alert("Please do not leave any field blank");
				return false;
			}
		}
	</script>
	<!-- form for entering details -->
	<form name="doctor_form" method="post" action="RegisterDoctor"
		onsubmit="return checkBlanks()">
		<table>
			<tbody>
				<tr>
					<td>Enter UPIN (Unique Physician Identification Number):</td>
					<td><input type="text" name="upin"></td>
				</tr>
				<tr>
					<td>Enter First Name:</td>
					<td><input type="text" name="fname"></td>
				</tr>
				<tr>
					<td>Enter Last Name:</td>
					<td><input type="text" name="lname"></td>
				</tr>
				<tr>
					<td>Enter Date of Birth:</td>
					<td><input type="text" name="dob"></td>
				</tr>
				<tr>
					<td>Enter SSN:</td>
					<td><input type="text" name="ssn"></td>
				</tr>
				<tr>
					<td>Enter Hospital Name and Address:</td>
					<td><input type="text" name="address"></td>
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
					<td>Enter your Specialization:</td>
					<td><input type="text" name="specialization"></td>
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