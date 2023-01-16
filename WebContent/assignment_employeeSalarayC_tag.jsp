<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<!-- import tag lib -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Assignment C tag </title>
</head>
<body>

	<!-- set and out -->
	----------Set and Out Attribute------
	<c:set var="salary1" scope="session" value="${5000*4}" />
	<p>
		Employee1 Salary is:
		<c:out value="${salary1}" /> 
		<br> <br>

		<c:set var="salary2" scope="session" value="${7000*2}" />
	<p>
		Employee2 Salary is:
		<c:out value="${salary2}" />
		<br> <br>


		<c:set var="salary3" scope="session" value="${5000*5}" />
	<p>
		Employee3 Salary is:
		<c:out value="${salary3}" />
		<br> <br>

		<c:set var="salary4" scope="session" value="${5000*2}" />
	<p>
		Employe4 Salary is:
		<c:out value="${salary4}" />
		<br> <br>


		<p><!-- 
Choose Switch condition -->

		<c:set var="salary" value="${salary3}" />
		<c:choose>
			<c:when test="${(salary > 9000 )&& (salary<= 13000)}">
				<b>New Salary of Employee </b>
				<br />
				<c:set var="employee2_New_salary" scope="session"
					value="${salary+5000}" />
				<b>New Salary of Employee </b>
				<br />
				<c:out value="${employee2_New_salary}" />
			</c:when>

			<c:when test="${(salary > 13500 )&& (salary<= 21000)}">
				<b>New Salary of Employee </b>
				<br />
				<c:set var="employee3_New_salary" scope="session"
					value="${salary+7000}" />
				<b>New Salary of Employee </b>
				<br />
				<c:out value="${employee3_New_salary}" />
			</c:when>


			<c:when test="${(salary > 22000 )&& (salary<= 26000)}">
				<b>New Salary of Employee </b>
				<br />
				<c:set var="employee4_New_salary" scope="session"
					value="${salary+9000}" />
				<b>New Salary of Employee </b>
				<br />
				<c:out value="${employee4_New_salary}" />
			</c:when>

			<c:when test="${(salary > 28000)}">
				<b>New Salary of Employee 2</b>
				<br />
				<c:set var="employee5_New_salary" scope="session"
					value="${salary+10000}" />
				<b>New Salary of Employee </b>
				<br />
				<c:out value="${employee5_New_salary}" />
			</c:when>
		</c:choose>

		<!-- IF condition -->



		<!--  Remove the Existing values -->
		<c:set var="salary_toRemove1" scope="session" value="${salary1}" />
	<p>
		Before Remove Value is:
		<c:out value="${salary_toRemove1}" />
	</p>
	<c:remove var="salary_toRemove1" />
	<p>
		After Remove Value is:
		<c:out value="${salary_toRemove1}" />
	</p>
	<br>
	<br>

		<c:set var="salary_toRemove2" scope="session" value="${salary2}" />
	<p>
		Before Remove Value is:
		<c:out value="${salary_toRemove2}" />
	</p>
	<c:remove var="salary_toRemove2" />
	<p>
		After Remove Value is:
		<c:out value="${salary_toRemove2}" />
	</p>
	<br>
	<br>
	
		<c:set var="salary_toRemove3" scope="session" value="${salary3}" />
	<p>
		Before Remove Value is:
		<c:out value="${salary_toRemove3}" />
	</p>
	<c:remove var="salary_toRemove3" />
	<p>
		After Remove Value is:
		<c:out value="${salary_toRemove3}" />
	</p>
	<br>
	<br>
	
		<c:set var="salary_toRemove4" scope="session" value="${salary4}" />
	<p>
		Before Remove Value is:
		<c:out value="${salary_toRemove4}" />
	</p>
	<c:remove var="salary_toRemove2" />
	<p>
		After Remove Value is:
		<c:out value="${salary_toRemove4}" />
	</p>
	<br>
	<br>


<br><br>
<!-- If condition -->
----------If Attribute------
<c:set var="income" scope="session" value="${salary1}"/>  
<c:if test="${(salary > 9000 )&& (salary<= 13000)}">  
   <p>New Salary with Bonus from if condition : <c:out value="${income + 5000}"/><p>  
</c:if>  

 
<c:if test="${(salary > 13500 )&& (salary<= 21000)}">  
   <p>New Salary with Bonus from if condition : <c:out value="${income + 7000}"/><p>  
</c:if>


<c:set var="income" scope="session" value="${salary1}"/>  
<c:if test="${(salary > 22000 )&& (salary<= 26000)}">  
   <p>New Salary with Bonus from if condition : <c:out value="${income + 9000}"/><p>  
</c:if>

<c:set var="income" scope="session" value="${salary1}"/>  
<c:if test="${(salary > 28000 )}">  
   <p>New Salary with Bonus from if condition : <c:out value="${income + 10000}"/><p>  
</c:if>
	</body>
</html>