<%@page import="com.jsp.shoppingcart.dto.Item"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>displaycartitemstocustomer</title>
</head>
<body>
       <%
       List<Item>items=(List<Item>)request.getAttribute("itemslist");
              %>
       <table cellpadding="20px" border=" 1px solid black">
       <thead>
        <th>Brand</th>
        <th>Model</th>
        <th>Category</th>
        <th>Quantity</th>
        <th>Price</th>
       </thead> 
       
       <%for(Item i:items) {%>
       <tbody>
          <tr>
              <td><%= i.getBrand() %></td>
              <td><%= i.getModel() %></td>
              <td><%= i.getCategory() %></td>
              <td><%= i.getQuantity() %></td>
              <td><%= i.getPrice() %></td>
              
          </tr>
          
       </tbody>
       <%} %>
       <tr>
       <td><a href="addorder"><button>Buy now</button></a></td>
       <td align="right" colspan="4"><h3>Total Price:${total}</h2></td>
      <tr> 
       </table>
</body>
</html>