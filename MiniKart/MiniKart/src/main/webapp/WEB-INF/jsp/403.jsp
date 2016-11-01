<%@include file="Header.jsp" %>
<div class="container">
<h1 class="pushfooter text-center blink_me color">You Are Not Authorized To View This Page.</h1></div>
<%@include file="Footer.jsp" %>	
<script>
$("#wrapper").toggleClass("toggled");

(function blink() { 
	  $('.blink_me').fadeOut(500).fadeIn(500, blink); 
	})();
</script>