<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update details</title>
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
	<h1 class="display-4 fw-normal text-center m-5">Enter doctor details</h1>
	<form action="UpdatedocServlet" method="post">
		<div class="form-group row ">
			<label for="d_id" class="col-sm-2 col-form-label">Doctor ID:</label>
			<div class="col-sm-10">
				<input type="text" name="d_id" maxlength="8"
					class="form-control shadow p-2 mb-3" id="d_id"
					placeholder="Enter doctor_id" required>
			</div>
		</div>
		<div class="form-group row">
			<label for="fname" class="col-sm-2 col-form-label">First name:</label>
			<div class="col-sm-10">
				<input type="text" name="fname" maxlength="50"
					class="form-control shadow p-2 mb-3" id="fname"
					placeholder="Enter first name">
			</div>
		</div>
		<div class="form-group row">
			<label for="lname" class="col-sm-2 col-form-label">Last name:</label>
			<div class="col-sm-10">
				<input type="text" name="lname" maxlength="50"
					class="form-control shadow p-2 mb-3" id="lname"
					placeholder="Enter last name">
			</div>
		</div>
		<div class="form-group row">
			<label for="dept_name" class="col-sm-2 col-form-label">Department name:</label>
			<div class="col-sm-10">
				<input type="text" name="dept_name" maxlength="20"
					class="form-control shadow p-2 mb-3" id="dept_name"
					placeholder="Enter department name">
			</div>
		</div>
		<div class="form-group row">
			<label for="spacility" class="col-sm-2 col-form-label">Speciality:</label>
			<div class="col-sm-10">
				<input type="text" name="spacility" maxlength="30"
					class="form-control shadow p-2 mb-3" id="spacility"
					placeholder="Enter speciality">
			</div>
		</div>
		<div class="form-group row">
			<label for="salary" class="col-sm-2 col-form-label">Salary:</label>
			<div class="col-sm-10">
				<input type="text" name="salary" maxlength="7"
					class="form-control shadow p-2 mb-3" id="salary"
					placeholder="Enter salary">
			</div>
		</div>
		
		<button type="submit"
			style="width: 100%; margin: auto; display: block;"
			class="btn btn-primary form-control shadow p-2 my-3">Submit</button>
	</form>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
</body>
</html>