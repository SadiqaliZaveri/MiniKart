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
    <script src="resources/js/angular.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/angular-ui/0.4.0/angular-ui.min.js"></script>
    <script src="resources/js/jquery.autocomplete.min.js"></script>
    	
    <link href="resources/css/bootstrap.min.css" rel="stylesheet" />
    <script src="resources/js/bootstrap.min.js"></script>   
     <script src="resources/js/dirPagination.js"></script>
    
 	
    <link href="resources/css/simple-sidebar.css" rel="stylesheet"/>
    <link href="resources/css/footer-distributed-with-address-and-phones.css" rel="stylesheet" />
    <link href="resources/css/megamenu.css" rel="stylesheet" />  
    <link href="resources/css/Main.css" rel="stylesheet" />
    <link href="resources/css/animate.css" rel="stylesheet"/>
    <link rel="icon" href="resources/images/logo.png">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>MiniKart</title>
   
  </head>


  <!--    NAVIGATION BAR TOP   -->


  <body ng-app="Caller" ng-controller="CallerController" >
<div class="se-pre-con"></div>
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand animated tada" href="home"><i class="glyphicon glyphicon-shopping-cart"> </i> MiniKart</a>
          <a class="navbar-brand" href="#" id="menu-toggle"><i class="glyphicon glyphicon-resize-full"></i></a>
        </div>
        
        <div class="collapse navbar-collapse" id="myNavbar">

          <ul id="maincategory" class="nav navbar-nav" style="margin-left:5%">
        
          
          

    <li  class="dropdown mega-dropdown hidden-xs " style="width:230px; text-align:center; background-color:#263238; letter-spacing: 2px;">
      <a class="dropdown-toggle animated fadeIn" data-toggle="dropdown"><i class="fa fa-gears" style="font-size:19px"></i> ELECTRONICS <i class="fa fa-unsorted" style="font-size:15px"></i></a>
      <div class="dropdown-menu mega-dropdown-menu " role="menu">
        <div class="container-fluid">
        <hr>
          <!-- Tab panes -->
          <div class="tab-content">
            <div class="tab-pane active" id="men">
            
              <ul class="nav-list list-inline">
              
              <c:forEach var="category" items="${categoryListNormal}">
              <li class="dropdown-submenu">
                  <a href="filter?search=${category.categoryName}"><span><c:out value="${category.categoryName}"/></span></a>
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
           <sec:authorize access="hasAnyRole('ROLE_USER','ROLE_ANONYMOUS')">
            <li class="cart">
              <a href="cartList"><img alt="Logo" src="resources/images/logo.png" width="25" height="15"> Your Cart <button type="button" class="btn btn-warning btn-circle-micro pull-right labelspace animated infinite tada" style="border:1px solid black;"> ${sessionScope.cartListNo}</button></a>
            </li>
            </sec:authorize>
             <c:if test="${pageContext.request.userPrincipal.name != null}">
            <div class="hidden-sm hidden-md hidden-lg">
              <ul class="nav navbar-nav" style="padding-left:10%; padding-right:10%;">
              <sec:authorize access="hasRole('ROLE_USER')">
                <li><a href="panel">User Profile<span class="glyphicon glyphicon-cog pull-right"></span></a></li>
                <li><a href="orderedList">Purchase History <span class="glyphicon glyphicon-stats pull-right"></span></a></li>
                
                <li><a href="wishlist">Wish List <span class="glyphicon glyphicon-heart pull-right"></span></a></li>
                </sec:authorize>
                <li><a href="perform_logout">Sign Out <span class="glyphicon glyphicon-log-out pull-right"></span></a></li>
                <sec:authorize access="hasRole('ROLE_ADMIN')">
                  <li><a href="admin"> Admin Panel<span class="glyphicon glyphicon-user pull-right"></span></a></li>
                </sec:authorize>
                <sec:authorize access="hasRole('ROLE_SUPPLIER')">
                  <li><a href="panel">Supplier Panel<span class="glyphicon glyphicon-user pull-right"></span></a></li>
                </sec:authorize>
                
                  
                
              </uL>
            </div>
            </c:if>

            <c:if test="${pageContext.request.userPrincipal.name != null}">

              <li class="dropdown hidden-xs" style="margin-right:10px;">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">${pageContext.request.userPrincipal.name}<span class="glyphicon glyphicon-user pull-right"> </span></a>
                <ul class="dropdown-menu">
                <sec:authorize access="hasRole('ROLE_USER')">
                  <li><a href="panel">User Panel <span class="glyphicon glyphicon-cog pull-right"></span></a></li>
                  <li><a href="orderedList">Purchase History  <span class="glyphicon glyphicon-stats pull-right"></span></a></li>
                  
                  <li><a href="wishlist">Wish List <span class="glyphicon glyphicon-heart pull-right"></span></a></li>
                  </sec:authorize>
                  <li><a href="perform_logout">Sign Out <span class="glyphicon glyphicon-log-out pull-right"></span></a></li>
                  <sec:authorize access="hasRole('ROLE_ADMIN')">
                    <li><a href="admin"> Admin Panel<span class="glyphicon glyphicon-user pull-right"></span></a></li>
                  </sec:authorize>
                  <sec:authorize access="hasRole('ROLE_SUPPLIER')">
                  <li><a href="panel">Supplier Panel<span class="glyphicon glyphicon-user pull-right"></span></a></li>
                </sec:authorize>
                </ul>
              </li>
            </c:if>
            <c:if test="${pageContext.request.userPrincipal.name == null}">
              <li><a href="register"><span class="glyphicon glyphicon-user "></span> Sign Up</a></li>
              <li style="margin-right:10px;"><a href="login" ><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
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
            
 			  
              <input id="searchbar" onkeypress="redirectEnter(event)" type="text" ng-model="lel" class="form-control SearchBar" placeholder="Search for...">
              
              
              <span class="input-group-btn">
