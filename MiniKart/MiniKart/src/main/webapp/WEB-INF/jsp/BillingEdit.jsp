<%@include file="Header.jsp" %>     
<hr>
<blockquote><h4>Edit Billing Details</h4></blockquote>
<div class="container">
<form:form cssClass="form" method="POST" action="editbillingdetails" modelAttribute="billingAddress">
<form:input path="billingAddressId" hidden="true"/>




<div class="form-group tenpxtop">
      <label for="City">City:</label>
      <form:input path="city" cssClass="form-control" id="City" maxlength="255"  />
    </div>
    <div class="form-group tenpxtop">
      <label for="State">State:
      </label>
      <form:input path="state" cssClass="form-control" id="State" maxlength="255" />
    </div>
    <div class="form-group tenpxtop">
      <label for="Pincode">Pincode:
      </label>
      <form:input path="pinCode" cssClass="form-control" id="Pincode" maxlength="255" />
    </div>
    <div class="form-group tenpxtop">
      <label for="District">District:
      </label>
      <form:input path="district" cssClass="form-control" id="District" maxlength="255"/>
    </div>
    <div class="form-group tenpxtop">
      <label for="Landmark">Landmark:
      </label>
      <form:input path="landmark" cssClass="form-control" id="Landmark" maxlength="255"/>
    </div>
    <div class="form-group tenpxtop">
      <label for="Address">Address:
      </label>
      <form:textarea path="address" cssClass="form-control" id="Address" maxlength="255" cols="50" />
    </div>
    
<div class="form-group tenpxtop">
<button type="submit" class="btn btn-warning"><i class="glyphicon glyphicon-ok"> Edit</i></button>
</div>
<div class="form-group tenpxtop">
<a href="panel"><button type="button" class="btn btn-success"><i class="glyphicon glyphicon-arrow-left"> Back</i></button></a>
</div>
</form:form>
</div>


<script>
$("#wrapper").toggleClass("toggled");
</script>
<!--      FOOTER STARTS     -->

<%@include file="Footer.jsp" %>
		

<!--      FOOTER ENDS     -->




