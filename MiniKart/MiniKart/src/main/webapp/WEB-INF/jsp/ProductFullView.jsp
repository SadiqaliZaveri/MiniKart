<%@include file="Header.jsp" %>

<div class="container-fluid shadowbox pushfooter" style="background-color:white;">
<div class="row">
<div class="col-xs-12 color" style="text-transform: uppercase; font-size:10px; border-right: 2px solid; border-left: 2px solid;">
	<a href="home"><i class="fa fa-home" style="font-size:12px;"></i></a>
		<i class="fa fa-arrow-right" aria-hidden="true"></i> 
	<a href="filter?search={{getProduct.categoryName}}">{{getProduct.categoryName}}</a>
		<i class="fa fa-arrow-right" aria-hidden="true"></i> 
	<a href="filter?search={{getProduct.subCategoryName}}">{{getProduct.subCategoryName}}</a>
		<i class="fa fa-arrow-right" aria-hidden="true"></i>
	<a href="viewfullprod-{{getProduct.productId}}">{{getProduct.productName}}</a>
</div>

<div class="col-xs-12" style="text-align:center"><h3>{{getProduct.productName}}</h3></div>

<div class="col-xs-12">
                    	
				<div  class="col-xs-12  col-sm-6 color" style="border-left:2px solid; border-right:2px solid;">
						<div  class="imgholder color" style="max-width:400px; height:400px;" >
						<div  ng-if="getProduct.categoryName == 'Mobiles' ||  getProduct.categoryName == 'Mobile Accessories'">
							<img class="img-responsive center-block "  style="width:45%; height:100%; max-height:400px; "  id="item-display" src="resources/images/product{{getProduct.productId}}.jpg" alt="" ></img>
							</div>
						<div ng-if="getProduct.categoryName != 'Mobiles' &&  getProduct.categoryName != 'Mobile Accessories'">
							<img class="img-responsive center-block "  style="width:100%; max-height:400px"  id="item-display" src="resources/images/product{{getProduct.productId}}.jpg" alt=""   ></img>
							</div>
						</div>
					</div>
					<div class="col-xs-12 col-sm-6">
					${sessionScope.Error}
					<c:set var="Error" value="" scope="session" />
					</div>
				<div class="col-xs-12 col-sm-6">
				
				<h2 class="extrapadding" style="border-top: 1px solid #f65819; border-bottom: 1px solid #f65819; text-align: center;"><i class="fa fa-inr" aria-hidden="true"></i> {{getProduct.productPrice}}</h2>
				<div class="col-sm-6 col-sm-offset-4">
				<div ng-if="getProduct.productStock != 0">
				
				<a href="buyNow-{{getProduct.productId}}" class="btn btn-md cartbutton tenpxtop " style="width:100px; height:100px; border-radius:100px; line-height: 6; border:2px solid #263238">BUY NOW</a>
				
				<a id="quantityUrl" onclick="redirect()" dummyhref="AddToCart-{{getProduct.productId}}-" class="btn btn-md cartbutton tenpxtop " data-toggle="tooltip" data-placement="bottom" title="Add To Cart" style="width:100px; height:100px; border-radius:100px; line-height: 7; border:2px solid #263238"><span class="glyphicon glyphicon-shopping-cart" style="font-size:30px;"></span></a>
				</div>
				<div ng-if="getProduct.productStock == 0">
				<div class="btn cartbutton"><i class="fa fa-exclamation-triangle" aria-hidden="true"></i> PRODUCT IS OUT OF STOCK</div>
				</div>
				</div>
				<div class="col-xs-12 col-sm-2 col-sm-offset-5 tenpxtop"><div ng-if="getProduct.productStock != 0"><input id="quantity" class="form-control" type="number" min="1" max="3" value="1"></div></div>
				<div class="col-xs-12 tenpxtop" style="color:#f65819;">
				<ul class="list-group">
				  
				  <li class="list-group-item ">Stock : <span class="tabs" style="color:white; background-color:#f65819; min-width:50px; ">{{getProduct.productStock}}</span></li>
				  <li class="list-group-item ">Shipping : <span class="tabs" style="color:white; background-color:#f65819; min-width:50px; ">Free!</span></li>
				  <div ng-if="getProduct.productWarranty == ''">
				  <li class="list-group-item ">Warranty : <span class="tabs" style="color:white; background-color:#f65819; min-width:50px; ">{{getProduct.productWarranty}}</span></li>
				  </div>
				  <li class="list-group-item ">Supplier : <span class="tabs" style="color:white; background-color:#263238; min-width:50px; ">{{getProduct.supplierName}}</span></li>
				  
				  <li class="list-group-item ">Payment Methods : <span class="tabs" style="color:white; background-color:#263238; min-width:50px; ">Credit / Debit</span></li>
				</ul>
				</div>
				</div>					
					
</div>
					
		

<div class="col-xs-12 col-sm-8 col-sm-offset-2 tenpxtop" style="border-top:1px solid orange">

