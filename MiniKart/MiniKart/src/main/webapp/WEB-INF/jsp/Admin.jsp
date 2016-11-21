<%@include file="Header.jsp" %>
      
<div class="container">

${sessionScope.Error}
<c:set var="Error" value="" scope="session" />
<blockquote>
  <h3>Admin Panel </h3></blockquote>
  
  
  
 <hr>
<blockquote>
  <h4>Add Today's Message</h4></blockquote>
<div class="container-fluid">
  <form:form id="categoryform" cssClass="form-inline" method="POST" action="add/todaysmessage" modelAttribute="todaysMessage" onsubmit="return validate(this)">
    <div class="form-group tenpxtop">
      <label for="todaysMessage">Today's Message:</label>
      
      <form:textarea path="message" cssClass="form-control" id="todaysMessage" cols="50" maxlength="255"/>
    </div>
    <div class="form-group tenpxtop">
      <button type="submit" class="btn btn-warning"><i class="glyphicon glyphicon-ok"> Submit</i></button>
    </div>
    <div class="form-group tenpxtop">
      <button href="#todaysMessageModal" data-toggle="modal" type="button" class="btn btn-success"><i class="glyphicon glyphicon-th-list"> Manage</i></button>
    </div>
  </form:form>
  
  
</div> 
 
 
  
<!-- User FORM -->
<hr>
<blockquote>
  <h4>User Management</h4></blockquote>
<div class="container-fluid">
    <div class="form-group tenpxtop">
      <button href="#userListModal" data-toggle="modal" type="button" class="btn btn-success"><i class="glyphicon glyphicon-th-list"> Manage</i></button>
    </div>
</div>

 
  
<!-- CATEGORY FORM -->
<hr>
<blockquote>
  <h4>Add Category</h4></blockquote>
<div class="container-fluid">
  <form:form id="categoryform" cssClass="form-inline" method="POST" action="add/categories" modelAttribute="category" onsubmit="return validate(this)">
    <div class="form-group tenpxtop">
      <label for="categoryName">Category Name:</label>
      <form:input path="categoryName" cssClass="form-control" id="categoryName" maxlength="255"/>
    </div>
    <div class="form-group tenpxtop">
      <label class="labelspace" for="categoryDescription">Category Description:</label>
      <form:input path="categoryDescription" cssClass="form-control" id="categoryDescription" maxlength="255"/>
    </div>
    <div class="form-group tenpxtop">
      <button type="submit" class="btn btn-warning"><i class="glyphicon glyphicon-ok"> Submit</i></button>
    </div>
    <div class="form-group tenpxtop">
      <button href="#categoryModal" data-toggle="modal" type="button" class="btn btn-success"><i class="glyphicon glyphicon-th-list"> Manage</i></button>
    </div>
  </form:form>
</div>

<!-- SUB-CATEGORY FORM -->
<hr>
<blockquote>
  <h4>Add Sub-Category</h4></blockquote>
<div class="container-fluid">
  <form:form id="subcategoryForm" cssClass="form-inline" method="POST" action="add/subcategories" modelAttribute="subCategory" onsubmit="return validate(this)">
    <div class="form-group tenpxtop">
      <label for="Sub-Category Name">Sub-Category Name:</label>
      <form:input path="subCategoryName" cssClass="form-control" id="Sub-Category Name" maxlength="255"/>
    </div>
    <div class="form-group tenpxtop">
      <label class="labelspace">Select Category:</label>
      <form:select cssClass="form-control" path="category.categoryName" items="${categoryListNormal}" itemValue="categoryName" itemLabel="categoryName">
      </form:select>
    </div>
    <div class="form-group tenpxtop">
      <button type="submit" class="btn btn-warning"><i class="glyphicon glyphicon-ok"> Submit</i></button>
    </div>
    <div class="form-group tenpxtop">
      <button href="#subCategoryModal" data-toggle="modal" type="button" class="btn btn-success"><i class="glyphicon glyphicon-th-list"> Manage</i></button>
    </div>
  </form:form>
</div>

