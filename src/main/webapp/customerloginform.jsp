<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Log In Form</title>
</head>
<body>

   <h1 style="color:red;">${msg}</h1>
   <form action="customerloginvalidation" method="post">
   Enter Email:<input type="email" name="email"><br>
   Enter Password:<input type="password" name="password"><br>
   <input type="submit" value="Login">
</body>
</html>