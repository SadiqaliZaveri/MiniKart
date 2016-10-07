<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="resources/js/jquery-3.1.1.min.js"></script>
    <link href="resources/css/bootstrap.min.css" rel="stylesheet" />
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/bootstrap-hover-dropdown.min.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
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
              <a class="navbar-brand" href="data"><i class="glyphicon glyphicon-shopping-cart"></i> MiniKart</a>

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
                <li><a href="#" data-toggle="modal" data-target="#signup" data-backdrop="static" data-keyboard="false"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                <li><a href="#" data-toggle="modal" data-target="#login" data-backdrop="static" data-keyboard="false"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
              </ul>
               
            </div>
          </div>
        </nav>
<!--    NAVIGATION BAR TOP ENDS  -->
      
<!--   Second Div Bar/Search Bar   -->
      <div class="container-fluid">
          <div class="row">
              <div class="col-xs-12 searchbar">
                 
                  <div class="container">
	<div class="row">
        <div class="col-xs-12">
    		
            <div id="custom-search-input">
                <div class="input-group col-md-12" style="padding-top:10px">
                    <input id="query" name="query" type="text" class="form-control input-sm" placeholder="Search.." />
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
      <%@include file="CategorySidebar.jsp" %>