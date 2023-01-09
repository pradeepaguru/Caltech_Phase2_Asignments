<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Below is my script tag</h2>
<%out.println("I am from Scriptlet"); %>

<h2>Below is my expression tag</h2>
<% int a= 10 , b= 20; %>
The Sum is :<%= (a+b) %>

<h2>Declaration tag</h2> 
<%! int age = 40; %>
My age is <%=age %>

</body>
</html>