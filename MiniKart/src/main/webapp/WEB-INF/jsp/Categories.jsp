<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>  
    <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="resources/js/jquery-3.1.1.min.js"></script>    
<script type="text/javascript" src="resources/js/angular.min.js"></script>
<script type="text/javascript" src="resources/js/getting.data.js"></script>
<script type="text/javascript"> var getcategorylist = '${categoryList}';</script>
<title>Insert title here</title>
</head>
<body>
        
<form:form method="POST" action="add/categories" modelAttribute="category">
<label>CategoryName</label>
<form:input path="categoryName"/>
<label>CategoryDescription</label>
<form:input path="categoryDescription"/>
<input type="submit" value="submit"/>
</form:form>



    
    
<div ng-app="getStringCategory" ng-controller="getStringCategoryController">
  <ul>
    <li ng-repeat="c in getcategory track by $index">
        {{c.categoryName}}
    </li>
  </ul>
</div>
<!--
<script type="text/javascript">var app = angular.module('getStringCategory', []);
var modelAttributeName = ${categoryList};
app.controller('getStringCategoryController', function($scope) {
  $scope.getcategory = modelAttributeName;
});</script>
-->
</body>
</html>