<!-- SUPPLIER FORM -->
<hr>
<blockquote>
  <h4>Add Supplier</h4></blockquote>
<div class="container-fluid">
  <form:form id="supplierForm" cssClass="form-inline" method="POST" action="add/suppliers" modelAttribute="supplier" onsubmit="return validate(this)">
    <div class="form-group tenpxtop">
      <label for="Supplier Name">Supplier Name:</label>
      <form:input path="supplierName" cssClass="form-control" id="Supplier Name" maxlength="255"/>
    </div>
    <div class="form-group tenpxtop">
      <label class="labelspace" for="Supplier Description">Supplier Description:</label>
      <form:input path="supplierDescription" cssClass="form-control" id="Supplier Description" maxlength="255"/>
    </div>
    <div class="form-group tenpxtop">
      <button type="submit" class="btn btn-warning"><i class="glyphicon glyphicon-ok"> Submit</i></button>
    </div>
    <div class="form-group tenpxtop">
      <button href="#supplierModal" data-toggle="modal" type="button" class="btn btn-success"><i class="glyphicon glyphicon-th-list"> Manage</i></button>
    </div>
  </form:form>
</div>


<!-- PRODUCT FORM -->
<hr>
<blockquote>
  <h4>Add Product</h4></blockquote>
<div class="container-fluid">
  <form:form id="productForm" cssClass="form" method="POST" action="add/products" modelAttribute="product" enctype="multipart/form-data" onsubmit="return validate(this)">

    <div class="form-group tenpxtop">
      <label for="Product Name">Product Name:</label>
      <form:input path="productName" cssClass="form-control" id="Product Name" maxlength="255"/>
    </div>
    <div class="form-group tenpxtop">
      <label for="Product Description">Product Description</label>
      
      <form:textarea path="productDescription" cssClass="form-control" id="Product Description" cols="50" maxlength="255"/>
    </div>
    <div class="form-group tenpxtop">
      <label class="labelspace" for="Product Stock">Product Stock:</label>
      <form:input path="productStock" cssClass="form-control" id="Product Stock" />
    </div>
    <div class="form-group tenpxtop">
      <label class="labelspace" for="Product Price">Product Price:</label>
      <form:input path="productPrice" cssClass="form-control" id="Product Price" />
    </div>
    <div class="form-group tenpxtop">
      <label class="labelspace" for="Product DPrice">Product Discount Price:</label>
      <form:input path="productDiscountPrice" cssClass="form-control" id="Product DPrice" />
    </div>
    <div class="form-group tenpxtop">
      <label class="labelspace">Select Category:</label>
      <form:select cssClass="form-control" path="category.categoryName" items="${categoryListNormal}" itemValue="categoryName" itemLabel="categoryName">
      </form:select>
    </div>
    <div class="form-group tenpxtop">
      <label class="labelspace">Select Sub-Category:</label>
      <form:select cssClass="form-control" path="subCategory.subCategoryName" items="${subCategoryListNormal}" itemValue="subCategoryName" itemLabel="subCategoryName">
      </form:select>
    </div>
    <div class="form-group tenpxtop">
      <label class="labelspace">Select Supplier:</label>
      <form:select cssClass="form-control" path="supplier.supplierName" items="${supplierListNormal}" itemValue="supplierName" itemLabel="supplierName">
      </form:select>
    </div>

    <div class="form-group tenpxtop">
    <div class="input-group">
      <label class="labelspace" for="Image">Upload Image:</label>

<form:input path="productImage" type="file" onchange="readURL(this);" cssClass="form-control" id="Image" accept="image/x-png, image/jpeg" />
<a id="del" class="form-control pointer colorhover" ><i class="glyphicon glyphicon-remove " ></i></a> </div>
      
      <div class="thumbnail tenpxtop" style="width:300px">
      <div class="imgholder">
      <img id="Tempimg" class="img-responsive center-block" src="resources/images/altimg.png" alt="your image" alt="Error" />
      </div></div>
    </div>
   
      <div class="form-group tenpxtop">
        <button type="submit" class="btn btn-warning"><i class="glyphicon glyphicon-ok"> Submit</i></button>
      </div>
      <div class="form-group tenpxtop">
        <button href="#productModal" data-toggle="modal" type="button" class="btn btn-success"><i class="glyphicon glyphicon-th-list"> Manage</i></button>
      </div>
    
  </form:form>
