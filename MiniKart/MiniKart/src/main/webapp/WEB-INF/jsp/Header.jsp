<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="resources/js/jquery-3.1.1.min.js"></script>
<!--     <script src="resources/js/ImageToolTips.js"></script> -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet" />
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/bootstrap-select.js"></script>

    <script type="text/javascript" src="resources/js/angular.min.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="resources/js/dirPagination.js"></script>
    <link id="sidebarcss" href="resources/css/simple-sidebar.css" rel="stylesheet">
    <link href="resources/css/footer-distributed-with-address-and-phones.css" rel="stylesheet" />
    <link href="resources/css/megamenu.css" rel="stylesheet" />
    <link href="resources/css/Product.css" rel="stylesheet" />
    <link href="resources/css/Main.css" rel="stylesheet" />
    <title>MiniKart</title>
   
  </head>


  <!--    NAVIGATION BAR TOP   -->

  <body ng-app="Caller" ng-controller="CallerController">
<div class="se-pre-con"></div>
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="home"><i class="glyphicon glyphicon-shopping-cart"> </i> MiniKart</a>
          <a class="navbar-brand" href="#" id="menu-toggle"><i class="glyphicon glyphicon-resize-full"></i></a>
        </div>
        
        <div class="collapse navbar-collapse" id="myNavbar">

          <ul class="nav navbar-nav" style="margin-left:10%">
        
          
          

    <li class="dropdown mega-dropdown hidden-xs " style="width:230px; text-align:center; background-color:#263238; letter-spacing: 2px;">
      <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-gears" style="font-size:19px"></i> ELECTRONICS <i class="fa fa-unsorted" style="font-size:15px"></i></a>
      <div class="dropdown-menu mega-dropdown-menu " role="menu">
        <div class="container-fluid">
        <hr>
          <!-- Tab panes -->
          <div class="tab-content">
            <div class="tab-pane active" id="men">
            
              <ul class="nav-list list-inline">
              
              <c:forEach var="category" items="${categoryListNormal}">
              <li>
                  <a href="#"  class="dropdown-toggle" data-toggle="dropdown" ><span><c:out value="${category.categoryName}"/></span></a>
