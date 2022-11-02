<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show details</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<style>
form {
	width: 70%;
	margin: auto;
}
</style>
</head>
<body class="bg-warning p-3 mb-2">
	<h1 class="display-4 fw-normal text-center m-5">Patient details:</h1>
	<div class="fw-normal text-center m-5">
	<%
	Object id = request.getAttribute("id");
	out.println("ID : " + id + "<br>");
	Object fname = request.getAttribute("f_name");
	out.println("First name  : " + fname + "<br>");
	Object lname = request.getAttribute("l_name");
	out.println("Last name : " + lname + "<br>");
	Object gender = request.getAttribute("gender");
	out.println("Gender : " + gender + "<br>");
	Object dob = request.getAttribute("dob");
	out.println("DOB  : " + dob + "<br>");
	Object ht = request.getAttribute("ht");
	out.println("Height  : " + ht + "<br>");
	Object wt = request.getAttribute("wt");
	out.println("Weight  : " + wt + "<br>");
	%>
	</div>
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
</body>
</html>