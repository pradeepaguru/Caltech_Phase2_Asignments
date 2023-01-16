<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Format Tag Assignment</title>

<h3 style="text-align: center">Mark Sheet</h3>
<c:set var="str" value="<%=new java.util.Date()%>" />
<h4>
	Date:
	<c:out value="${str}" />
</h4>
</head>
<body>
	
	<fmt:parseNumber var="total"   value="${mark1 +mark2+mark3 +mark4 }" />
	<fmt:parseNumber var="mark1" integerOnly="true" type="number" value="90" />  
	<fmt:parseNumber var="mark2" integerOnly="true" type="number" value="95" />  
	<fmt:parseNumber var="mark3" integerOnly="true" type="number" value="88" />  
	<fmt:parseNumber var="mark4" integerOnly="true" type="number" value="90" />  
	<fmt:parseNumber var="total" integerOnly="true" type="number" value="${mark1+mark2+mark3+mark4 }" />  
	

	<table>
		<tr>
			<td><b> Mark1:</b> <c:out value="${mark1}" /> Total :100</td>
		</tr>
		<tr>
			<td><b> Mark2: </b>
			<c:out value="${mark2}" /> Total :100</td>
		</tr>
		<tr>
			<td><b> Mark3: </b>
			<c:out value="${mark3}" /> Total :100</td>
		</tr>
		<tr>
			<td><b> Mark4: </b>
			<c:out value="${mark4}" /> Total :100</td>
		</tr>

		<tr>
			<td><b> Total Mark: </b>
			<c:out value="${total }" /> :400</td>
		</tr>

		<tr>
			<td><b> Percentage: </b>
			<c:out value="${total/4 }" />%</td>
		</tr>
	</table>
	
	<h3 style="text-align: center">Fees Details</h3>
	
	
	<fmt:parseNumber var="total"   value="${mark1 +mark2+mark3 +mark4 }" />
	<fmt:parseNumber var="fee1" integerOnly="true" type="number" value="2000" />  
	<fmt:parseNumber var="fee2" integerOnly="true" type="number" value="3000" />  
	<fmt:parseNumber var="fee3" integerOnly="true" type="number" value="4000" />  
	<fmt:parseNumber var="fee4" integerOnly="true" type="number" value="5000" />  
	
	<fmt:parseNumber var="total" integerOnly="true" type="number" value="${mark1+mark2+mark3+mark4 }" /> 
	
	
	
	<c:set var="totalfee" value="${fee1+fee2+fee3+fee4 }" />
	
	
	<p><b>Fee Paid for Semester 1:</b>$<c:out value="${fee1}" /></p>
	<p><b>Fee Paid for Semester 2:</b>$<c:out value="${fee2}" /></p>
	<p><b>Fee Paid for Semester 3:</b>$<c:out value="${fee3}" /></p>
	<p><b>Fee Paid for Semester 4:</b>$<c:out value="${fee4}" /></p>
	<br>

	<b>Total Fees paid:</b>$<c:out value="${totalfee}" />
	

</body>
</html>