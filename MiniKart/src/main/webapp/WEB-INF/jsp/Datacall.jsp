<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="resources/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="resources/js/angular.min.js"></script>
<script src="resources/js/app.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body ng-app="App" ng-controller="TodoCtrl">
  <ul>
    <li ng-repeat="todo in todos">
      {{todo.text}} - <em>{{todo.done}}</em>
    </li>
  </ul>
</body>

</html>