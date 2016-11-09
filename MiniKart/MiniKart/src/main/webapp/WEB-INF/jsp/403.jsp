<%@include file="Header.jsp" %>
<div class="container">
<h1 class="text-center blink_me color">You Are Not Authorized To View This Page.</h1>
</div>

<div class="container pushfooter">
<center>
<img src="resources/images/troll-face.png" style="width:300px; height:300px;"></center>
</div>
<%@include file="Footer.jsp" %>	
<script>
$("#wrapper").toggleClass("toggled");

(function blink() { 
	  $('.blink_me').fadeOut(500).fadeIn(500, blink); 
	})();
</script>