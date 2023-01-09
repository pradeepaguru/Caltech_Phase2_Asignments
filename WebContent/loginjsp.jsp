<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>I am Follow up JSP File</title>
</head>
<body>

<h2>From Script let</h2>

<% String name = request.getParameter("user");
String age= request.getParameter("age");
 out.println(" Welcome"+ name  ); 
out.println("Your age is"+ age );
%>
<br>
<br>

<h2>From Expression</h2>

   <%= "Welcome "+ request.getParameter("user")%>
     <%=   "Your age is"+request.getParameter("age")%>

</body>
</html>