</div>





<!-- ALL MODALS INCLUDED HERE   -->

<%@include file="CategoryListModal.jsp" %>

<%@include file="SubCategoryListModal.jsp" %>

<%@include file="SupplierListModal.jsp" %>

<%@include file="ProductListModal.jsp" %>

<%@include file="TodaysMessageModal.jsp" %>

<%@include file="UserListModal.jsp" %>

</div>
<script type="text/javascript">

$("#wrapper").toggleClass("toggled");

//scroll back to same position
window.scrollTo(0, getCookie("scroll"));


//MODULE AND CONTROLLER - ANGULARJS - RETRIEVAL OF DATA VIA JSON LISTS
var app = angular.module('Caller', ['angularUtils.directives.dirPagination']).filter('totalSumPriceQty', function () {
    return function (data, key1, key2) {
        debugger;
        if (typeof (data) === 'undefined' && typeof (key1) === 'undefined' && typeof (key2) === 'undefined') {
            return 0;
        }
        var sum = 0;
        for (var i = 0; i < data.length; i++) {
            sum = sum + (parseInt(data[i][key1]) * parseInt(data[i][key2]));
        }
        return sum;
    }
});
app.controller('CallerController', function($scope, $filter) {
  $scope.getCategory = ${categoryListJson};
  $scope.getSubCategory = ${subCategoryListJson};
  $scope.getSupplier = ${supplierListJson};
  $scope.getProduct = ${productListJson};
  $scope.getTodaysMessage = ${todaysMessageListJson};
  $scope.getUser = ${userListJson};
  
  $scope.sort = function(keyname) {
    $scope.sortKey = keyname; //set the sortKey to the param passed
    $scope.reverse = !$scope.reverse; //if true make it false and vice versa
  };
  
  $scope.getTotal = function(){
	  var total = 0;
	  for(var i = 0; i<$scope.getProduct.length; i++)
		  {
		   var product = $scope.getProduct[i];
		   total += (product.productPrice * product.productStock);
		  }
	  return total;
  };
});

// DISPLAY IMAGE ON SELECTION
function readURL(input) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();

    reader.onload = function(e) {
      $('#Tempimg')
        .attr('src', e.target.result)

    };

    reader.readAsDataURL(input.files[0]);
  }
};

// Front End Validation
function validate(formid) {

  var von = 0;
  var elements = formid.querySelectorAll('input,textarea');

  for (i = 0; i < elements.length; i++) {

    if (elements[i].value == "") {
	 
      elements[i].setAttribute('style', 'border:2px solid #f65819');
      
      if(elements[i].previousElementSibling.innerHTML.includes("<span style=\"color:#f65819\">Please Fill</span>"))
    	  {
    	  
    	  }
      else
    	  {
    	  elements[i].previousElementSibling.innerHTML = "<span style=\"color:#f65819\">Please Fill</span> " + elements[i].previousElementSibling.innerHTML;
    	  }
      
      var von = 1;
    }
   
  }
  if (von == 1) {
    return false;
  }

  return true;
};

// REMOVE IMAGE ON X BUTTON 
document.getElementById('del').onclick = function() {
  var file = document.getElementById("Image");
  file.value = file.defaultValue;
  var img = document.getElementById("Tempimg");
  img.src = "resources/images/altimg.png";
 
};

// Function to get & create cookie for scroll of page.
function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for(var i = 0; i <ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0)==' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length,c.length);
        }
    }
    return "";
};

// Scroll Cookie

$(window).on('scroll',function(){
	 var y = window.pageYOffset;
	 document.cookie = "scroll="+y;
	 
});


</script>

<!--      FOOTER STARTS     -->

<%@include file="Footer.jsp" %>		

<!--      FOOTER ENDS     -->
          


