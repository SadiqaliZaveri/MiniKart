<%@include file="Header.jsp" %>
      



<blockquote><h3>Admin Panel</h3></blockquote>   
<!-- CATEGORY FORM -->
<hr>
<blockquote><h4>Add Category</h4></blockquote>
<div class="container-fluid">
<form:form cssClass="form-inline" method="POST" action="add/categories" modelAttribute="category">
<div class="form-group tenpxtop">
<label for="Category Name tenpxtop">Category Name:</label>
<form:input path="categoryName" cssClass="form-control" id="Category Name"/>
<form:errors path="categoryName" cssClass="form-control"/>
</div>
<div class="form-group tenpxtop">
<label class="labelspace" for="Category Description">Category Description:</label>
<form:input path="categoryDescription" cssClass="form-control" id="Category Description"/>
<form:errors path="categoryDescription" cssClass="form-control"/>
</div>
<div class="form-group tenpxtop">
<button type="submit" class="btn btn-warning">Submit</button>
</div>
<div class="form-group tenpxtop">
<button href="#categoryModal" data-toggle="modal" type="button" class="btn btn-success">Check</button>
</div>
</form:form>
</div>

<!-- SUB-CATEGORY FORM -->
<hr>
<blockquote><h4>Add Sub-Category</h4></blockquote>
<div class="container-fluid">
<form:form cssClass="form-inline" method="POST" action="add/subcategories" modelAttribute="subCategory">
<div class="form-group tenpxtop">
<label for="Sub-Category Name">Sub-Category Name:</label>
<form:input path="subCategoryName" cssClass="form-control" id="Sub-Category Name" />
</div>
<div class="form-group tenpxtop">
<label class="labelspace">Select Category:</label>
<form:select cssClass="form-control" path="category.categoryName" items="${categoryListNormal}" itemValue="categoryName" itemLabel="categoryName"> 
</form:select>
</div>
<div class="form-group tenpxtop">
<button type="submit" class="btn btn-warning">Submit</button>
</div>
<div class="form-group tenpxtop">
<button href="#subCategoryModal" data-toggle="modal" type="button" class="btn btn-success">Check</button>
</div>
</form:form>
</div>

<!-- SUPPLIER FORM -->
<hr>
<blockquote><h4>Add Supplier</h4></blockquote>
<div class="container-fluid">
<form:form cssClass="form-inline" method="POST" action="add/suppliers" modelAttribute="supplier">
<div class="form-group tenpxtop">
<label for="Supplier Name">Supplier Name:</label>
<form:input path="supplierName" cssClass="form-control" id="Supplier Name"/>
</div>
<div class="form-group tenpxtop">
<label class="labelspace" for="Supplier Description">Supplier Description:</label>
<form:input path="supplierDescription" cssClass="form-control" id="Supplier Description"/>
</div>
<div class="form-group tenpxtop">
<button type="submit" class="btn btn-warning">Submit</button>
</div>
<div class="form-group tenpxtop">
<button href="#supplierModal" data-toggle="modal" type="button" class="btn btn-success">Check</button>
</div>
</form:form>
</div>


<!-- PRODUCT FORM -->
<hr>
<blockquote><h4>Add Product</h4></blockquote>
<div class="container-fluid">
<form:form cssClass="form-inline" method="POST" action="add/products" modelAttribute="product">

<div class="form-group tenpxtop" >
<label for="Product Name">Product Name:</label>
<form:input path="productName" cssClass="form-control" id="Product Name" />
</div>
<div class="form-group tenpxtop" >
<label for="Product Stock">Product Stock:</label>
<form:input path="productStock" cssClass="form-control" id="Product Stock" />
</div>
<div class="form-group tenpxtop" >
<label class="labelspace">Select Category:</label>
<form:select cssClass="form-control" path="category.categoryName" items="${categoryListNormal}" itemValue="categoryName" itemLabel="categoryName"> 
</form:select>
</div>
<div class="form-group tenpxtop" >
<label class="labelspace">Select Sub-Category:</label>
<form:select cssClass="form-control" path="subCategory.subCategoryName" items="${subCategoryListNormal}" itemValue="subCategoryName" itemLabel="subCategoryName"> 
</form:select>
</div>
<div class="form-group tenpxtop" >
<label class="labelspace">Select Supplier:</label>
<form:select cssClass="form-control" path="supplier.supplierName" items="${supplierListNormal}" itemValue="supplierName" itemLabel="supplierName"> 
</form:select>
</div>

<div class="form-group tenpxtop" >
<label for="Image">Upload Image:</label>
<form:input path="productImage" type="file" onchange="readURL(this);" cssClass="form-control" id="Image" accept="image/x-png, image/jpeg"/>
<img id="Tempimg" class="tenpxtop" src="resources/images/altimg.png" alt="your image" width="350" height="350" alt="Error" />
</div>

<div class="form-group tenpxtop" >
<button type="submit" class="btn btn-warning">Submit</button>
</div>
<div class="form-group tenpxtop" >
<button href="#productModal" data-toggle="modal" type="button" class="btn btn-success">Check</button>
</div>
</form:form>
</div>

<%-- <hr>
<blockquote><h4>Add ProductSpecification</h4></blockquote>
<div class="container-fluid">
<form:form cssClass="form-inline" method="POST" action="add/productspecification" modelAttribute="productSpecification">
<div class="form-group">
<label class="labelspace">Select ProductId:</label>
<form:select cssClass="form-control" path="Product.productId" items="${productListNormal}" itemValue="productId" itemLabel="productId"> 
</form:select>
</div>
<div class="form-group">
<button type="submit" class="btn btn-warning">Submit</button>
</div>
<div class="form-group">
<button href="#productSpecificationModal" data-toggle="modal" type="button" class="btn btn-success">Check</button>
</div>
</form:form>
</div> --%>


<!-- ALL MODALS INCLUDED HERE   -->

<%@include file="CategoryListModal.jsp" %>

<%@include file="SubCategoryListModal.jsp" %>

<%@include file="SupplierListModal.jsp" %>

<%@include file="ProductListModal.jsp" %>


<script type="text/javascript">
// MODULE AND CONTROLLER - ANGULARJS - RETRIEVAL OF DATA VIA JSON LISTS
var app = angular.module('Caller', ['angularUtils.directives.dirPagination']);
var modelAttributeName = ${categoryListJson};
app.controller('CallerController', function($scope) {
  $scope.getCategory = modelAttributeName;
  $scope.getSubCategory = ${subCategoryListJson};
  $scope.getSupplier = ${supplierListJson};
  $scope.getProduct = ${productListJson};
  $scope.getProductSpecification = ${productSpecificationListJson};
  $scope.sort = function(keyname){
      $scope.sortKey = keyname;   //set the sortKey to the param passed
      $scope.reverse = !$scope.reverse; //if true make it false and vice versa
  }
});

// DISPLAY IMAGE ON SELECTION
function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#Tempimg')
                .attr('src', e.target.result)
                
        };

        reader.readAsDataURL(input.files[0]);
    }
}


</script>

<!--      FOOTER STARTS     -->

<%@include file="Footer.jsp" %>		

<!--      FOOTER ENDS     -->
          


