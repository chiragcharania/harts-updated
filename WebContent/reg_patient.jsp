<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient Registration</title>
<link rel="stylesheet" href="css/patient.css">
</head>
<body>
	<script type="text/javascript">
		// function for checking if any field is blank
		function checkBlanks() {
			var p1 = document.forms["patient_form"]["ssn"].value;
			var p2 = document.forms["patient_form"]["fname"].value;
			var p3 = document.forms["patient_form"]["lname"].value;
			var p4 = document.forms["patient_form"]["dob"].value;
			var p5 = document.forms["patient_form"]["blood_group"].value;
			var p6 = document.forms["patient_form"]["gender"].value;
			var p7 = document.forms["patient_form"]["emergency_contact"].value;
			var p8 = document.forms["patient_form"]["password"].value;
			var p9 = document.forms["patient_form"]["email"].value;
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
	<form name="patient_form" method="post" action="RegisterPatient"
		onsubmit="return checkBlanks()">
		<table>
			<tbody>
				<tr>
					<td>Enter SSN:</td>
					<td><input type="text" name="ssn"></td>
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
					<td>Enter Blood Group:</td>
					<td><input type="text" name="blood_group"></td>
				</tr>
				<tr>
					<td>Select Gender:</td>
					<td><input type="text" name="gender"></td>
				</tr>
				<tr>
					<td>Enter name of Emergency Contact:</td>
					<td><input type="text" name="emergency_contact"></td>
				</tr>
				<tr>
					<td>Enter Password:</td>
					<td><input type="password" name="password"></td>
				</tr>
				<tr>
					<td>Enter Email ID:</td>
					<td><input type="text" name="email"></td>
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