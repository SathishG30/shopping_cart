
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<style type="text/css">

#menu1 {
	background-color: #f0f0f0;
	overflow: hidden;
}

#menu1 a {
	float: left;
	display: green;
	color: black;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

#menu1 a:hover {
	background-color: #ddd;
	color: black;
}

/* Second Menu Bar */
#menu2 {
	
	overflow: hidden;
}

#menu2 a {
	float: left;
	display: block;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

#menu2 a:hover {
	background-color: #ccc;
	color: black;
}
</style>
</head>
<body background="D:\Web Technology\e-commerce-website.png"> 
	<div id="menu1">
		<a href="#home">Home</a> <a href="#about">About</a> <a
			href="#services">Services</a>
	</div>
	<div id="menu2">
		<h1>
			<button class="btnLogin-popup">
				<a href="menu.jsp">Merchant</a>
			</button>
		</h1>
		<h1>
			<button class="btnLogin-popup">
				<a href="customermenu.jsp">Customer</a>
			</button>
		</h1>
	</div>
	
	<!-- <p background="https://previews.123rf.com/images/kotenko/kotenko1403/kotenko140300008/26854631-snowy-winter-in-a-mountain-forest-sunny-cold-day-with-snow-covered-trees-carpathian-mountains-ukrain.jpg">
	Test
	</p> -->
</body>
</html>