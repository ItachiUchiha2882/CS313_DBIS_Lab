<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add a patient</title>
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
	<h1 class="display-4 fw-normal text-center m-5">Enter patient details</h1>
	<form action="AddpatServlet" method="post">
		<div class="form-group row ">
			<label for="d_id" class="col-sm-2 col-form-label">Patient ID:</label>
			<div class="col-sm-10">
				<input type="text" name="p_id" maxlength="8"
					class="form-control shadow p-2 mb-3" id="d_id"
					placeholder="Enter patient_id" required>
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
			<label for="dept_name" class="col-sm-2 col-form-label">Gender:</label>
			<div class="col-sm-10">
				<input type="text" name="g" maxlength="10"
					class="form-control shadow p-2 mb-3" id="dept_name"
					placeholder="Enter gender">
			</div>
		</div>
		<div class="form-group row">
			<label for="spacility" class="col-sm-2 col-form-label">Date of Birth:</label>
			<div class="col-sm-10">
				<input type="date" name="bd"
					class="form-control shadow p-2 mb-3" id="spacility"
					placeholder="Enter DOB">
			</div>
		</div>
		<div class="form-group row">
			<label for="salary" class="col-sm-2 col-form-label">Street:</label>
			<div class="col-sm-10">
				<input type="text" name="st" maxlength="20"
					class="form-control shadow p-2 mb-3" id="salary"
					placeholder="Enter street">
			</div>
		</div>
		<div class="form-group row">
			<label for="salar" class="col-sm-2 col-form-label">City:</label>
			<div class="col-sm-10">
				<input type="text" name="ct" maxlength="20"
					class="form-control shadow p-2 mb-3" id="salar"
					placeholder="Enter city">
			</div>
		</div>
		<div class="form-group row">
			<label for="sala" class="col-sm-2 col-form-label">State:</label>
			<div class="col-sm-10">
				<input type="text" name="state" maxlength="20"
					class="form-control shadow p-2 mb-3" id="sala"
					placeholder="Enter state">
			</div>
		</div>
		<div class="form-group row">
			<label for="sal" class="col-sm-2 col-form-label">Pincode:</label>
			<div class="col-sm-10">
				<input type="text" name="pincode" maxlength="20"
					class="form-control shadow p-2 mb-3" id="sal"
					placeholder="Enter pincode">
			</div>
		</div>
		<div class="form-group row">
			<label for="sa" class="col-sm-2 col-form-label">Allergy1:</label>
			<div class="col-sm-10">
				<input type="text" name="a1" maxlength="20"
					class="form-control shadow p-2 mb-3" id="sa"
					placeholder="Enter allergy">
			</div>
		</div>
		<div class="form-group row">
			<label for="salary11" class="col-sm-2 col-form-label">Allergy2:</label>
			<div class="col-sm-10">
				<input type="text" name="a2" maxlength="20"
					class="form-control shadow p-2 mb-3" id="salary11"
					placeholder="Enter allergy">
			</div>
		</div>
		<div class="form-group row">
			<label for="salary22" class="col-sm-2 col-form-label">Allergy3:</label>
			<div class="col-sm-10">
				<input type="text" name="a3" maxlength="20"
					class="form-control shadow p-2 mb-3" id="salary22"
					placeholder="Enter allergy">
			</div>
		</div>
		<div class="form-group row">
			<label for="salary12" class="col-sm-2 col-form-label">Height:</label>
			<div class="col-sm-10">
				<input type="text" name="h" maxlength="20"
					class="form-control shadow p-2 mb-3" id="salary12"
					placeholder="Enter height">
			</div>
		</div>
		<div class="form-group row">
			<label for="salary13" class="col-sm-2 col-form-label">Weight:</label>
			<div class="col-sm-10">
				<input type="text" name="w" maxlength="20"
					class="form-control shadow p-2 mb-3" id="salary13"
					placeholder="Enter weight">
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