<!--                   <ul> -->
<%--                         <c:forEach var="sc" items="${category.subCategory}"> --%>
<%--                         <li><c:out value="${sc.subCategoryName}" /></li> --%>
<%--                         </c:forEach> --%>
<!--                     </ul> -->
                </li>              
              </c:forEach>     
                   
              </ul>  
            </div>
          </div>
          <hr> 
        </div>
      </div>
    </li>
  </ul>


        
        

	
	
         
      

          <ul class="nav navbar-nav navbar-right">
            <li class="cart">
              <a href="cart"><img alt="Logo" src="resources/images/logo.png" width="25" height="15"> Your Cart</a>
            </li>
             <c:if test="${pageContext.request.userPrincipal.name != null}">
            <div class="hidden-sm hidden-md hidden-lg">
              <ul class="nav navbar-nav" style="padding-left:10%; padding-right:10%;">
                <li><a href="#">Account Settings <span class="glyphicon glyphicon-cog pull-right"></span></a></li>
                <li><a href="#">User stats <span class="glyphicon glyphicon-stats pull-right"></span></a></li>
                <li><a href="#">Messages <span class="badge pull-right"> 42 </span></a></li>
                <li><a href="#">Favourites Snippets <span class="glyphicon glyphicon-heart pull-right"></span></a></li>
                <li><a href="perform_logout">Sign Out <span class="glyphicon glyphicon-log-out pull-right"></span></a></li>
                <sec:authorize access="hasRole('ROLE_ADMIN')">
                  <li><a href="admin"> Admin Panel<span class="glyphicon glyphicon-user pull-right"></span></a></li>
                </sec:authorize>
              </uL>
            </div>
            </c:if>

            <c:if test="${pageContext.request.userPrincipal.name != null}">

              <li class="dropdown hidden-xs">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">${pageContext.request.userPrincipal.name}<span class="glyphicon glyphicon-user pull-right"> </span></a>
                <ul class="dropdown-menu">
                  <li><a href="#">Account Settings <span class="glyphicon glyphicon-cog pull-right"></span></a></li>
                  <li><a href="#">User stats <span class="glyphicon glyphicon-stats pull-right"></span></a></li>
                  <li><a href="#">Messages <span class="badge pull-right"> 42 </span></a></li>
                  <li><a href="#">Favourites Snippets <span class="glyphicon glyphicon-heart pull-right"></span></a></li>
                  <li><a href="perform_logout">Sign Out <span class="glyphicon glyphicon-log-out pull-right"></span></a></li>
                  <sec:authorize access="hasRole('ROLE_ADMIN')">
                    <li><a href="admin"> Admin Panel<span class="glyphicon glyphicon-user pull-right"></span></a></li>
                  </sec:authorize>
                </ul>
              </li>
            </c:if>
            <c:if test="${pageContext.request.userPrincipal.name == null}">
              <li><a href="register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
              <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
            </c:if>
          </ul>
        </div>
                
	
      </div>
    </nav>

    <!--    NAVIGATION BAR TOP ENDS  -->
    <!-- Search Bar -->
    <div class="container-fluid searchbarbox">
      <div class="row">
      
        <div class="container" style="margin-top: 5px; margin-bottom: 5px; ">
          <div class="row">
            <div class="input-group">
              <input type="text" class="form-control SearchBar" placeholder="Search for...">
              <span class="input-group-btn">
        <button class="btn btn-defaul SearchButton" type="button">
            <span class=" glyphicon glyphicon-search SearchIcon" ></span>
              </button>
              </span>
            </div>
          </div>
        </div>
      </div>
    </div>




    <!--   Bottom Div Bar   -->
    <nav class="navbar navbar-inverse navbar-fixed-bottom">
      <div class="container-fluid">
        <ul class="nav navbar-nav hidden-xs">
          <li><a>Today's Message :</a></li>
          <li>
            <a>
              <marquee><c:forEach var="tdmessage" items="${todaysMessageListNormal}">
      
  <c:out value="${tdmessage.message}"/><span class="labelspace"></span>

 
  </c:forEach></marquee>
            </a>
          </li>
          <li><a href="#"><i class="glyphicon glyphicon-envelope"></i></a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right pull-right">
          <li onclick="scrolltop()"><a><span class="glyphicon glyphicon-arrow-up"></span></a></li>
        </ul>
      </div>
    </nav>


<!-- MEGA MENU -->

	
	
	









    <!--    SIDE BAR WRAPPER / ALL CONTENT GOES IN HERE FOR RESPONSIVENESS  -->
<div id="wrapper">

        
<!--    SIDE BAR  -->
<%@include file="CategorySidebar.jsp" %>

<script type="text/javascript">

//SHOW LOADING SIGN ON LOAD OF WEBSITE
$(window).on('load', function () {
	$(".se-pre-con").fadeOut("fast");
});
	

// Drop Down Menu    
$(".dropdown").hover(
		  function() {
		    $('.dropdown-menu', this).not('.in .dropdown-menu').stop(true, false).slideDown("400");
		    $(this).toggleClass('open');
		  },
		  function() {
		    $('.dropdown-menu', this).not('.in .dropdown-menu').stop(true, false).slideUp("400");
		    $(this).toggleClass('open');
		  });

		function scrolltop() {
		  window.scrollTo(0, 0);
		}
		
//	Toggle Button Script 
		$("#menu-toggle, #menu-toggle-2").click(function(e) {
		  e.preventDefault();
		  $("#wrapper").toggleClass("toggled");
		});

	
    </script>
    
    
<!--	PAGE CONTENT WRAPPER / ALL PRODUCT CONTENT IN HERE	-->

      <div id="page-content-wrapper" style="top:100px">