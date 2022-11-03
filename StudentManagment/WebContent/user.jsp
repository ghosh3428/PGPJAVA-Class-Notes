<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/mystyle.css" rel="stylesheet" />
<title>Insert title here</title>
</head>
<body>
	<%@include file="usernav.jsp"%>
	<div class="container">
		<div class="card">
			<div class="card-header bg-success text-light">
				<h1>NIIT JADAVPUR - USER PAGE</h1>
			</div>
			<div class="card-body">
				<h3>Welcome ${firstName} ${lastName}</h3>
				<h3 class="bg-success">${message}</h3>
			</div>
		</div>
	</div>
	<div class="foot">
	<%@include file="footer.jsp"%>
	</div>
</body>
</html>