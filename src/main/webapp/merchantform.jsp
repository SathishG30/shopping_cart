<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Merchant Form</title>
</head>
<body>
<form:form action="savemerchant" modelAttribute="merchantobj">
Enter Name:<form:input type="text" path="name" style="margin-bottom: 10px; padding: 5px; width: 100%;"/><br>
Enter mobilenumber:<form:input type="text" path="mobilenumber" style="margin-bottom: 10px; padding: 5px; width: 100%;"/><br>
Enter Email:<form:input type="email" path="email" style="margin-bottom: 10px; padding: 5px; width: 100%;"/><br>
Enter Password:<form:input path="password"/><br>
<input type="submit" style="background-color: #4CAF50; color: white; padding: 10px 20px; border: none; border-radius: 5px; cursor: pointer;">

</form:form>

</body>
</html>