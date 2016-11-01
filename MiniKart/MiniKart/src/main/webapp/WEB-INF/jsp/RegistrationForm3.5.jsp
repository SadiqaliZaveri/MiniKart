<%@include file="Header.jsp" %>
<div class="container pushfooter theme" style="max-width:500px;" >
  <blockquote>
    <h4>User Details | 1-4</h4></blockquote>
<form:form modelAttribute="userRole">

<div class="form-group" style="padding-bottom:25px;">
<h3 style="padding-bottom:15px;">Who are you?</h3>  
<div class="radio" style=" border-left:1px solid #f65819; ">

<label class="radio-inline extrapadding labelspace">
      <form:radiobutton  path="roleId" value="1" checked="true" onclick="OrgHide()"/>Buyer
      
</label>


<label class="radio-inline extrapadding">
	  <form:radiobutton  path="roleId" value="3" onclick="OrgHide()"/>Supplier
	  
</label>

</div>
</div>

       <div class="form-group">
    <button id="supp" name="_eventId_submitsupp" type="submit" class="btn btn-warning pull-right labelspace"><i class="glyphicon glyphicon-arrow-right"></i> Supplier</button>
    <button id="ship"name="_eventId_submitship" type="submit" class="btn btn-warning pull-right"><i class="glyphicon glyphicon-arrow-right"></i> Buyer</button>
    <button name="_eventId_cancel" type="submit" class="btn btn-danger pull-left"><i class="glyphicon glyphicon-remove"></i> Cancel</button>
    </div>
  </form:form>
</div>

<script>
$("#wrapper").toggleClass("toggled");
$("#supp").hide();
OrgHide();

function OrgHide() {
	
	  
		  
	    $('input[type="radio"]').click(function() {
	      if ($(this).attr("value") == "1") {
	    	
	    	$("#ship").show();
	        $("#supp").hide();
	        
	      } else {
	    	 
	    	  $("#supp").show();
	    	  $("#ship").hide();
		      
	      }

	    });
	 
	}


</script> 

<!--      FOOTER STARTS     -->

<%@include file="Footer.jsp" %>
		

<!--      FOOTER ENDS     -->
