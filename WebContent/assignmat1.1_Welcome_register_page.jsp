<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Registration Page</title>
</head>
<body>
<% 

String user = request.getParameter("user");
String password = request.getParameter("password");
String age = request.getParameter("age");
String branch = request.getParameter("branch");
String adharcard = request.getParameter("card");
pageContext.setAttribute("user", request.getParameter("user"));

%>

<h1>Welcome to Registration Page</h1>
Welcome <%=user %>
<br>

<form action="assignment1WelcomeLogin.jsp" method="post">
<p>Verify Your Details</p>
<br>
<b>Name:</b> <%=user %><br>
<b>Password:</b> <%=password %><br>
<b>Age:</b> <%=age %><br>
<b>Branch:</b> <%=branch %><br>
<b>AdharCard:</b> <%=adharcard%><br>

<br>
<input type="submit" value ="Submit & Verify">

</form>
</body>
</html>