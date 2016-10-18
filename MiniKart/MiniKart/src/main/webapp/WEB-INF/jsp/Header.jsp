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
    <link href="resources/css/bootstrap.min.css" rel="stylesheet" />
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/bootstrap-hover-dropdown.min.js"></script>
    <script type="text/javascript" src="resources/js/angular.min.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="resources/css/simple-sidebar.css" rel="stylesheet">
    <link href="resources/css/footer-distributed-with-address-and-phones.css" rel="stylesheet" />
    <link href="resources/css/Main.css" rel="stylesheet" />
    <title>MiniKart</title>
    
  </head>
    

<!--    NAVIGATION BAR TOP   -->
  <body ng-app="Caller"  ng-controller="CallerController">
 
        <nav class="navbar navbar-inverse navbar-fixed-top">
          <div class="container-fluid">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="home"><i class="glyphicon glyphicon-shopping-cart"></i>
              <c:if test="${pageContext.request.userPrincipal.name != null}">
              ${pageContext.request.userPrincipal.name}
			  </c:if>
              <c:if test="${pageContext.request.userPrincipal.name == null}">
               MiniKart
               </c:if>
               </a>

              <a class="navbar-brand" href="#" id="menu-toggle"><i class="glyphicon glyphicon-resize-full"></i></a>

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
              	<li style="border-right: 2px solid orange; border-left: 2px solid orange; background-color:#f65819;"><a href="cart"><img alt="Logo" src="resources/images/logo.png" width="25" height="15"> Cart</a></li>
                
                
              <c:if test="${pageContext.request.userPrincipal.name != null}">
              <sec:authorize access="hasRole('ROLE_ADMIN')">
              <li><a href="admin"  ><span class="glyphicon glyphicon-user"></span> Admin Panel</a></li>
              </sec:authorize>
              	<li><a href="perform_logout" ><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
              	
			  </c:if>
              <c:if test="${pageContext.request.userPrincipal.name == null}">
              	<li><a href="register"  ><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
              	<li><a href="login" ><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
              </c:if>
               
                
                
              </ul>
            </div>
          </div>
        </nav>
        
<!--    NAVIGATION BAR TOP ENDS  -->
<!-- Search Bar -->
<div class="container-fluid" style="margin-top:50px; border: 2px solid #f65819; background-color:#f65819; position:fixed; z-index:99; width:100%; ">
<div class="row">
<div class="container" style="margin-top: 5px; margin-bottom: 5px; ">
<div class="row">

<div class="col-xs-12 col-md-12">
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
</div>


      
<!--   Bottom Div Bar   -->
<nav class="navbar navbar-inverse navbar-fixed-bottom">
          <div class="container-fluid">
            

            
              <ul class="nav navbar-nav hidden-xs">
				<li><a>Today's Message :</a></li>
                <li><a><marquee>Welcome To MiniKart. Enjoy Your Shopping Experience</marquee></a></li>
                <li><a href="#"><i class="glyphicon glyphicon-envelope"></i></a></li>
              </ul>
              
              <ul class="nav navbar-nav navbar-right pull-right">
                <li onclick="scrolltop()"><a><span class="glyphicon glyphicon-arrow-up"></span></a></li>
              </ul>
            </div>
        </nav>         
                   


                  
         
<!--   Second Div Bar/Search Bar Ends   -->






<!--    SIDE BAR WRAPPER / ALL CONTENT GOES IN HERE FOR RESPONSIVENESS  -->
 
    <div id="wrapper">
        
<!--    SIDE BAR  -->
<%@include file="CategorySidebar.jsp" %>


<script type="text/javascript">   

function scrolltop()
{
	window.scrollTo(0,0);
}
//          Toggle Button Script 
      $("#menu-toggle, #menu-toggle-2").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
      });
          
    </script>
    
    
<!--	PAGE CONTENT WRAPPER / ALL PRODUCT CONTENT IN HERE	-->

      <div id="page-content-wrapper" style="top:100px">