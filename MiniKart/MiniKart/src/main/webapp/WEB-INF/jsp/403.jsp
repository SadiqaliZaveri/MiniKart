<%@include file="Header.jsp" %>
<div class="container pushfooter text-center">
<a href="home"><img class="animated infinite wobble tenpxtop" alt="Logo" src="resources/images/logo.png" width="175" height="150"></a>
<div class="row"><a href="home"><div class="btn cartbutton tenpxtop">Please Login With A Valid Account</div></a></div>
<div class="container">
<h1 class="text-center blink_me color">Error 403. You Are Not Authorized To View This Page.</h1>
</div>
</div>
<%@include file="Footer.jsp" %>	
<script>
$("#wrapper").toggleClass("toggled");

(function blink() { 
	  $('.blink_me').fadeOut(500).fadeIn(500, blink); 
	})();
</script>