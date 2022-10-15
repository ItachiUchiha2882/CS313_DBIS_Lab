<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Issue a book</title>
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
	<h1 class="display-4 fw-normal text-center m-5">Book issue details</h1>
	<form action="IssueServlet" method="post">
		<div class="form-group row ">
			<label for="studentid" class="col-sm-2 col-form-label">Student
				ID:</label>
			<div class="col-sm-10">
				<input type="text" name="student_id" maxlength="5"
					class="form-control shadow p-2 mb-3" id="studentid"
					placeholder="Enter student_id" required>
			</div>
		</div>
		<div class="form-group row">
			<label for="bookid" class="col-sm-2 col-form-label">Book ID:</label>
			<div class="col-sm-10">
				<input type="text" name="book_id" maxlength="5"
					class="form-control shadow p-2 mb-3" id="bookid"
					placeholder="Enter book_id" required>
			</div>
		</div>
		<div class="form-group row">
			<label for="issuedate" class="col-sm-2 col-form-label">Issue
				Date:</label>
			<div class="col-sm-10">
				<input type="date" name="issue_date"
					class="form-control shadow p-2 mb-3" id="issuedate"
					placeholder="Enter issue_date" required>
			</div>
		</div>
		<!-- <div class="form-group row">
			<label for="returndate" class="col-sm-2 col-form-label">return_date:</label>
			<div class="col-sm-10">
				<input type="date" name="return_date"
					class="form-control shadow p-2 mb-3" id="returndate"
					placeholder="Enter return_date">
			</div>
		</div> -->
		<button type="submit"
			class="btn btn-primary form-control shadow p-2 mb-3">Submit</button>
	</form>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
</body>
</html>