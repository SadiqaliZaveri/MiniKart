
<%@include file="Header.jsp" %>

<!--    SIDE BAR ENDS -->
        

          
          
<!--    MAIN SLIDER   -->         
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
          <!-- Indicators -->
          <ol class="carousel-indicators">
            <li data-target="#myCarousel" tdata-slide-to="0" class="active"></li>
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
                    <div ng-repeat="x in getProduct" class="col-xs-12 col-sm-4 col-md-3 preview">
                        <div class="thumbnail">
                        <div class="imgholder">
                        
                            <a href="viewfullprod-{{x.productId}}"><img class="img-responsive center-block "  src="resources/images/product{{x.productId}}.jpg" alt=""></a>
                           
                            </div>
                            <div class="caption">
<!--                                 <h4 class="pull-right"><i class="fa fa-inr" aria-hidden="true"></i> {{x.productPrice}}</h4> -->
<!--                                 <h4><a href="viewfullprod-{{x.productId}}">{{x.productName}}</a></h4> -->
<!--                                 <p style="min-height:50px; max-height:50px; overflow:hidden;">{{x.productDescription}}</p> -->
                                
                                <h4 class="group inner list-group-item-heading"><a href="viewfullprod-{{x.productId}}">{{x.productName}}</a></h4>
                    			<p style="min-height:50px; max-height:50px; overflow:hidden;" class="group inner list-group-item-text">{{x.productDescription}}</p>
                    			<div class="row">
                        			<div class="col-xs-12 col-md-6">
                            			<p class="lead"><i class="fa fa-inr" aria-hidden="true"></i> {{x.productPrice}}</p>
                        			</div>
                        			<div class="col-xs-12 col-md-6" >
                            		<a class="btn cartbutton" href=""><i class="fa fa-shopping-cart hidden-md" aria-hidden="true"></i> Add to cart</a>
                        			</div>
                    			</div>
                            </div>
                            
                        </div>
                    </div>
                    
                   

         <div class="row" style="margin-top:10px;">
<div class="col-xs-12"><h3>On Sale Products</h3>
             
             </div></div><hr>
                    <div class="col-xs-12 col-sm-4 col-md-3">
                        <div class="thumbnail">
                            <img src="resources/images/product7.jpg" alt="">
                            <div class="caption">
                                <h4 class="pull-right">$84.99</h4>
                                <h4><a href="#">Fourth Product</a>
                                </h4>
                                <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">6 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-xs-12 col-sm-4 col-md-3">
                        <div class="thumbnail">
                            <img src="resources/images/altimg.png" alt="">
                            <div class="caption">
                                <h4 class="pull-right">$94.99</h4>
                                <h4><a href="#">Fifth Product</a>
                                </h4>
                                <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">18 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-4 col-md-3">
                        <div class="thumbnail">
                            <img src="resources/images/altimg.png" alt="">
                            <div class="caption">
                                <h4 class="pull-right">$94.99</h4>
                                <h4><a href="#">Fifth Product</a>
                                </h4>
                                <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">18 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-4 col-md-3">
                        <div class="thumbnail">
                            <img src="resources/images/altimg.png" alt="">
                            <div class="caption">
                                <h4 class="pull-right">$94.99</h4>
                                <h4><a href="#">Fifth Product</a>
                                </h4>
                                <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">18 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-4 col-md-3">
                        <div class="thumbnail">
                            <img src="resources/images/altimg.png" alt="">
                            <div class="caption">
                                <h4 class="pull-right">$94.99</h4>
                                <h4><a href="#">Fifth Product</a>
                                </h4>
                                <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">18 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-4 col-md-3">
                        <div class="thumbnail">
                            <img src="resources/images/altimg.png" alt="">
                            <div class="caption">
                                <h4 class="pull-right">$94.99</h4>
                                <h4><a href="#">Fifth Product</a>
                                </h4>
                                <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">18 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-4 col-md-3">
                        <div class="thumbnail">
                            <img src="resources/images/altimg.png" alt="">
                            <div class="caption">
                                <h4 class="pull-right">$94.99</h4>
                                <h4><a href="#">Fifth Product</a>
                                </h4>
                                <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">18 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>
          </div> 
          
<script>
//MODULE AND CONTROLLER - ANGULARJS - RETRIEVAL OF DATA VIA JSON LISTS
var app = angular.module('Caller', ['angularUtils.directives.dirPagination']);
app.controller('CallerController', function($scope) {
  $scope.getProduct = ${productListEnabledJson};
});
</script>          
<!--    PRODUCT ELEMENTS END  -->
          
<!--      FOOTER STARTS     -->
   
<%@include file="Footer.jsp" %>
			     
<!--      FOOTER ENDS     -->
          

  </body>

</html>
