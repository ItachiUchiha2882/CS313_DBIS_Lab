<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- <!DOCTYPE html> -->
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Library Management System</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&display=swap"
	rel="stylesheet">
<style>
form {
	width: 70%;
	margin: auto;
}
</style>
</head>
<body class="bg-warning p-3 mb-2">
	<h1 class="display-4 fw-normal text-center m-5">Book Details</h1>
	<form action="Add.jsp" method="post">
		<button type="submit"
			style="width: 100%; margin: auto; display: block;"
			class="btn btn-primary form-control shadow p-2 my-3">Add a
			book</button>
	</form>
	<form action="Issue.jsp" method="post">
		<button type="submit"
			style="width: 100%; margin: auto; display: block;"
			class="btn btn-primary form-control shadow p-2 my-3">Issue a
			book</button>
	</form>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
</body>
</html>