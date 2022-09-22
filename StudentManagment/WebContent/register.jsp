<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Sample Page</title>

<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/mystyle.css" rel="stylesheet" />
</head>
<body>
	<%@include file="menu.jsp"%>
	<div class="container">
		<div class="card">
			<div class="card-header bg-primary">
				<h1 class="text-white text-center">Register User</h1>
			</div>
			<div class="card-body">
				<form action="LoginServlet" method="post">
					<div class="form-group row mypad">
						<label class="form-label offset-md-2 col-md-3">Login ID</label>
						<div class="col-md-5">
							<input class="form-control" type="text" name="l_id" />
						</div>

					</div>
					<div class="form-group row mypad">
						<label class="form-label offset-md-2 col-md-3">Password</label>
						<div class="col-md-5">
							<input class="form-control" type="password" name="l_pass" />
						</div>

					</div>
					<div class="form-group row mypad">
						<label class="form-label offset-md-2 col-md-3">Confirm
							Password</label>
						<div class="col-md-5">
							<input class="form-control" type="password" name="l_pass" />
						</div>

					</div>
					<div class="form-group row mypad">
						<label class="form-label offset-md-2 col-md-3">First Name</label>
						<div class="col-md-5">
							<input class="form-control" type="password" name="l_pass" />
						</div>

					</div>
					<div class="form-group row mypad">
						<label class="form-label offset-md-2 col-md-3">Last Name</label>
						<div class="col-md-5">
							<input class="form-control" type="password" name="l_pass" />
						</div>

					</div>
					<div class="form-group row mypad">
						<label class="form-label offset-md-2 col-md-3">Phone
							Number</label>
						<div class="col-md-5">
							<input class="form-control" type="password" name="l_pass" />
						</div>

					</div>
					<div class="form-group row mypad">
						<label class="form-label offset-md-2 col-md-3">Email</label>
						<div class="col-md-5">
							<input class="form-control" type="password" name="l_pass" />
						</div>

					</div>
					<div class="form-group row mypad">
						<input class="btn btn-warning btn-lg offset-md-4 col-md-4"
							type="submit" value="LOG IN" />
					</div>
				</form>
			</div>
			<div class="card-footer bg-primary text-end text-white">@niit
				jadavpur</div>
		</div>
	</div>
	<%@include file="footer.jsp"%>
</body>
</html>
