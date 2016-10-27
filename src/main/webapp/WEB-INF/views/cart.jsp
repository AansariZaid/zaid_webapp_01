<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="linking.jsp"%>
<%@ include file="navigator.jsp"%>
<script src="/resources/js/product.js?v3"></script>
<script src="/resources/js/dataservice.js"></script>
<!-- My -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="container-wrapper">
	<div class="container">

		<section class="container" ng-app="myApp">

			<div ng-controller="cartCtrl" ng-init="initCartId('${cartId}')">
					<div class="panel panel-default">
						<div class="panel-heading">Your Shopping Summary</div>
						<div class="panel-body">Please Make Sure All the Products Are of Exact Quantity As You have Ordered</div>
					</div>
				<table class="table table-hover">
					<tr>
						<th>Product Name</th>
						<th>Price</th>
						<th>Ordered Quantity</th>
						<th>Total</th>
						<th>&#160;</th>
					</tr>
					<tr ng-repeat="item in cart.cartItems">
						<td>{{item.product.name}}</td>
						<td>{{item.product.price}}</td>
						<td>{{item.productQuantity}}</td>
						<td>{{item.totalPrice}}</td>
						<td><a href="#" class="btn btn-primary"
							ng-click="removeFromCart(item.product.productId)"><span
								class="glyphicon glyphicon-remove"></span> Remove From Cart</a></td>
					</tr>
					<tr>
						<th></th>
						<th></th>
						<th>Grand Total</th>
						<th>{{calGrandTotal()}}</th>
						<th></th>
					</tr>
				</table>

				<div>
					<a class="btn btn-danger pull-left" ng-click="clearCart()"><span
						class="glyphicon glyphicon-remove-sign"></span> Clear Cart</a> <a
						href="memberShip" class="btn btn-primary pull-right"><span
						class="glyphicon glyphicon-log-out"></span> Check out</a>

				</div>

			</div>
		</section>