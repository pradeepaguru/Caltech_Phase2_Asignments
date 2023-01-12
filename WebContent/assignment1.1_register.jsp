<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file ="assignment1.1header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Page</title>
</head>
<body>
<form action="assignmat1.1_Welcome_register_page.jsp" method="post">
<table>
<tr>
<td>UserName</td>
<td><input type="text" name="user"></td>
</tr>
<tr>

<td>Password</td>
<td><input type="password" name="password"></td>
</tr>

<tr>
<td>Age</td>
<td><input type="text" name="age"></td>
</tr>
<tr>

<td>Branch</td>
<td><input type="text" name="branch"></td>
</tr>

<tr>
<td>AdharCard</td>
<td><input type="text" name="card"></td>
</tr>

<tr>
<td><input type="submit" value="Submit"></td>
</tr>

</table>
</form>
<table>
</table>
</body>
</html>