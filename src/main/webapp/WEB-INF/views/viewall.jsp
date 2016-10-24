<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ include file="linking.jsp"%>
<%@ include file="navigator.jsp"%>
<title>viewall</title>


<div class="container">

	<div ng-app="myApp" ng-controller="myCtrl" ng-init="test='${scope}'">
		<p>
			<input type="text" class="form-control" id="usr" ng-model="test">
		</p>
		<table class="table table-hover">
			<thead>
				<tr>
					<th ng-click="orderByMe('id')">ID</th>
					<th ng-click="orderByMe('name')">Name</th>
					<th ng-click="orderByMe('band')">Brand</th>
					<th ng-click="orderByMe('category')">Category</th>
					<th ng-click="orderByMe('price')">Price (INR)</th>
					<th>Image</th>
					<th>&#160</th>
				</tr>
				<tr ng-repeat="x in names | orderBy:myOrderBy | filter:test">
					<td>{{x.id}}</td>
					<td>{{x.name}}</td>
					<td>{{x.brand}}</td>
					<td>{{x.category}}</td>
					<td>{{x.price}} Rs</td>
					<td><img src="${cp}/resources/images/productimages/{{x.id }}.jpg" height = "150" width = "150"/></td>
					<td>
						<div>
				<%-- 			<input type="button"  href="${cp}/viewone/{{x.id}}" value="View"/> --%>
							<a href="${cp}/viewone/{{x.id}}" class="btn btn-primary">View Details <span class="glyphicon glyphicon-chevron-right"></span></a>
							&#160;
							<c:choose>
								<c:when test="${(isUser)}">
									<a href="<c:url value="${CP }/cart"/>"
										class="btn btn-primary">ADD TO CART <span
											class="glyphicon glyphicon-shopping-cart"></span></a>

								</c:when>
								<c:otherwise>
									<a href="<c:url value="${CP }/login"/>"
										class="btn btn-primary">Login to Purchase<span
											class="glyphicon glyphicon-shopping-cart"></span></a>



								</c:otherwise>
							</c:choose>
							<%-- <a href="${cp}/cart" class="btn btn-primary">Add to Cart <span class="glyphicon glyphicon-shopping-cart"></span></a> --%>
							<%-- <button type="button" class="btn btn-primary" href="${CP}/cart">Add
								to Cart</button> --%>
						</div>
					</td>
				</tr>
			</thead>
		</table>
	</div>
</div>
<br>
<br>
<%@ include file="footer.jsp"%>
<script src="resources/js/dataservice.js"></script>