<!--         <a href="filter?search={{ball}}"> -->
        <button onclick="redirect()" class="btn btn-defaul SearchButton" type="button">
            <span class=" glyphicon glyphicon-search SearchIcon" ></span>
              </button>
<!--               </a> -->
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
          <li id="todaysmessage" ><a>Today's Message :</a></li>
          <li>
            <a>
              <marquee style="font-size:13px; height:17px; min-width: 200px;" ><c:forEach var="tdmessage" items="${todaysMessageListNormal}">
      
  <c:out value="${tdmessage.message}"/><span class="labelspace"></span>

 
  </c:forEach></marquee>
            </a>
          </li>
          <li><a href="home"><i class="fa fa-home"></i></a></li>
          <li><a href="FAQ"><i class="fa fa-question"></i></a></li>
          <li><a href="contactus"><i class="fa fa-phone"></i></a></li>
          <li><a href="#"><i class="fa fa-info-circle"></i></a></li>
          
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

function redirect()
{
	window.location.href = "filter?search="+document.getElementById('searchbar').value;
};

function redirectEnter(e)
{
	if (e.keyCode == 13){
		window.location.href = "filter?search="+document.getElementById('searchbar').value;
	}
};


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
		    $('.dropdown-menu', this).not('.in .dropdown-menu ').stop(true, false).slideUp("400");
		    
		    $(this).toggleClass('open');

  });
		  


		function scrolltop() {
		  window.scrollTo(0, 0);
		};
		
//	Toggle Button Script 
		$("#menu-toggle, #menu-toggle-2").click(function(e) {
		  e.preventDefault();
		  $("#wrapper").toggleClass("toggled");
		});

		//Hide Elements Based on URL
		 var url=window.location.href.split('?')[0];
		if(url=="http://localhost:8080/MiniKart/reg")
			{
			$("#maincategory").hide();
			$("#todaysmessage").hide();
			};
			
		
		
		
// AUTOCOMPLETE 


$(document).ready(function() {

	$('#searchbar').autocomplete({
		serviceUrl: '${pageContext.request.contextPath}/getTags',
		paramName: "subCategoryName",
		delimiter: ",",
	   transformResult: function(response) {

		return {
		  //must convert json to javascript object before process
		  suggestions: $.map($.parseJSON(response), function(item) {

		      return { value: item.subCategoryName, data: item.subCategoryId };
		   })

		 };

            }

	 });

  });



    </script>
    
    
<!--	PAGE CONTENT WRAPPER / ALL PRODUCT CONTENT IN HERE	-->

      <div id="page-content-wrapper" style="top:100px">