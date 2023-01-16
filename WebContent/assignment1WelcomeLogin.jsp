<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to Login Page</title>

</head>
<body>
	<h3>Fill the Below Details</h3>

	<%
		if (request.getParameter("user") != "")
			out.println("<b>Welcome </b>" + request.getParameter("user"));
		else if (pageContext.getAttribute("userid") != null)
			out.println("<b>Welcome </b>" + pageContext.getAttribute("userid"));
	%>


	<br>
	<br>
	<form action="assignment1.1_dashboard.jsp" method="post">
		<table>
			<tr>
				<td>10th Marks Percentage</td>
				<td><input type="text" name="10mark"></td>
			</tr>

			<tr>
				<td>12th Marks Percentage</td>
				<td><input type="text" name="12mark"></td>
			</tr>

			<tr>
				<td>School Name</td>
				<td><input type="text" name="schoolname"></td>
			</tr>

			<tr>
				<td>Math Mark /100</td>
				<td><input type="text" name="math"></td>
			</tr>

			<tr>
				<td>Chemistry Mark /100</td>
				<td><input type="text" name="chem"></td>
			</tr>

			<tr>
				<td>Physics Mark /100</td>
				<td><input type="text" name="phy"></td>
			</tr>

			<tr>
				<td><input type="submit" value="Submit"></td>
			</tr>

		</table>
	</form>
</body>
</html>