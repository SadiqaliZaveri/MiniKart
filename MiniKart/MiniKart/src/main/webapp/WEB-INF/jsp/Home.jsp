<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="resources/js/jquery-3.1.1.min.js"></script>
    <link href="resources/css/bootstrap.min.css" rel="stylesheet" />
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/bootstrap-hover-dropdown.min.js"></script>

    <link href="resources/css/simple-sidebar.css" rel="stylesheet">
    <link href="resources/css/Main.css" rel="stylesheet" />


    <title>MiniKart</title>
  </head>

<!--    NAVIGATION BAR TOP   -->
  <body>
        <nav class="navbar navbar-inverse navbar-fixed-top">
          <div class="container-fluid">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="#"><i class="glyphicon glyphicon-shopping-cart"></i> MiniKart</a>

              <a class="navbar-brand" href="#" id="menu-toggle"><i class="glyphicon glyphicon-transfer"></i></a>

            </div>

            <div class="collapse navbar-collapse" id="myNavbar">
              <ul class="nav navbar-nav">


                <li><a href="#"><i class="glyphicon glyphicon-home"></i> Home</a></li>
                <li><a href="#"><i class="glyphicon glyphicon-envelope"></i> Abc@minikart.com</a></li>
                <li><a href="#"><i class="glyphicon glyphicon-earphone"></i> +123-456-789-10</a></li>

                <!--             <li class="dropdown"> -->
                <!--               <a class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a> -->
                <!--               <ul class="dropdown-menu"> -->
                <!--                 <li><a href="#">Page 1-1</a></li> -->
                <!--                 <li><a href="#">Page 1-2</a></li> -->
                <!--                 <li><a href="#">Page 1-3</a></li> -->
                <!--               </ul> -->
                <!--             </li> -->
                <!--             <li><a href="#">Page 2</a></li> -->
                <!--             <li><a href="#">Page 3</a></li> -->
              </ul>
              
              <ul class="nav navbar-nav navbar-right">
                <li><a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
              </ul>
               
            </div>
          </div>
        </nav>
<!--    NAVIGATION BAR TOP ENDS  -->
      
<!--   Second Div Bar/Search Bar   -->
      <div class="container-fluid">
          <div class="row">
              <div class="col-xs-12" style="background-color:orange; top:50px; position:fixed; z-index:99;">
                 
                  <div class="container">
	<div class="row">
        <div class="col-xs-12">
    		
            <div id="custom-search-input">
                <div class="input-group col-md-12" style="padding:10px;">
                    <input type="text" class="form-control input-sm" placeholder="Search.." />
                    <span class="input-group-btn">
                        <button class="btn btn-info btn-sm" type="button">
                            <i class="glyphicon glyphicon-search"></i>
                        </button>
                    </span>
                </div>
            </div>
        </div>
	</div>
</div>
                  
              </div>
          </div>
      </div>
<!--   Second Div Bar/Search Bar Ends   -->






<!--    SIDE BAR WRAPPER / ALL CONTENT GOES IN HERE FOR RESPONSIVENESS  -->
    <div id="wrapper">
        
<!--    SIDE BAR  -->
      <div id="sidebar-wrapper">
        <ul class="sidebar-nav">
          <li class="sidebar-brand">
            Filters
          </li>
          <li>
            <a href="#">Dashboard</a>
          </li>
          <li>
            <a href="#">Shortcuts</a>
          </li>
          <li>
            <a href="#">Overview</a>
          </li>
          <li>
            <a href="#">Events</a>
          </li>
          <li>
            <a href="#">About</a>
          </li>
          <li>
            <a href="#">Services</a>
          </li>
          <li>
            <a href="#">Contact</a>
          </li>
        </ul>
      </div>     
<!--    SIDE BAR ENDS -->
        
<!-- PAGE CONTENT WRAPPER / ALL PRODUCT CONTENT IN HERE -->
      <div id="page-content-wrapper" style="top:100px">
          
          
<!--    MAIN SLIDER   -->         
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
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
         <div class="row" style="margin-top:10px;">
<div class="title"><h3>Featured Products</h3></div>
                    <div class="col-sm-4 col-lg-4 col-md-4 col-xs-6">
                        <div class="thumbnail">
                            <img src="resources/images/altimg.png" alt="">
                            <div class="caption">
                                <h4 class="pull-right">$24.99</h4>
                                <h4><a href="#">First Product</a>
                                </h4>
                                <p>See more snippets like this online store item at <a target="_blank" href="http://www.bootsnipp.com">Bootsnipp - http://bootsnipp.com</a>.</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">15 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4 col-xs-6">
                        <div class="thumbnail">
                            <img src="resources/images/altimg.png" alt="">
                            <div class="caption">
                                <h4 class="pull-right">$64.99</h4>
                                <h4><a href="#">Second Product</a>
                                </h4>
                                <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">12 reviews</p>
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

                    <div class="col-sm-4 col-lg-4 col-md-4 col-xs-6">
                        <div class="thumbnail">
                            <img src="resources/images/altimg.png" alt="">
                            <div class="caption">
                                <h4 class="pull-right">$74.99</h4>
                                <h4><a href="#">Third Product</a>
                                </h4>
                                <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">31 reviews</p>
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

                    <div class="col-sm-4 col-lg-4 col-md-4 col-xs-6">
                        <div class="thumbnail">
                            <img src="resources/images/altimg.png" alt="">
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

                    <div class="col-sm-4 col-lg-4 col-md-4 col-xs-6">
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
             <div class="col-sm-4 col-lg-4 col-md-4 col-xs-6">
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
             <div class="col-sm-4 col-lg-4 col-md-4 col-xs-6">
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
             <div class="col-sm-4 col-lg-4 col-md-4 col-xs-6">
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
             <div class="col-sm-4 col-lg-4 col-md-4 col-xs-6">
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
             <div class="col-sm-4 col-lg-4 col-md-4 col-xs-6">
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
          
          
<!--    PRODUCT ELEMENTS END  -->
      </div>
<!--    PAGE CONTENT WRAPPER ENDS   -->
    </div>
<!--    SIDE BAR WRAPPER ENDS  -->

<!--      FOOTER STARTS     -->
     
      
<!--      FOOTER ENDS     -->
      
      
<!--  MODAL/POPUPBOXES  -->
      
    <div class="container">
      <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog">

          <!-- Modal content-->

          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Modal Header</h4>
            </div>
            <div class="modal-body">
              <p>Some text in the modal.</p>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
          </div>

        </div>
      </div>
    </div>
<!--  MODAL/POPUPBOXES ENDS -->

<!--  SCRIPTS  -->
      <script>
      $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
      });

    </script>
  </body>

</html>
