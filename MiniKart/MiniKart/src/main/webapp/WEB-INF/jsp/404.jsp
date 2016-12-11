<%@include file="Header.jsp" %>


<div class="container pushfooter text-center">
<a href="home"><img class="animated infinite bounce tenpxtop" alt="Logo" src="resources/images/logo.png" width="175" height="150"></a>
<div class="row"><a href="home"><div class="btn cartbutton tenpxtop">Back To Home</div></a></div>
<div class="container">
<h1 class="text-center blink_me color">Error 404. Resource Not Found.</h1>
</div>
</div>
<%@include file="Footer.jsp" %>	
<script>
$("#wrapper").toggleClass("toggled");

(function blink() { 
	  $('.blink_me').fadeOut(500).fadeIn(500, blink); 
	})();
</script>