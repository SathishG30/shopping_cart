<%@page import="com.jsp.shoppingcart.dto.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.jsp.shoppingcart.dto.Merchant"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>viewallproduct</title>
</head>
<body>
   <% Merchant merchant=(Merchant)session.getAttribute("merchantinfo"); 
   List<Product>products=merchant.getProducts();
   
   %>
   <table cellpadding="20px" border="1px" style="font-family: Arial, sans-serif; width: 100%; border-collapse: collapse; background-color: #fff;">
   <thead>
   <th style="padding: 15px; text-align: left; border-bottom: 1px solid #ddd; background-color: #f2f2f2;">Id</th>
   <th style="padding: 15px; text-align: left; border-bottom: 1px solid #ddd; background-color: #f2f2f2;">Brand</th>
   <th style="padding: 15px; text-align: left; border-bottom: 1px solid #ddd; background-color: #f2f2f2;">Model</th>
   <th style="padding: 15px; text-align: left; border-bottom: 1px solid #ddd; background-color: #f2f2f2;">Category</th>
   <th style="padding: 15px; text-align: left; border-bottom: 1px solid #ddd; background-color: #f2f2f2;">Stock</th>
   <th style="padding: 15px; text-align: left; border-bottom: 1px solid #ddd; background-color: #f2f2f2;">Price</th>
   <th style="padding: 15px; text-align: left; border-bottom: 1px solid #ddd; background-color: #f2f2f2;">update</th>
   <th style="padding: 15px; text-align: left; border-bottom: 1px solid #ddd; background-color: #f2f2f2;">Delete</th>
  
   </thead>
    <%
   for(Product p:products){
   %>
   <tbody>
   <tr>
   <td style="padding: 15px; text-align: left; border-bottom: 1px solid #ddd;"><%= p.getId() %></td>
   <td style="padding: 15px; text-align: left; border-bottom: 1px solid #ddd;"><%= p.getBrand() %></td>
   <td style="padding: 15px; text-align: left; border-bottom: 1px solid #ddd;"><%= p.getModel()%></td>
   <td style="padding: 15px; text-align: left; border-bottom: 1px solid #ddd;"><%= p.getCategoty() %></td>
   <td style="padding: 15px; text-align: left; border-bottom: 1px solid #ddd;"><%= p.getStock() %></td>
   <td style="padding: 15px; text-align: left; border-bottom: 1px solid #ddd;"><%= p.getPrice() %></td>
   
   <td style="padding: 15px; text-align: left; border-bottom: 1px solid #ddd;"><a href="updateproduct?id=<%= p.getId()%>">Update</a></td>
   <td style="padding: 15px; text-align: left; border-bottom: 1px solid #ddd;"><a href="deleteproduct?id=<%=p.getId()%>">Delete</a></td>
   </tr>
   <%} %>
    </tbody>
   
   </table>
  
</body>
</html>