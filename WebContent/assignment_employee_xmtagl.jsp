<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<h3>ABC company Employee Details:</h3>

	<c:set var="employeetext">
		<Employees> <Employee> <name>Rajesh</name> <age>34</age>
		<dept>IT</dept> </Employee> <Employee> <name>Vinay</name> <age>35</age>
		<dept>IT</dept> </Employee> <Employee> <name>Ramesh</name> <age>29</age>
		<dept>HR</dept> </Employee> <Employee> <name>Kamal</name> <age>35</age>
		<dept>IT</dept> </Employee> </Employees>
	</c:set>

	<x:parse xml="${employeetext}" var="output" />

	<br>
	<br>
	<br>
	<!-- Question 1 and 2  get me name  of the emp  whose dept is HR and name is Vinay use x:if tag-->
	----------------x:if tag Que 1 -----------------
	<br>
	<x:if select="$output/Employees/Employee/dept = 'HR'">
		<b>Name of the Employee from HR :</b>
		<x:out select="$output/Employees/Employee/name" />
		<br>
	</x:if>
	<br>
	<br> ----------------x:if tag Que 2 -----------------
	<br>
	<x:if select="$output/Employees/Employee/name = 'Vinay'">
		<b>Age of the Vinay Employee :</b>
		<x:out select="$output/Employees/Employee/age" />
		<br>
	</x:if>

	----------------x:choose Que 3 if dept is HR who are working in HR dept
	and IT -----------------
	<br>
	<br> ----------------x:find the person name working in HR and
	IT-----------------
	<br>

	<x:choose>
		<x:when select="$output//Employee/dept = 'HR'">
			<b>Employee working in HR department :</b>
			<x:out select="$output/Employees/Employee/name" />
			<br>
		</x:when>
		<x:when select="$output//Employee/dept = 'IT'">
			<b>Employee working in IT department :</b>
			<x:out select="$output/Employees/Employee/name" />
			<br>
		</x:when>
		<x:otherwise>  
      The author is unknown...  
   </x:otherwise>
	</x:choose>



	----------------x:Print the employee expeirance based on age
	-----------------
	<br>

	<x:choose>
		<x:when select="$output//Employee/age < 30">
			<b>Fresher Employee and name :</b>
			<x:out select="$output/Employees/Employee/name" />
			<br>
		</x:when>
		<x:when
			select="($output//Employee/age > 30 ) && $output//Employee/age =<35)">
			<b>Experienced Employee and name :</b>
			<x:out select="$output/Employees/Employee/name" />
			<br>
		</x:when>
		<x:otherwise>  
      The author is unknown...  
   </x:otherwise>
	</x:choose>

	<br>
	<br>

	<!-- x:out tag-->
	----------------x:out tag -----------------
	<br>

	<b>Name of the 2nd employee is</b>:
	<x:out select="$output/Employees/Employee[2]/name" />
	<br>
	<b>dept of the 3rnd employee is</b>:
	<x:out select="$output/Employees/Employee[3]/dept" />
	<br>

</body>
</html>

---------- For Each --------------------
<br>



<x:forEach select="$output/Employees/Employee/name" var="item">
	<table class="boder">
	<tr>
		<td><b>Name :</b></td>
		<td><x:out select="$item" /></td>
		<br>
	
		<td><b>Age :</b></td>
		<td><x:out select="$output//Employee/age" /></td>
		<br>
	
		<td><b>Department :</b></td>
		<td><x:out select="$output//Employee/dept" /></td>
		<br>

	</tr>
	</table>
</x:forEach>
</ul>