

var app = angular.module("getStringCategory", []);
var modelAttributeName = eval('('+'${categoryList}'+')');
app.controller("getStringCategoryController", function($scope) {
  $scope.getcategory = modelAttributeName;
});
