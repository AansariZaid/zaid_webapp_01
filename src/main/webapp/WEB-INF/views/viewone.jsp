<%@ include file="linking.jsp"%>
<%@ include file="navigator.jsp"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>

<title>viewOne</title>
<style>
* {
	box-sizing: border-box;
}

/* Create three columns of equal width */
.columns {
	float: left;
	width: 90%;
	padding: 8px;
}

/* Style the list */
.price {
	list-style-type: none;
	border: 1px solid #eee;
	margin: 0;
	padding: 0;
	-webkit-transition: 0.3s;
	transition: 0.3s;
}

/* Add shadows on hover */
.price:hover {
	box-shadow: 0 8px 12px 0 rgba(0, 0, 0, 0.2)
}

/* Pricing header */
.price .header {
	background-color: #111;
	color: white;
	font-size: 25px;
}

/* List items */
.price li {
	border-bottom: 1px solid #eee;
	padding: 20px;
	text-align: center;
}

/* Grey list item */
.price .grey {
	background-color: #eee;
	font-size: 20px;
}

/* The "Sign Up" button */
.button {
	background-color: #4CAF50;
	border: none;
	color: white;
	padding: 10px 25px;
	text-align: center;
	text-decoration: none;
	font-size: 18px;
}

/* Change the width of the three columns to 100% 
(to stack horizontally on small screens) */
@media only screen and (max-width: 600px) {
	.columns {
		width: 100%;
	}
}
</style>
<div class="container">
	<div class="row">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h2>${product.name}</h2>
			</div>
			<div class="container">
				<div class="panel-body col-sm-6">
					<img alt=""
						src="${cp}/resources/images/productimages/${product.id}.jpg"
						height="300px" width="300px" />
				</div>
				<div class="panel-body col-sm-6">
					<div class="columns">
						<ul class="price">
							<li class="header">${product.brand}</li>
							<li>${product.category}</li>
							<li class="grey">${product.price}Rs.Only/-</li>

							<c:choose>
								<c:when test="${(isUser)}">
									<li class="grey"><a href="<c:url value="${CP }/cart"/>"
										class="btn btn-primary">ADD TO CART <span
											class="glyphicon glyphicon-shopping-cart"></span></a></li>

								</c:when>
								<c:otherwise>
									<li class="grey"><a href="<c:url value="${CP }/login"/>"
										class="btn btn-primary">Login to Purchase<span
											class="glyphicon glyphicon-shopping-cart"></span></a></li>



								</c:otherwise>
							</c:choose>




						</ul>
					</div>
				</div>
			</div>
			<div class="panel-footer">
				<a href="<c:url value="${CP }/viewall"/>" class="btn btn-primary">BACK
					TO PRODUCTS</a>
			</div>
		</div>
	</div>
</div>
<div class="col-sm-2"></div>
<br>
<br>
<%@ include file="footer.jsp"%>