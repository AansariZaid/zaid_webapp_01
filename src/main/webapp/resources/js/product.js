var app = angular.module('myApp', []);

//app.controller('productCtrl', function($scope, $http) {
//	$http.get("/webapp_01/viewall/all").then(function(response) {
//		$scope.myData = response.data;
//	});
//
//	$scope.orderByMe = function(x) {
//		$scope.myOrderBy = x;
//	}
//});

app.controller("cartCtrl", function($scope, $http) {
	$scope.refreshCart = function() {
		$http.get('/webapp_01/cart' + $scope.cartId).success(
				function(data) {
					$scope.cart = data;
				});
	};

	/*
	 * $scope.clearCart = function(){ $http.delete('/rest/cart/' +
	 * $scope.cartId).success($scope.refreshCart()); };
	 */

	$scope.initCartId = function(cartId) {
		$scope.cartId = cartId;
		$scope.refreshCart(cartId);
	};

	$scope.addToCart = function(id) {
		alert(id);
		$http.put('/webapp_01/cart/add' +id).success(
				function() {
					alert('Product successfully added to the cart!');
				});
	};

	$scope.removeFromCart = function(id) {
		$http.put('/webapp_01/cart/remove' + id).success(
				function(data) {
					$scope.refreshCart();
				});
	};

	$scope.calGrandTotal = function() {
		var grandTotal = 0;

		for (var i = 0; i < $scope.cart.cartItems.length; i++) {
			grandTotal += $scope.cart.cartItems[i].totalPrice;
		}

		return grandTotal;
	}
});