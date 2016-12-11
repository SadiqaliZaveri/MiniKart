<%@include file="Header.jsp" %>
<div class="container">
<div class="row">
<div class="col-xs-12">
<div class="form-group col-xs-12 col-sm-6">
          <label>Search:</label>
          <input class="form-control" ng-model="test">
        </div>
        <div class="form-group col-sm-6 col-xs-12">
          <label for="search">Items per page:</label>
          <select class="form-control" ng-model="maxsize" ng-init="maxsize=5">
            <option ng-selected="true">5</option>
            <option>10</option>
            <option>15</option>
            <option>20</option>
          </select>
          <!--               <input type="number" min="1" max="100" class="form-control" ng-model="maxsize" ng-init="maxsize=10" > -->
        </div>
<table class="table table-responsive">
<dir-pagination-controls class="pull-left" max-size="5" pagination-id="Product" direction-links="true" boundary-links="true"></dir-pagination-controls>
	<thead style="background-color:#f65819; color:white;">
		<tr>
					  <th ng-click="sort('productName')">Name
                <span class="glyphicon sort-icon" ng-show="sortKey=='productName'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
              </th>
              <th ng-click="sort('productPrice')">Price
                <span class="glyphicon sort-icon" ng-show="sortKey=='productPrice'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
              </th>
                       
                       <th></th>    
                       <th></th>              
                       <th>Product Image</th>
		</tr>
	</thead>
	<tbody style="background-color:white;">
		<tr dir-paginate="x in resultvalue=(wishItem | filter: test) | orderBy:sortKey:reverse |itemsPerPage: maxsize" pagination-id="Product">
						<td style="max-width:150px;"><a href="viewfullprod-{{x.productId}}">{{x.productName}}</a></td>
                        <td>{{x.productPrice}}</td>
                      	 <td><a data-toggle="tooltip" title="Add To Cart" class="btn cartbutton" href="AddToCart-{{x.productId}}-1"><i class="fa fa-shopping-cart hidden-md"  aria-hidden="true"></i></a></td>  
                        <td><a href ="deleteWishList-{{x.wishItemId}}"><i class="fa fa-trash-o fa-2x" style="color:red;" data-toggle="tooltip" title="Delete"></i></a></td>
                      
                        
                       
                        <td>
                        <div class="thumbnail shadowbox"  >
                        <div class="imgholder" style="max-height: 150px; max-width:150px; width:150px; max-height: 150px; height: 150px;">
                           <a href="viewfullprod-{{x.productId}}"><img class="img-responsive center-block" style="width:auto; max-height: 150px;"  src="resources/images/product{{x.productId}}.jpg" alt=""></a>
                            </div>
                            </div>
                        </td>
                        
		</tr>
		<tr>
              <td><a href="home" class="btn btn-lg cartbutton"><span class="glyphicon glyphicon-repeat"></span> Continue Shopping</a></td>

              <td></td>
              
              <td>Grand Total :</td>
              <td>Rs. {{resultvalue | totalSumPriceQty:'productQuantity':'productPrice'}}</td>
              <td></td>
              

            </tr>
		
	</tbody>
</table>
<dir-pagination-controls class="pull-left" max-size="5" pagination-id="Product" direction-links="true" boundary-links="true">
                </dir-pagination-controls>
</div>
</div>
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
app.controller('CallerController', function($scope) {
	 
	$scope.wishItem = ${wishList};
	  
	  
	  $scope.sort = function(keyname) {
		    $scope.sortKey = keyname; //set the sortKey to the param passed
		    $scope.reverse = !$scope.reverse; //if true make it false and vice versa
		  };
	  
	  $scope.getTotal = function(){
		  var total = 0;
		  for(var i = 0; i<$scope.wishItem.length; i++)
			  {
			   var product = $scope.wishItem[i];
			   total += (product.productPrice * product.productQuantity);
			  }
		  return total;
	  };

	});


</script>

<%@include file="Footer.jsp" %>