<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>FORM</title>
      <script type="text/javascript" src="resources/js/jquery-3.1.1.min.js"></script>
      <script src="resources/js/angular.min.js"></script>

</head>
<body>
<form:form method="POST" action="add/categories" modelAttribute="category">
<form:input path="categoryId" hidden="true"/>
<label>Category Name</label>
<form:input path="categoryName"/>
<label>Category Description</label>
<form:input path="categoryDescription"/>
<input type="submit" value="Submit"/>
</form:form>
<div ng-app="myApp" ng-controller="myCtrl">
<table>
<tbody>
<tr>
<th>CategoryId</th>
<th>CategoryName</th>
<th>CategoryDesc</th>
<th>EDIT|DELETE</th>
</tr>
<tr ng-repeat="x in abc">
      <td>{{x.categoryId}}</td>
      <td>{{x.categoryName}}</td>
      <td>{{x.categoryDescription}}</td>
      <td><a href ="editCategory-{{x.categoryId}}">EDIT |</a><a href ="delete-{{x.categoryId}}">DELETE</a></td>
</tr>
</tbody>
</table>
</div>
   
</div>

<script>
var app = angular.module('myApp', []);
 app.controller('myCtrl', function($scope) {
    $scope.abc = ${listCategory};
 });
</script> 
</body>
</html>