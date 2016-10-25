<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Securitronic</title>
</head>
<body>
	<nav class="navbar navbar-pills navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
		
			<a class="navbar-brand" href="${cp}/home">Securetronic</a>
		</div>
		<ul class="nav navbar-nav">
			<li><a href="${cp }/home">Home</a></li>
			<li><a href="${cp }/aboutus">About Us</a></li>
			<li><a href="${cp }/contactus">Contact US</a></li>
			<li><a href="${cp }/viewall">View All Product</a></li>

			<security:authorize access="hasRole('ROLE_USER')" var="isUser">
				<li><a href="${cp }/cart"><span
						class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>

				<!-- 
				web flow is being called from here using membership in href -->
				<li><a href="memberShip"><span
						class="glyphicon glyphicon-log-out"></span> Check Out</a></li>

			</security:authorize>
			
			<security:authorize access="hasRole('ROLE_ADMIN')" var="isAdmin">
				<li><a href="${cp }/admin"><span
						class="glyphicon glyphicon-user"></span> Admin</a></li>
			</security:authorize>
		</ul>
		
		<ul class="nav navbar-nav navbar-right">


			<%-- 				
					<!-- all the content inside authorized block of user will be available when user is logs in otherwise not visible -->
			
			<security:authorize access="hasRole('ROLE_USER')" var="isUser">
				<li><a href="${cp }/cart"><span
						class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>

				<!-- web flow is being called from here using membership in href -->
				<li><a href="memberShip"><span
						class="glyphicon glyphicon-log-out"></span> Check Out</a></li>
			</security:authorize>


	<li><a href="${cp }/register"><span
					class="glyphicon glyphicon-user"></span> Sign Up</a></li>
		
			<li><a href="${cp }/login"><span
					class="glyphicon glyphicon-log-in"></span> Login</a></li>

			<c:if test="${(isAdmin)  || (isUser)}">
				<li><a href="<c:url value="/logout"/>">Log Out <span
						class="glyphicon glyphicon-log-out"></span></a></li>
		
		
			</c:if>
 --%>


			<c:if test="${(isAdmin)  || (isUser)}">

				<li><a href="<c:url value="/logout"/>">Log Out <span
						class="glyphicon glyphicon-log-out"></span>`</a></li>
			</c:if>


			<c:choose>
				<c:when test="${(isAdmin)  || (isUser)}">

				</c:when>
				<c:otherwise>

					<li><a href="${cp }/register"><span
							class="glyphicon glyphicon-user"></span> Sign Up</a></li>

					<li><a href="${cp }/login"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>

				</c:otherwise>
			</c:choose>

		</ul>
	</div>
	</nav>



</body>
</html>