<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>merchantloginform</title>

       <style>
        h1 {
            color: red;
            text-align: center;
        }

        form {
            margin: 0 auto;
            width: 300px;
            text-align: center;
        }

        input[type="email"],
        input[type="password"],
        input[type="submit"] {
            display: block;
            margin: 10px auto;
            padding: 5px;
            width: 100%;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>

</head>
<body>
<h1 style="color:red;">${msg }</h1>
<form action="loginvalidation" method="post">
<label for="email">Enter Email:</label>
        <input type="email" name="email"><br>

        <label for="password">Enter Password:</label>
        <input type="password" name="password"><br>

        <input type="submit" value="Login">
</form>

</body>
</html>