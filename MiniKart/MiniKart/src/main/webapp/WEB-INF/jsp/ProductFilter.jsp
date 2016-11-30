<%@include file="Header.jsp" %>

<div class="container-fluid" >
<div class="row" style="margin-top:10px;">
<div class="col-xs-12">
<div class="col-xs-3" style="border:1px solid #f65819; background-color: #263238; color:white; " ng-click="sort('productName')">Name 
<span class="glyphicon sort-icon pull-right" ng-show="sortKey=='productName'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
</div>
<div class="col-xs-3" style="border:1px solid #f65819; background-color: #263238; color:white; " ng-click="sort('productPrice')">Product Price 
<span class="glyphicon sort-icon pull-right" ng-show="sortKey=='productPrice'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
</div>
<div class="col-xs-3" style="border:1px solid #f65819; background-color: #263238; color:white; " ng-click="sort('productId')">Latest 
<span class="glyphicon sort-icon pull-right" ng-show="sortKey=='productId'" ng-class="{'glyphicon-chevron-up':!reverse,'glyphicon-chevron-down':reverse}"></span>
</div>


<div class="col-xs-12 tenpxtop" style="border:1px solid #f65819; background-color: #263238; color:white;">
<div ng-repeat="k in getProduct | orderBy: 'categoryName' | filter: lel | unique: 'categoryName'" >
<div class="checkbox col-sm-3 col-xs-6" >
<label><input type="checkbox" ng-init="chk == lel" ng-click="myNewFilter(k.subCategoryName)"/> {{k.subCategoryName}} ({{k.categoryName}})</label>
</div>
</div>
</div>
             
    </div></div><hr>
                    <div ng-repeat="x in  getProduct | filter: lel | filter:nextFilter | orderBy:sortKey:reverse " class="col-xs-12 col-sm-4 col-md-3 preview">
                    
                        <div class="thumbnail">
                        <div class="imgholder">
                        <div ng-if="x.categoryName == 'Mobiles' ||  x.categoryName == 'Mobile Accessories'">
                       <a href="viewfullprod-{{x.productId}}"><img class="img-responsive center-block" style="width:30%; max-height:30%;"  src="resources/images/product{{x.productId}}.jpg" alt=""></a>
                           </div>
                           <div ng-if="x.categoryName != 'Mobiles' &&  x.categoryName != 'Mobile Accessories'">
                           <a href="viewfullprod-{{x.productId}}"><img class="img-responsive center-block" style="width:100%; max-height:200px"  src="resources/images/product{{x.productId}}.jpg" alt=""></a>
                           </div>
                            </div>
                            <div class="caption">
                            

                                
                                <h4 class="group inner list-group-item-heading text-center" style="min-height:46px; max-height:46px; overflow:hidden; font-size:14px; " title="{{x.productName}}"><a href="viewfullprod-{{x.productId}}">{{x.productName}}</a></h4>
                    			
                    			
                    			<div class="row">
                        			<div ng-if="x.productDiscountPrice == 0">
                        			<div class="col-xs-12 text-center" style="min-height: 60px;">
                            			<p class="lead"><i class="fa fa-inr" aria-hidden="true"></i> {{x.productPrice}}</p>
                        			</div>
                        			</div>
                        			<div ng-if="x.productDiscountPrice != 0">
                        			<div class="col-xs-12 text-center" style="min-height: 60px; max-height: 60px; ">
                            			
                            			<div class="col-xs-12">
                            				<strong><span style="color:orange; font-size:15px;">{{Math.round(((((x.productPrice - x.productDiscountPrice)/ x.productPrice) * 100)))}} % off!</span></strong>
                            				<del class="labelspace" style="font-size:12px; color:#f65819;"><i class="fa fa-inr" aria-hidden="true"></i> {{x.productPrice}} </del>
                            			</div>
                            			<div class="col-xs-12"> <p class="lead"><i class="fa fa-inr" style="color:green;  margin-left:5px;" aria-hidden="true"></i> <span style="color:green;">{{x.productDiscountPrice}}</span></p></div>
                            			
                        			</div>
                        			</div>
                        			<div ng-if="x.productStock != 0">
                        			<div class="col-xs-12 col-sm-6 text-center" >
                            		<a class="btn cartbutton tenpxtop" href="AddToCart-{{x.productId}}"><i class="fa fa-shopping-cart hidden-md" aria-hidden="true"></i> Add to cart</a>
                        			</div>
                        			
                        			<div class="col-xs-12 col-sm-3 text-center" >
                            		<a class="btn cartbutton tenpxtop" href="buyNow-{{x.productId}}" data-toggle="tooltip" data-placement="bottom" title="Buy Now!"><i class="fa fa-credit-card" aria-hidden="true"></i></a>
                        			</div>
                        			</div>
                        			<div ng-if="x.productStock == 0">
                        			<div class="col-xs-12 col-sm-9 text-center" >
                            		<a class="btn cartbutton tenpxtop"><i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
                            		 OUT OF STOCK</a>
                        			</div>
                        			</div>
                        			
                        			<div class="col-xs-12 col-sm-3 text-center" >
                            		<a class="btn cartbutton tenpxtop" href="wishlist-{{x.productId}}" data-toggle="tooltip" data-placement="bottom" title="Add To Wishlist"><i class="fa fa-heart" aria-hidden="true"></i></a>
                        			</div>
                    			</div>
                            </div>
                            
                        </div>
                    </div>
                    
                   

        </div> 
          
<script>

//MODULE AND CONTROLLER - ANGULARJS - RETRIEVAL OF DATA VIA JSON LISTS
var app = angular.module('Caller', ['angularUtils.directives.dirPagination','ui.filters']);
app.controller('CallerController', function($scope, $http, $location) {
  $scope.getProduct = ${productFullViewEnabledJson};
  
  $scope.Math = window.Math;

   $scope.lel = location.search.substr(8).replace(/%20/g," ");
  
   $scope.sort = function(keyname) {
	    $scope.sortKey = keyname; //set the sortKey to the param passed
	    $scope.reverse = !$scope.reverse; //if true make it false and vice versa
	  };
	  
	  $scope.myFilter = [];
	    
	    $scope.myNewFilter = function(subCategoryName) {
	        var i = $.inArray(subCategoryName, $scope.myFilter);
	        if (i > -1) {
	            $scope.myFilter.splice(i, 1);
	        } else {
	            $scope.myFilter.push(subCategoryName);
	        }
	    }
	    
	    $scope.nextFilter = function(getProduct) {
	        if ($scope.myFilter.length > 0) {
	            if ($.inArray(getProduct.subCategoryName, $scope.myFilter) < 0)
	                return;
	        }
	        
	        return getProduct;
	    }
   

});

//






</script>          

<%@include file="Footer.jsp" %>