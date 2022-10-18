<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Sample Page</title>

<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/mystryle.css" rel="stylesheet" />
</head>
<body>
<%@include file="menu.jsp" %>
	<div class="container">
		<div class="card">
			<div class="card-header bg-success">
				<h1 class="text-white text-center">Admin Login</h1>
			</div>
			<div class="card-body">
				<form action="admin.jsp" method="post">
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
						<input class="btn btn-warning btn-lg offset-md-4 col-md-4" type="submit" value="LOG IN" />
					</div>
					<div class="error"> ${error} </div>
				</form>
			</div>
			<div class="card-footer bg-success text-end text-white"></div>
		</div>
	</div>
	<%@include file="footer.jsp" %>
</body>
</html>