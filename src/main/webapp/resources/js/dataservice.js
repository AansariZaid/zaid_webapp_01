angular.module('myApp', []).controller('myCtrl', function($scope, $http) {
	$http.get("/webapp_01/viewall/all").then(function(response) {
		$scope.names = response.data
	});
	$scope.orderByMe = function(x) {
		$scope.myOrderBy = x;
	}
});