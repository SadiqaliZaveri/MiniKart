<%@include file="Header.jsp" %>

<div class="container-fluid" style="background-color:white">
<div class="row">
<div class="col-xs-12" style="text-align:center"><h3>{{getProduct.productName}}</h3></div>
<div class="col-xs-12">
                    	
				<div class="col-xs-12">
						<div class="imgholder" style="max-width:400px; max-height:400px">
							<img class="img-responsive center-block " id="item-display" src="resources/images/product{{getProduct.productId}}.jpg" alt=""></img>
						</div>
					</div>
					</div>
					
		
<div class="col-xs-12 col-sm-7 col-md-7"></div>
<div class="col-xs-12" style="border-top:1px solid orange">

<ul class="nav nav-tabs">
    
    <li class="active"><a data-toggle="tab" href="#menu1">Product Description</a></li>
    <li><a data-toggle="tab" href="#menu2">Product Specification</a></li>
    
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h3>HOME</h3>
      <p>{{getProduct.categoryName}}</p>
    </div>
    <div id="menu1" class="tab-pane fade">
      <h3>Menu 1</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu2" class="tab-pane fade">
      <h3>Menu 2</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu3" class="tab-pane fade">
      <h3>Menu 3</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div></div>
</div>
</div>

<script>
//MODULE AND CONTROLLER - ANGULARJS - RETRIEVAL OF DATA VIA JSON LISTS
var app = angular.module('Caller', ['angularUtils.directives.dirPagination']);
app.controller('CallerController', function($scope) {
  $scope.getProduct = ${particularProductFullView};
});
</script>          
<%@include file="Footer.jsp" %>	      