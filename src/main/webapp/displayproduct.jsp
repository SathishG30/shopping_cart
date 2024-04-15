<%@page import="com.jsp.shoppingcart.dto.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>displayproduct</title>
</head>
<body>
     <%List<Product>product=(List<Product>) request.getAttribute("productobj");%>
     <h1><a href="fetchitemsfromcart">View Cart</a></h1>
<table cellpadding="20px" border="1px">
   <thead>
   <th>Brand</th>
   <th>Model</th>
   <th>Category</th>
   <th>Price</th>
   <th>Stock</th>
   <th>Add To Cart</th>
  </thead>
  
   <%
   for(Product p:product){
   %>
   <tbody>
   <tr>
   <td><%= p.getBrand() %></td>
   <td><%= p.getModel() %></td>
   <td><%= p.getCategoty() %></td>
   <td><%= p.getPrice() %></td>
   <td><%= p.getStock() %></td>
   <td><a href="additem?id=<%=p.getId()%>">add</a></td>
    </tr>
   <%} %>
    </tbody>
</table>

</body>
</html>