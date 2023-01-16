<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<h3>ABC company Employee Details:</h3>  
  
<c:set var="employeetext">  
<Employees>  
<Employee>  
  <name>Rajesh</name>  
  <age>34</age>  
  <dept>IT</dept>  
</Employee>  
<Employee>  
  <name>Vinay</name>  
  <age>35</age>  
  <dept>IT</dept>  
</Employee>  
<Employee>  
  <name>Ramesh</name>  
  <age>29</age>  
  <dept>HR</dept>  
</Employee>  
 <Employee>  
  <name>Kamal</name>  
  <age>35</age>  
  <dept>IT</dept>  
</Employee>  
 </Employees>
 </c:set>  
 
 <x:parse xml="${employeetext}" var="output"/>
 
 <br><br><br>
<!-- Question 1 and 2  get me name  of the emp  whose dept is HR and name is Vinay use x:if tag--> 
----------------x:if tag Que 1 ----------------- <br>
<x:if select="$output/Employees/Employee/dept = 'HR'">  
 Name of the Employee from Hr is  Ramesh   
</x:if> 
 <br><br>
----------------x:if tag Que 2 ----------------- <br>
<x:if select="$output/Employees/Employee/name = 'Vinay'">  
 Age of the Employee Whose name is Vinay is 35   
</x:if> 

----------------x:choose  Que 3 if dept is HR who are working in HR dept and IT  ----------------- 
<br> <br>



<x:choose>  
   <x:when select="$output//Employee/dept = 'HRee'">  
      YOu are working in HR  
   </x:when>  
   <x:when select="$output//Employee/dept = 'IT'">  
     YOu are working in IT 
   </x:when>  
   <x:otherwise>  
      The author is unknown...  
   </x:otherwise>  
</x:choose>


<!-- x:out tag--> 
----------------x:out tag ----------------- <br>


<b>Name of the 2nd employee is</b>:  
<x:out select="$output/Employees/Employee[2]/name" /><br>
<b>dept of the 3rnd employee is</b>:  
<x:out select="$output/Employees/Employee[3]/dept" /><br>

</body>
</html>