<ul class="nav nav-tabs">
    
    <li class="active" style="border-bottom: 1px solid;"><a data-toggle="tab" href="#menu1">Product Description</a></li>
    <li style="border-bottom: 1px solid;"><a data-toggle="tab" href="#menu2">Product Specification</a></li>
    
  </ul>

  <div class="tab-content">
    
    <div id="menu1" class="tab-pane fade in active">
      
      <p class="extrapadding">{{getProduct.productDescription}}</p>
    </div>
    <div id="menu2" class="tab-pane fade">
    <div ng-if="getProduct.productColor != 'N/A' && getProduct.productColor">
      <div class="panel panel-default">
  		<div class="panel-heading">Color</div>
  		<div class="panel-body">{{getProduct.productColor}}</div>
	  </div>
	</div>	
	<div ng-if="getProduct.productBatteryCapacity !='N/A' && getProduct.productBatteryCapacity">
      <div class="panel panel-default">
  		<div class="panel-heading">Battery Capacity</div>
  		<div class="panel-body">{{getProduct.productBatteryCapacity}}</div>
	  </div>
	</div>
	<div ng-if="getProduct.productRating !='N/A' && getProduct.productRating">
      <div class="panel panel-default">
  		<div class="panel-heading">Rating</div>
  		<div class="panel-body">{{getProduct.productRating}}</div>
	  </div>
	</div>
	<div ng-if="getProduct.productCamera !='N/A' && getProduct.productCamera">
      <div class="panel panel-default">
  		<div class="panel-heading">Camera</div>
  		<div class="panel-body">{{getProduct.product}}</div>
	  </div>
	</div>
	<div ng-if="getProduct.productSecondaryCamera !='N/A' && getProduct.productSecondaryCamera">
      <div class="panel panel-default">
  		<div class="panel-heading">Secondary Camera</div>
  		<div class="panel-body">{{getProduct.product}}</div>
	  </div>
	</div>
	<div ng-if="getProduct.productRam !='N/A' && getProduct.productRam">
      <div class="panel panel-default">
  		<div class="panel-heading">Ram</div>
  		<div class="panel-body">{{getProduct.productRam}}</div>
	  </div>
	</div>
	<div ng-if="getProduct.productGraphicsMemory !='N/A' && getProduct.productGraphicsMemory">
      <div class="panel panel-default">
  		<div class="panel-heading">Graphics Memory</div>
  		<div class="panel-body">{{getProduct.productGraphicsMemory}}</div>
	  </div>
	</div>
	<div ng-if="getProduct.productHardDiskCapacity !='N/A' && getProduct.productHardDiskCapacity">
      <div class="panel panel-default">
  		<div class="panel-heading">HardDisk Capacity</div>
  		<div class="panel-body">{{getProduct.productHardDiskCapacity}}</div>
	  </div>
	</div>
	<div ng-if="getProduct.productScreenSize !='N/A' && getProduct.productScreenSize">
      <div class="panel panel-default">
  		<div class="panel-heading">Screen Size</div>
  		<div class="panel-body">{{getProduct.productScreenSize}}</div>
	  </div>
	</div>
	<div ng-if="getProduct.productResolution !='N/A' && getProduct.productResolution">
      <div class="panel panel-default">
  		<div class="panel-heading">Resolution</div>
  		<div class="panel-body">{{getProduct.productResolution}}</div>
	  </div>
	</div>
	<div ng-if="getProduct.productInches !='N/A' && getProduct.productInches">
      <div class="panel panel-default">
  		<div class="panel-heading">Inches</div>
  		<div class="panel-body">{{getProduct.productInches}}</div>
	  </div>
	</div>
	<div ng-if="getProduct.productWarranty !='N/A' && getProduct.productWarranty">
      <div class="panel panel-default">
  		<div class="panel-heading">Warranty</div>
  		<div class="panel-body">{{getProduct.productWarranty}}</div>
	  </div>
	</div>
	<div ng-if="getProduct.productWeight !='N/A' && getProduct.productWeight">
      <div class="panel panel-default">
  		<div class="panel-heading">Weight</div>
  		<div class="panel-body">{{getProduct.productWeight}}</div>
	  </div>
	</div>
	<div ng-if="getProduct.productNetworkType !='N/A' && getProduct.productNetworkType">
      <div class="panel panel-default">
  		<div class="panel-heading">NetworkType</div>
  		<div class="panel-body">{{getProduct.productNetworkType}}</div>
	  </div>
	</div>
	<div ng-if="getProduct.productConnectivityFeatures !='N/A' && getProduct.productConnectivityFeatures">
      <div class="panel panel-default">
  		<div class="panel-heading">Connectivity Features</div>
  		<div class="panel-body">{{getProduct.productConnectivityFeatures}}</div>
	  </div>
	</div>
	<div ng-if="getProduct.productPortType !='N/A' && getProduct.productPortType">
      <div class="panel panel-default">
  		<div class="panel-heading">Port Type</div>
  		<div class="panel-body">{{getProduct.productPortType}}</div>
	  </div>
	</div>
	<div ng-if="getProduct.productOperatingSystem !='N/A' && getProduct.productOperatingSystem">
      <div class="panel panel-default">
  		<div class="panel-heading">Operating System</div>
  		<div class="panel-body">{{getProduct.productOperatingSystem}}</div>
	  </div>
	</div>
	<div ng-if="getProduct.productProcessor !='N/A' && getProduct.productProcessor">
      <div class="panel panel-default">
  		<div class="panel-heading">Processor</div>
  		<div class="panel-body">{{getProduct.productProcessor}}</div>
	  </div>
	</div>
    </div>
    
  </div>
  </div>
</div>
</div>

<script>
$("#wrapper").toggleClass("toggled");



 

function redirect()
{
	window.location.href = document.getElementById('quantityUrl').getAttribute("dummyhref")+""+document.getElementById('quantity').value;
};


//MODULE AND CONTROLLER - ANGULARJS - RETRIEVAL OF DATA VIA JSON LISTS
var app = angular.module('Caller', ['angularUtils.directives.dirPagination']);
app.controller('CallerController', function($scope) {
  $scope.getProduct = ${particularProductFullView};
});
</script>          
<%@include file="Footer.jsp" %>	      