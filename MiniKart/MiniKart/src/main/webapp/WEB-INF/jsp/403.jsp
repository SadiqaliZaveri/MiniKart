<%@include file="Header.jsp" %>
<div class="container">
<h1 class="text-center blink_me color">You Are Not Authorized To View This Page.</h1>
</div>

<div class="container pushfooter">

<h3 class="text-center color">Please Login With A Valid Account.</h3>
</div>
<%@include file="Footer.jsp" %>	
<script>
$("#wrapper").toggleClass("toggled");

(function blink() { 
	  $('.blink_me').fadeOut(500).fadeIn(500, blink); 
	})();
</script>