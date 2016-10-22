`<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
			<div class="row col-sm-6 col-sm-offset-3">
				<div class="panel panel-default">
					<div class="panel-heading">Billing Address</div>
					<div class="panel-body">
						<label for="firstName" class="col-sm-3 control-label">Addres
							line 1</label>
						<div class="col-sm-9">
							<input type="text" id="bill1"
								placeholder="for eg : House number,Apartment"
								class="form-control" autofocus>
						</div>
					</div>
					<div class="panel-body">
						<label for="email" class="col-sm-3 control-label">Addres
							Line 2</label>
						<div class="col-sm-9">
							<input type="text" id="bill2"
								placeholder="for eg: Location,City,Pincode" class="form-control">
						</div>
					</div>

					<div class="panel-body">
						<label for="country" class="col-sm-3 control-label">Country</label>
						<div class="col-sm-9">
							<select id="billcountry" class="form-control">
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
					<!-- <div class="panel-body">
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
				/.form-group
 -->
					<div class="panel-body">
						<div class="col-sm-3 col-sm-offset-3">
							<button type="submit" name="_eventId_submit"
								class="btn btn-primary btn-block">
								Next &#160;<span class="glyphicon glyphicon-circle-arrow-right"></span>
							</button>
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