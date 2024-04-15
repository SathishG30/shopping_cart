<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>productform</title>
<style type="text/css">
    
</style>
</head>
<body>
<form:form action="saveproduct" modelAttribute="productobj" style="margin-top: 20px;">
  <label>Enter Brand:</label><form:input path="brand" style="width: 200px; padding: 5px; margin-bottom: 10px;"/><br>
  <label>Enter Model:</label><form:input path="model" style="width: 200px; padding: 5px; margin-bottom: 10px;"/><br>
  <label>Enter Category:</label><form:input path="categoty" style="width: 200px; padding: 5px; margin-bottom: 10px;"/><br>
  <label>Enter Price:</label><form:input path="price" style="width: 200px; padding: 5px; margin-bottom: 10px;"/><br>
  <label>Enter Stock:</label><form:input path="stock" style="width: 200px; padding: 5px; margin-bottom: 10px;"/><br>
<input type="submit" style="padding: 10px 20px; background-color: #007bff; color: #fff; border: none; cursor: pointer;">

</form:form>

</body>
</html>