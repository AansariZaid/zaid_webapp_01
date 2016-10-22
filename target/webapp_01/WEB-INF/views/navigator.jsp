<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Securetronic</title>
</head>
<body>
	<nav class="navbar navbar-pills navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="home">Securetronic</a>
		</div>
		<ul class="nav navbar-nav">
			<li ><a href="${cp }/home">Home</a></li>
			<li><a href="${cp }/aboutus">About Us</a></li>
			<li><a href="${cp }/contactus">Contact US</a></li>
			<li><a href="${cp }/viewall">View All Product</a></li>
			<li><a href="${cp }/admin"><span class="glyphicon glyphicon-user"></span>  Admin</a></li>
		</ul>
		
		<ul class="nav navbar-nav navbar-right">
		<li><a href="${cp }/cart"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
      <li><a href="${cp }/register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="${cp }/login"><span class="glyphicon glyphicon-log-in"></span>  Login</a></li>
      
    <!-- web flow is being called from here using membership in href -->
      <li><a href = "memberShip"><span class="glyphicon glyphicon-log-out"></span> Check Out</a></li>
      
      
    </ul>
	</div>
	</nav>

</body>
</html>