<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="linking.jsp"%>
<%@ include file="navigator.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
</head>
<body>
	<div class="container">

	<form:form action="${cp}/register/save" method="post"
				modelAttribute="user">
				<form:hidden path="enabled" value = "true"/>
				<form:hidden path="role" value = "ROLE_USER"/>
					
	<div class = "row col-sm-6 col-sm-offset-3">
		<div class="panel panel-default">
			<div class="panel-heading">Register</div>
			<div class="panel-body">
				<form:label path="name" for="firstName" class="col-sm-3 control-form">Full Name</form:label>
				<div class="col-sm-9">
					<form:input path="name" placeholder="Full Name"  cssClass="form-control" autofocus = "autofocus" /> 
					<span class="help-block">Last Name, First Name, eg.: Smith, Harry</span><span>
					<form:errors path="name" cssClass="error" /></span>
				</div>
			</div>
			<div class="panel-body">
				<form:label path = "email" for="email" class="col-sm-3 control-form">Email</form:label>
				<div class="col-sm-9">
					<form:input path = "email" placeholder="Email" required = "" 
						cssClass="form-control"/><span><form:errors path="email" cssClass="error" /></span>
				</div>
			</div>
			<div class="panel-body">
				<form:label path = "password" for="password" class="col-sm-3 control-form">Password</form:label>
				<div class="col-sm-9">
					<form:password path = "password" placeholder="Password" required = "" 
						class="form-control"/>				<span><form:errors path="password" cssClass="error" /></span>
				</div>
			</div>
			
			<div class="panel-body">
				<form:label path = "country" for="country" class="col-sm-3 control-form">Country</form:label>
				<div class="col-sm-9">
					<form:select path = "country" id="country" class="form-control">
						<form:option value = "India">India</form:option>
						<form:option value = "China">China</form:option>
						<form:option value = "Bangladesh">Bangladesh</form:option>
						<form:option value = "Pakistan">Pakistan</form:option>
						<form:option value = "Afganistan">Afganistan</form:option>
						<form:option value = "Russia">Russia</form:option>
						<form:option value = "Nepal">Nepal</form:option>
						<form:option value = "Bhutan">Bhutan</form:option>
					</form:select>
				</div>
			</div>
			<div class="panel-body">
				<div class="col-sm-3 col-sm-offset-3">
					<button type="Submit" value = "Register" class="btn btn-primary btn-block">Register</button>
				</div>
			</div>
		</div>
	</div>
	</form:form>
</div>

</body>
</html>
<%@ include file = "footer.jsp" %>