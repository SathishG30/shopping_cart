<%@page import="com.jsp.shoppingcart.dto.Merchant"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>merchantoption</title>

       <style>
        h1 {
            color: green;
            text-align: center;
        }

        a {
            text-decoration: none;
            color: #333;
            background-color: #f0f0f0;
            padding: 10px 20px;
            border-radius: 5px;
            display: inline-block;
            margin: 10px;
        }
    </style>

</head>
<body>
       
<%Merchant m=(Merchant)session.getAttribute("merchantinfo");
if(m!=null){ %>
    
    <h1 style="color:green;">${msg }</h1>
    <h1><a href="addProduct">Add Product</a></h1>
    <h1><a href="viewallproduct.jsp">View All Product</a></h1>
  <%}
    else  { %> 
    <h1><a href="customerloginform.jsp">Please Login</a></h1> 
    <%} %>
</body>
</html>