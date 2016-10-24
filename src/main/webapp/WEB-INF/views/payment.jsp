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
						<label for="password" class="col-sm-3 control-label">PIN Number</label>
						<div class="col-sm-9">
							<input type="password" id="password" placeholder="Password"
								class="form-control">
						</div>
					</div>
				<div class="panel-body">
						<label for="country" class="col-sm-3 control-label">CVV</label>
						<div class = "col-sm-4">
							<select id="month" class="form-control">
								<option>01</option>
								<option>02</option>
								<option>03</option>
								<option>04</option>
								<option>05</option>
								<option>06</option>
								<option>07</option>
								<option>08</option>
								<option>09</option>
								<option>10</option>
								<option>11</option>
								<option>12</option>
							</select></div>
							<div class = "col-sm-5">
							<select id="year" class="form-control">
								<option>2016</option>
								<option>2017</option>
								<option>2018</option>
								<option>2019</option>
								<option>2020</option>
								<option>2021</option>
								<option>2022</option>
								<option>2023</option>
								<option>2024</option>
								<option>2025</option>
								<option>2026</option>
								<option>2027</option>
							</select>
							</div>
					</div>
					<div class="panel-body">
						<div class="col-sm-3 col-sm-offset-3">
							<button type="submit" name="_eventId_submit" class="btn btn-primary btn-block">Make Payment</button>
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