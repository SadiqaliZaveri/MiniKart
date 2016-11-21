<%@include file="Header.jsp" %>

  




<div class="container">
  <div class="row">
    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad">
      <div class="panel panel-info" style="border-color: #f65819;">
        <div class="panel-heading" style="background-color:#f65819;">
          <h3 class="panel-title" style="color:#263238">User Information</h3>
        </div>
        <div class="panel-body">
          <div class="row">
            <div class="col-md-3 col-lg-3 " align="center"> 
            <div ng-if="getUser.gender == 'Male'">
            <img alt="User Pic" src="resources/images/man.png" class="img-circle img-responsive">
            </div>
            <div ng-if="getUser.gender != 'Male'">
            <img alt="User Pic" src="resources/images/woman.png" class="img-circle img-responsive">
            </div>
            
            </div>
            <div class=" col-md-9 col-lg-9 ">
              <table class="table table-user-information" style="text-transform: capitalize;">
                <tbody>
                  <tr>
                    <td>First Name</td>
                    <td>:</td>
                    <td>{{getUser.firstName}}</td>
                  </tr>
                  <tr>
                    <td>Last Name</td>
                    <td>:</td>
                    <td>{{getUser.lastName}}</td>
                  </tr>
                  <tr>
                    <td>Date of Joining</td>
                    <td>:</td>
                    <td>{{getUser.userCreationDate}}</td>
                  </tr>
                  <tr>
                    <tr>
                      <td>Gender</td>
                      <td>:</td>
                      <td>{{getUser.gender}}</td>
                    </tr>
                    
                    <tr>
                      <td>Email</td>
                      <td>:</td>
                      <td><a href="mailto:{{getUser.emailId}}">{{getUser.emailId}}</a></td>
                    </tr>
                    <tr>
                      <td>Phone Number</td>
                      <td>:</td>
                      <td>{{getUser.contactNo}}</td>
                    </tr>
                </tbody>
              </table>
             
            </div>
          </div>
        </div>
        <div class="panel-footer">
          
        </div>

      </div>
    </div>
 </div>
 <sec:authorize access="hasRole('ROLE_USER')">
  <div class="row">
  
    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad">
      <div class="panel panel-info" style="border-color: #f65819;">
        <div class="panel-heading" style="background-color:#f65819;">
          <h3 class="panel-title" style="color:#263238; cursor: pointer;" data-toggle="collapse" data-target="#Shipping">Shipping Address</h3>
        </div>
        <div id="Shipping" class="collapse">
        <div class="panel-body">
          <div class="row">
           
            <div class=" col-md-9 col-lg-9 ">
              <table class="table table-user-information" style="text-transform: capitalize;">
                <tbody>
                  <tr>
                    <td>City</td>
                    <td>:</td>
                    <td>{{getShipping.city}}</td>
                  </tr>
                  <tr>
                    <td>State</td>
                    <td>:</td>
                    <td>{{getShipping.state}}</td>
                  </tr>
                  <tr>
                    <td>Pincode</td>
                    <td>:</td>
                    <td>{{getShipping.pinCode}}</td>
                  </tr>
                  <tr>
                    <tr>
                      <td>District</td>
                      <td>:</td>
                      <td>{{getShipping.district}}</td>
                    </tr>
                    
                    <tr>
                      <td>Landmark</td>
                      <td>:</td>
                      <td>{{getShipping.landmark}}</td>
                    </tr>
                    <tr>
                      <td>Address</td>
                      <td>:</td>
                      <td>{{getShipping.address}}</td>
                    </tr>
                </tbody>
              </table>
             
            </div>
          </div>
        </div>
        
        <div class="panel-footer">
          
        </div>
