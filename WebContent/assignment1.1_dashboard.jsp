<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Final Record Page</title>
</head>
<body>
<h1>Final Record Page</h1>
<% String tenthMark = request.getParameter("10mark");
String twelvethMark = request.getParameter("12mark");
String math= request.getParameter("math");
String chem= request.getParameter("chem");
String phy = request.getParameter("phy");

int mark1= Integer.parseInt(math);
int mark2= Integer.parseInt(chem);
int mark3= Integer.parseInt(phy);
int total = (mark1 + mark2 +mark3)/3;
%>

<b>Total Marks of 10th:</b><%=tenthMark%>%
<br>
<b>Total Marks of 12th:</b><%=twelvethMark%>%
<br>
<b>Total Marks of PCM (Physics, Chemistry and Math):</b><%=total%>


</body>
</html>