<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<script type="text/javascript">
		// function for checking if any field is blank
		function checkBlanks() {
			var x = document.forms["myForm"]["uname"].value;
			var y = document.forms["myForm"]["password"].value;
			if (x == "" && y == "") {
				alert("Please enter Email ID & password");
				return false;
			} else if (x == "") {
				alert("Please enter Email ID");
				return false;
			} else if (y == "") {
				alert("Please enter password");
				return false;
			}
		}
	</script>
	<h1>Enter Details</h1>
	<!-- form for entering details -->
	<form name="myForm" method="post" action="ValidateLogin"
		onsubmit="return checkBlanks()">
		<table>
			<tbody>
				<tr>
					<td><input placeholder="Email ID" type="text" name="email"></td>
				</tr>
				<tr>
					<td><input placeholder="Password" type="password"
						name="password"></td>
				</tr>
				<tr>
					<td>Role:</td>
					<td><select name="role" id="role">
							<option value="patient">Patient</option>
							<option value="doctor">Doctor</option>
							<option value="pharmacy">Pharmacy</option>
					</select></td>
				</tr>
				<tr>
					<td><input type="submit" value="Login"></td>
				</tr>
				<tr>
					<td><input type="hidden" name="error" style="color: red">
					</td>
				</tr>
			</tbody>

		</table>
		New to the web site? <a href="signup.jsp">Sign up Here!</a>
		
	</form>
</body>
</html>