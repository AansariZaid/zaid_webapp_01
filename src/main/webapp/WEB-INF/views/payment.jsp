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
	<form:form>
		<div class="container">
			<div class="row col-sm-9 col-sm-offset-1">
				<div class="panel panel-default">
					<div class="panel-heading">Payment Details</div>
					<div class="panel-body">
						<label for="firstName" class="col-sm-3 control-label">CARD
							NUMBER</label>
						<div class="col-sm-9 ">
							<input type="text" id="cardnumber" placeholder="for ex: X12X XXXX XXXXX"
								class="form-control" autofocus> 
						</div>
					</div>
					<div class="panel-body">
						<label for="text" class="col-sm-3 control-label">CARD
							HOLDER NAME</label>
						<div class="col-sm-9">
							<input type="text" id="" placeholder="for eg : LORD VOLDEMORT "
								class="form-control">
						</div>
					</div>
					<div class="panel-body">
						<label for="password" class="col-sm-3 control-label">Password</label>
						<div class="col-sm-9">
							<input type="password" id="password" placeholder="Password"
								class="form-control">
						</div>
					</div>
				<div class="panel-body">
						<label for="country" class="col-sm-3 control-label"></label>
						<div class="col-sm-9">
							<select id="country" class="form-control">
								<option>India</option>
								<option>China</option>
								<option>Bangladesh</option>
								<option>Pakistan</option>
								<option>Afganistan</option>
								<option>Russia</option>
								<option>Nepal</option>
								<option>Bhutan</option>
							</select>
						</div>
					</div>
					<div class="panel-body">
						<label for="country" class="col-sm-3 control-label">Country</label>
						<div class="col-sm-9">
							<select id="country" class="form-control">
								<option>India</option>
								<option>China</option>
								<option>Bangladesh</option>
								<option>Pakistan</option>
								<option>Afganistan</option>
								<option>Russia</option>
								<option>Nepal</option>
								<option>Bhutan</option>
							</select>
						</div>
					</div>
					<!-- /.form-group -->
					<div class="panel-body">
						<label class="control-label col-sm-3">Gender</label>
						<div class="col-sm-6">
							<div class="row">
								<div class="col-sm-4">
									<label class="radio-inline"> <input type="radio"
										name="genderradio" id="femaleRadio" value="Female">Female
									</label>
								</div>
								<div class="col-sm-4">
									<label class="radio-inline"> <input type="radio"
										name="genderradio" id="maleRadio" value="Male">Male
									</label>
								</div>

							</div>
						</div>
					</div>
					<!-- /.form-group -->

					<div class="panel-body">
						<div class="col-sm-3 col-sm-offset-3">
							<button type="submit" name="_eventId_submit" class="btn btn-primary btn-block">Register</button>
						</div>
					</div>
				</div>
			</div>
			<!-- /form -->
		</div>
	</form:form>
</body>
</html>
<%@ include file="footer.jsp"%>