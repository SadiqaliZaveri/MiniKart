
<%@include file="Header.jsp" %>

<!--    SIDE BAR ENDS -->
        

          
          
<!--    MAIN SLIDER   -->         
        <div id="myCarousel" class="carousel slide animated zoomIn" data-ride="carousel">
          <!-- Indicators -->
          <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>

          </ol>

          <!-- Wrapper for slides -->
          <div class="carousel-inner" role="listbox">

            <div class="item active">
              <img src="resources/images/1.jpg" alt="Chania" width="1920" height="500">
            </div>

            <div class="item">
              <img src="resources/images/2.jpg" alt="Chania" width="1920" height="500">
            </div>

            <div class="item">
              <img src="resources/images/1.jpg" alt="Flower" width="1920" height="500">
            </div>
          </div>

          <!-- Left and right controls -->
          <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
<!--    MAIN SLIDER ENDS   -->
          
<!--    PRODUCT ELEMENTS  -->
<div class="container-fluid">
<div class="row" style="margin-top:10px;">
<div class="col-xs-12"><h3>Featured Products</h3>
             
    </div></div><hr>
                    <div ng-repeat="x in getProduct" class="col-xs-12 col-sm-4 col-md-3 preview ">
                        <div class="thumbnail shadowbox " >
                        <div class="imgholder">
                        <div ng-if="x.categoryName == 'Mobiles' ||  x.categoryName == 'Mobile Accessories' ">
                      <a href="viewfullprod-{{x.productId}}"><img class="img-responsive center-block" style="width:30%; max-height:200px; max-width:100px;"  src="resources/images/product{{x.productId}}.jpg" alt=""></a>
                           </div>
                           
                           <div ng-if="x.categoryName != 'Mobiles' &&  x.categoryName != 'Mobile Accessories'">
                           <a href="viewfullprod-{{x.productId}}"><img class="img-responsive center-block" style="width:100%; max-width:300px; max-height:200px"  src="resources/images/product{{x.productId}}.jpg" alt=""></a>
                           </div>
                            </div>
                            <div class="caption">

                                <h4 class="group inner list-group-item-heading text-center" style="min-height:46px; max-height:46px; overflow:hidden; font-size:14px; " title="{{x.productName}}"><a href="viewfullprod-{{x.productId}}">{{x.productName}}</a></h4>
                    			
                    			<div class="row">
                    				<div ng-if="x.productDiscountPrice == 0">
                        			<div class="col-xs-12 text-center" style="min-height: 60px;">
                            			<p class="lead">
                            			
                            			<i class="fa fa-inr" aria-hidden="true"></i> {{x.productPrice}}
                            			
                            			</p>
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
                        			<div class="col-xs-12 col-sm-5 col-md-6 text-center" >
                            		<a class="btn cartbutton tenpxtop" href="AddToCart-{{x.productId}}-1"><i class="fa fa-shopping-cart hidden-md" aria-hidden="true"></i> <span class="hidden-sm">Add to cart</span></a>
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
                    
                   

 
          
<script>





//MODULE AND CONTROLLER - ANGULARJS - RETRIEVAL OF DATA VIA JSON LISTS
var app = angular.module('Caller', ['angularUtils.directives.dirPagination']);
app.controller('CallerController', function($scope) {
  $scope.getProduct = ${productFullViewEnabledJson};
 
  $scope.Math = window.Math;
});
</script>          
<!--    PRODUCT ELEMENTS END  -->
          
<!--      FOOTER STARTS     -->
   
<%@include file="Footer.jsp" %>
			     
<!--      FOOTER ENDS     -->
          

  </body>

</html>
