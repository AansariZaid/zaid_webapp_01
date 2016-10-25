<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="linking.jsp"%>
<%@ include file="navigator.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.modal-footer {
	border-top: 0px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<form action = "${cp}/login" method = "post" >
	<div class="col-sm-6 col-sm-offset-3">
		<div class="panel panel-primary">
			<div class="panel-heading">Login</div>
			<div class="panel-body">
				<label for="email" class="col-sm-3 control-label">Email</label>
				<div class="col-sm-9">
					<input name = "email" type="email" id="email" placeholder="Email"
						class="form-control">
				</div>
			</div>
			<div class="panel-body">
				<label for="password" class="col-sm-3 control-label">Password</label>
				<div class="col-sm-9">
					<input type="password" id="password" name = "password" placeholder="Password"
						class="form-control">
				</div>
			</div>
			<div class="panel-body">
				<div class="col-sm-offset-3">
					<button type="submit" class="btn btn-primary btn-block">Login</button>
				</div>
			</div>
			<div class="panel-body">
				<div class="col-sm-offset-3">
					<a href="${cp}/register" class="btn btn-primary btn-block">Sign Up</a>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
</form>
</body>
</html>