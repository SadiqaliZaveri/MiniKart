<%@include file="Header.jsp" %>

<div class="container-fluid shadowbox" style="background-color:white;">
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
                    	
				<div class="col-xs-12  col-sm-6 color" style="border-left:2px solid; border-right:2px solid;">
						<div class="imgholder color" style="max-width:400px; height:400px;">
						<div ng-if="getProduct.categoryName == 'Mobiles' ||  getProduct.categoryName == 'Mobile Accessories'">
							<img class="img-responsive center-block "  style="width:45%; height:45%"  id="item-display" src="resources/images/product{{getProduct.productId}}.jpg" alt=""></img>
							</div>
						<div ng-if="getProduct.categoryName != 'Mobiles' &&  getProduct.categoryName != 'Mobile Accessories'">
							<img class="img-responsive center-block "  style="width:100%; max-height:400px"  id="item-display" src="resources/images/product{{getProduct.productId}}.jpg" alt=""></img>
							</div>
						</div>
					</div>
				<div class="col-xs-12 col-sm-6">
				
				<h2 class="extrapadding" style="background-color:#ffc966"><i class="fa fa-inr" aria-hidden="true"></i> {{getProduct.productPrice}}</h2>
				<a href="#" class="btn btn-lg btn-warning tenpxtop"><span class="glyphicon glyphicon-forward"></span> BUY NOW</a>
				<a href="#" class="btn btn-lg btn-warning tenpxtop"><span class="glyphicon glyphicon-shopping-cart"></span> ADD TO CART</a>
				
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

//MODULE AND CONTROLLER - ANGULARJS - RETRIEVAL OF DATA VIA JSON LISTS
var app = angular.module('Caller', ['angularUtils.directives.dirPagination']);
app.controller('CallerController', function($scope) {
  $scope.getProduct = ${particularProductFullView};
});
</script>          
<%@include file="Footer.jsp" %>	      