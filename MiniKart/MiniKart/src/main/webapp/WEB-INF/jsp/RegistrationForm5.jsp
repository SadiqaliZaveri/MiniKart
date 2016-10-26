<%@include file="Header.jsp" %>
<div class="container pushfooter theme" style="max-width:500px;">
  <blockquote>
    <h4>Billing Details | 3-4</h4>
  </blockquote>
  <form:form modelAttribute="billingAddress">
    <div class="form-group">
      <label for="State">State:
      </label>
      <form:input path="state" cssClass="form-control" id="State" />
    </div>
    <div class="form-group">
      <label for="City">City:
     
      </label>
      <form:input path="city" cssClass="form-control" id="City" />
    </div>
    <div class="form-group">
      <label for="District">District:
      
      </label>
      <form:input path="district" cssClass="form-control" id="District" />
    </div>
    <div class="form-group">
      <label for="Landmark">Landmark:

      </label>
      <form:input path="landmark" cssClass="form-control" id="Landmark" />
    </div>
    <div class="form-group">
      <label for="Address">Address:
     
      </label>
      <form:input path="address" cssClass="form-control" id="Address" />
    </div>
    <div class="form-group">
      <label for="Pincode">Pincode:
      
      </label>
      <form:input path="pinCode" cssClass="form-control" id="Pincode" />
    </div>
    <div class="form-group">
    <button name="_eventId_submit" type="submit" class="btn btn-warning pull-right labelspace"><i class="glyphicon glyphicon-arrow-right"></i> Continue</button>
    <button name="_eventId_back" type="submit" class="btn btn-warning pull-right "><i class="glyphicon glyphicon-arrow-left"></i> Back</button>
    <button name="_eventId_cancel" type="submit" class="btn btn-danger pull-left"><i class="glyphicon glyphicon-remove"></i> Cancel</button>
    </div>
  </form:form>
</div>

<script>
$("#wrapper").toggleClass("toggled");
</script> 

<!--      FOOTER STARTS     -->

<%@include file="Footer.jsp" %>
		

<!--      FOOTER ENDS     -->
