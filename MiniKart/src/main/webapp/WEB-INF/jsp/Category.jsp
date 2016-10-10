
<body>
<form:form method="POST" action="add/categories" modelAttribute="category">

<label>CategoryName</label>
<form:input path="categoryName"/>
<label>CategoryDescription</label>
<form:input path="categoryDescription"/>
<input type="submit" value="submit"/>
</form:form>
</body>
</html>