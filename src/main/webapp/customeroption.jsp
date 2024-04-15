 <%@page import="com.jsp.shoppingcart.dto.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customers Options</title>
</head>
<body>
<%
Customer c=(Customer)session.getAttribute("customerinfo");
if(c!=null){
 %>
 <h1>${msg}</h1>
<h1><a href="displayProducts">Display All Products</a></h1>
<h1><a href="displayproductbybrand.jsp">Display Product by Brand</a></h1>
<h1><a href="">Display Product Between Range</a></h1>

 <%}else{ %>
      <h1><a href="customerloginform.jsp">Log In First</a></h1>
   <%} %>
</body>
</html>