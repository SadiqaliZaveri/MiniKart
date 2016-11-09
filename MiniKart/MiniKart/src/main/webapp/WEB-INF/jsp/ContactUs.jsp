<%@include file="Header.jsp" %>
<div class="container-fluid pushfooter">
<div class="row">
<div class="col-xs-12" >
<h2 style="background-color:#263238; color:white; text-align:center">CONTACT ADDRESS</h2>
<hr>

<iframe id="map" class="maplock" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15267858.96585908!2d73.7507000526077!3d20.892007766328785!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30635ff06b92b791%3A0xd78c4fa1854213a6!2sIndia!5e0!3m2!1sen!2sin!4v1478361759491" width="100%" height="450" style="border:2px solid #263238;" allowfullscreen></iframe>

<hr>
</div>
</div>


	<div class="row text-center">
		<div class="col-sm-3 col-xs-12 first-box">
        <h1><span class="glyphicon glyphicon-earphone"></span></h1>
        <h3>Phone</h3>
        <p>+123-456-789-10</p><br>
    </div>
    <div class="col-sm-3 col-xs-12 second-box">
        <h1><span class="glyphicon glyphicon-home"></span></h1>
        <h3>Location</h3>
        <p>India - Maharastra - Mumbai</p><br>
    </div>
    <div class="col-sm-3 col-xs-12 third-box">
        <h1><span class="glyphicon glyphicon-send"></span></h1>
        <h3>E-mail</h3>
        <p>minikartshopping@gmail.com</p><br>
    </div>
    <div class="col-sm-3 col-xs-12 fourth-box">
    	<h1><span class="glyphicon glyphicon-leaf"></span></h1>
        <h3>Web</h3>
        <p>www.minikart.com</p><br>
    </div>
	</div>

</div>

<script>
$(document).ready(function() {
	$(".col-xs-12").click(function () {
	   
		$("#map").toggleClass("maplock");
	  });
});

$("#wrapper").toggleClass("toggled");



</script>
<%@include file="Footer.jsp" %>