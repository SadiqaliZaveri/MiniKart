<%@include file="Header.jsp" %>
<div class="container">
<h1 class="text-center blink_me color">Error 404. Oops you've have encountered an error.</h1>
</div>

<div class="container pushfooter">

<h3 class="text-center color"><a href="home">Back To Home</a></h3>
</div>
<%@include file="Footer.jsp" %>	
<script>
$("#wrapper").toggleClass("toggled");

(function blink() { 
	  $('.blink_me').fadeOut(500).fadeIn(500, blink); 
	})();
</script>