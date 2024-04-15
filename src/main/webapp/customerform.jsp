<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Details Form</title>
</head>
<body>
<form:form action="savecustomer" modelAttribute="customerobj">
Enter Name:<form:input path="name"/><br>
Enter Address:<form:input path="address"/><br>
Enter mobilenumber:<form:input path="mobilenumber"/><br>
Enter Email:<form:input path="email"/><br>
Enter Password:<form:input path="password"/><br>
<input type="submit">

</form:form>
</body>
</html>