</div>
      </div>
      
      
    </div>
  </div>
  
  
  <div class="row">
  
    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad">
      <div class="panel panel-info" style="border-color: #f65819;">
        <div class="panel-heading" style="background-color:#f65819;">
          <h3 class="panel-title" style="color:#263238; cursor: pointer;" data-toggle="collapse" data-target="#Supplier">Billing Address </h3>
        </div>
        <div id="Supplier" class="collapse">
        <div class="text-center" ng-if="getBilling.city =='' && getBilling.state ==''">Is Empty</div>
        <div ng-if="getBilling.city !='' && getBilling.state !=''">
        <div class="panel-body">
        
        
          <div class="row">
           
            <div class=" col-md-9 col-lg-9 ">
              <table class="table table-user-information" style="text-transform: capitalize;">
                <tbody>
                  <tr>
                    <td>City</td>
                    <td>:</td>
                    <td>{{getBilling.city}}</td>
                  </tr>
                  <tr>
                    <td>State</td>
                    <td>:</td>
                    <td>{{getBilling.state}}</td>
                  </tr>
                  <tr>
                    <td>Pincode</td>
                    <td>:</td>
                    <td>{{getBilling.pinCode}}</td>
                  </tr>
                  <tr>
                    <tr>
                      <td>District</td>
                      <td>:</td>
                      <td>{{getBilling.District}}</td>
                    </tr>
                    
                    <tr>
                      <td>Landmark</td>
                      <td>:</td>
                      <td>{{getBilling.Landmark}}</td>
                    </tr>
                    <tr>
                      <td>Address</td>
                      <td>:</td>
                      <td>{{getBilling.address}}</td>
                    </tr>
                </tbody>
              </table>
             
            </div>
          </div>
        </div>
        <div class="panel-footer">
          
        </div>

      </div>
      
    </div>
    </div>
  </div>
  </div>
 </sec:authorize>

 <sec:authorize access="hasRole('ROLE_SUPPLIER')">
  <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad">
      <div class="panel panel-info" style="border-color: #f65819;">
        <div class="panel-heading" style="background-color:#f65819;">
          <h3 class="panel-title" style="color:#263238; cursor: pointer;" data-toggle="collapse" data-target="#Supplier">Supplier Details</h3>
        </div>
        <div id="Supplier" class="collapse">
        <div class="panel-body">
          <div class="row">
           
            <div class=" col-md-9 col-lg-9 ">
              <table class="table table-user-information" style="text-transform: capitalize;">
                <tbody>
                <tr>
                    <td>Name</td>
                    <td>:</td>
                    <td>{{getSupplier.supplierName}}</td>
                  </tr>
                  <tr>
                    <td>Description</td>
                    <td>:</td>
                    <td>{{getSupplier.supplierDescription}}</td>
                  </tr>
                  <tr>
                    <td>Company Url</td>
                    <td>:</td>
                    <td>{{getSupplier.companyUrl}}</td>
                  </tr>
                  <tr>
                    <td>City</td>
                    <td>:</td>
                    <td>{{getSupplier.city}}</td>
                  </tr>
                  <tr>
                    <td>State</td>
                    <td>:</td>
                    <td>{{getSupplier.state}}</td>
                  </tr>
                  <tr>
                    <td>Pincode</td>
                    <td>:</td>
                    <td>{{getSupplier.pinCode}}</td>
                  </tr>
                  <tr>
                    <tr>
                      <td>District</td>
                      <td>:</td>
                      <td>{{getSupplier.district}}</td>
                    </tr>
                    
                    <tr>
                      <td>Landmark</td>
                      <td>:</td>
                      <td>{{getSupplier.landmark}}</td>
                    </tr>
                    <tr>
                      <td>Address</td>
                      <td>:</td>
                      <td>{{getSupplier.address}}</td>
                    </tr>
                </tbody>
              </table>
             
            </div>
          </div>
        </div>
        
        <div class="panel-footer">
          
        </div>
</div>
      </div>
      
    </div>
    
    
<hr>
<blockquote style="background-color:#f65819; cursor:pointer;" data-toggle="collapse" data-target="#addProduct">
  <h4 class="text-center">Add Product</h4></blockquote>
<div class="container-fluid">
  <form:form id="productForm" cssClass="form" method="POST" action="add/products" modelAttribute="product" enctype="multipart/form-data" onsubmit="return validate(this)">
<div id="addProduct" class="collapse">
    <div class="form-group tenpxtop">
      <label for="Product Name" >Product Name:</label>
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
      <form:select cssClass="form-control" path="supplier.supplierName" itemLabel="supplierName">
      <form:option value="{{getSupplier.supplierName}}" label="{{getSupplier.supplierName}}"/>
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
    </div>
  </form:form> 
</div>


<%@include file="ProductListModal.jsp" %>
 </sec:authorize>
 </div> 


<script>
$("#wrapper").toggleClass("toggled");

var app = angular.module('Caller', ['angularUtils.directives.dirPagination']).filter('totalSumPriceQty', function () {
    return function (data, key1, key2) {
        
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
  $scope.getUser = ${userDetailsParticularListViaJson};
  $scope.getShipping = ${userDetailsParticularShippingListViaJson};
  $scope.getBilling = ${userDetailsParticularBillingListViaJson};
  $scope.getSupplier = ${userDetailsParticularSupplierListViaJson};
  $scope.getProduct = ${userDetailsParticularProductListViaJson};
  
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



//DISPLAY IMAGE ON SELECTION
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

</script>      


<%@include file="Footer.jsp" %>