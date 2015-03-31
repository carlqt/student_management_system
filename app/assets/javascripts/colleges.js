var app = angular.module("MyApp", []);

app.controller("CollegesController", function($scope, $http) {
  $http.get('http://localhost:3000/colleges.json').success(function (data) {
    $scope.colleges = data; // response data
    console.log(data);
  }).error(function (data) {
    console.log("BLOG failed");
  });
});
