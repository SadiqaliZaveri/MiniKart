<%@include file="Header.jsp" %>
      



<blockquote><h3>Admin Panel</h3></blockquote>   
<hr>
<blockquote><h4>Add Category</h4></blockquote>
<form:form method="POST" action="add/categories" modelAttribute="category">
<div class="container-fluid">
<div class="row">
<div class="col-sm-3 col-xs-6"><label for="Category Name">Category Name:</label><form:input path="categoryName" class="form-control" id="Category Name"/></div>
<div class="col-sm-3 col-xs-12 "><label for="Category Description">Category Description:</label><form:input path="categoryDescription" class="form-control" id="Category Description"/></div>
<div class="col-sm-1 col-xs-12"><label style="visibility: hidden;">Submit Button:</label><button type="submit" class="btn btn-warning">Submit</button></div>
</div>
</div>
</form:form>


<hr>
<blockquote><h4>Add Sub-Category</h4></blockquote>
<form:form method="POST" action="add/subcategories" modelAttribute="subCategory">
<!-- <div ng-app="getStringCategory" ng-controller="getStringCategoryController"> -->
<div class="container-fluid">
<div class="row">
<div class="col-sm-3 col-xs-6">
<label for="Sub-Category Name">Sub-Category Name:</label>
<form:input path="subCategoryName" class="form-control" id="Sub-Category Name" /></div>
<div class="col-sm-3 col-xs-12 "><label>Select Category:</label><form:select cssClass="form-control" path="category.categoryName" items="${categoryListNormal}" itemValue="categoryName" itemLabel="categoryName"> 
</form:select></div>
<div class="col-sm-1 col-xs-12 "><label style="visibility: hidden;">Submit Button:</label><button type="submit" class="btn btn-warning">Submit</button></div>
</div>
</div>
<!-- </div> -->
</form:form>

<hr>
<blockquote><h4>Add Product</h4></blockquote>
<form:form method="POST" action="add/products" modelAttribute="product">
<!-- <div ng-app="getStringCategory" ng-controller="getStringCategoryController"> -->
<div class="container-fluid">
<div class="row">
<div class="col-sm-3 col-xs-6">
<label for="Product Name">Product Name:</label>
<form:input path="productName" class="form-control" id="Product Name" /></div>
<div class="col-sm-3 col-xs-12 ">
<label>Select Category:</label>
<%-- <form:form method="POST" action="add/subcategories" modelAttribute="subCategory"> --%>
<form:select cssClass="form-control" path="category.categoryName" items="${categoryListNormal}" itemValue="categoryName" itemLabel="categoryName"> 
</form:select>
<%-- </form:form> --%>
</div>
<div class="col-sm-3 col-xs-12 ">
<label>Select Sub-Category:</label>
<form:select cssClass="form-control" path="subCategory.subCategoryName" items="${subCategoryListNormal}" itemValue="subCategoryName" itemLabel="subCategoryName"> 
</form:select></div>
<div class="col-sm-1 col-xs-12 ">
<label style="visibility: hidden;">Submit Button:</label>
<button type="submit" class="btn btn-warning">Submit</button></div>
</div>
</div>
<!-- </div> -->
</form:form>
   
    
  
  
  
  
  
  




    
 

<%-- <c:forEach var="SC" items="${subCategoryListNormal}" > --%>
<%--    Item <c:out value="${SC.subCategoryName}"/><p> --%>
<%-- </c:forEach> --%>

<script type="text/javascript">
var app = angular.module('Category', []);
var modelAttributeName = ${categoryListJson};
app.controller('CategoryController', function($scope) {
  $scope.getcategory = modelAttributeName;
});

var app = angular.module('SubCategory', []);
var modelAttributeName = ${subCategoryListJson};
app.controller('SubCategoryController', function($scope) {
  $scope.getsubcategory = modelAttributeName;
});
</script>

<!--      FOOTER STARTS     -->

<%@include file="Footer.jsp" %>
		
	     
<!--      FOOTER ENDS     -->
          
      </div>
<!--    PAGE CONTENT WRAPPER ENDS   -->

    </div>
<!--    SIDE BAR WRAPPER ENDS  -->

