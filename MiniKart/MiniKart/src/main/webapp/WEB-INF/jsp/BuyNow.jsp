<%@include file="Header.jsp" %>
<div class="container">
<div class="row">
<div class="col-xs-12">
<table class="table table-responsive">
	<thead style="background-color:#f65819; color:white;">
		<tr>
					   <th>Name</th>
                       <th>Price</th>
                       <th>Quantity</th>
                       <th>Discount</th>
                       <th>Product Image</th>
		</tr>
	</thead>
	<tbody style="background-color:white;">
		<tr>
						<td><a href="viewfullprod-{{cartItem.productId}}">{{cartItem.productName}}</a></td>
                        <td>{{cartItem.productPrice}}</td>
                        <td>{{cartItem.productQuantity}}</td>
                        <td>{{cartItem.productDiscount}}</td>
                        
                        
                        
                        <td><div class="thumbnail shadowbox"  >
                        <div class="imgholder" style="max-height: 200px; max-width:200px; width:200px; height: 200px;">
                           <a href="viewfullprod-{{cartItem.productId}}"><img class="img-responsive center-block" style="width:100%; max-height:200px"  src="resources/images/product{{cartItem.productId}}.jpg" alt=""></a>
                            </div></div></td>
                        
		</tr>
		<tr>
		<td><a href ="deleteCartItem={{cartItem.cartItemId}}"><i class="fa fa-trash-o fa-2x" style="color:red;" data-toggle="tooltip" title="Delete"></i></a></td>
		<td></td>
		<td></td>
		<td></td>
		<td><a href="checkout" class="btn btn-lg btn-success pull-right"><span class="glyphicon glyphicon-log-out"></span> Checkout</a></td>
	
		
		</tr>
	</tbody>
</table>
</div>
</div>
</div>
<script>
$("#wrapper").toggleClass("toggled");
var app = angular.module('Caller', ['angularUtils.directives.dirPagination']);
app.controller('CallerController', function($scope) {
	 
	  $scope.cartItem = ${cartItemBuyNow};

	});

</script>

<%@include file="Footer.jsp" %>