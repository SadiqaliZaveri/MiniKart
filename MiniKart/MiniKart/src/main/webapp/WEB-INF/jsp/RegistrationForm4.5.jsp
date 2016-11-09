<%@include file="Header.jsp" %>
<div class="container pushfooter theme" style="max-width:500px;">
  <blockquote>
    <h4>Supplier Details | 2-4</h4>
  </blockquote>
  <form:form modelAttribute="supplier">
  <div class="form-group">
      <label for="CompanyName">Company Name:
	  </label>
      <form:input path="supplierName" cssClass="form-control" id="CompanyName" maxlength="255"/>
    </div>
    <div class="form-group">
      <label for="supplierDescription">Supplier Description:
	  </label>
      <form:input path="supplierDescription" cssClass="form-control" id="supplierDescription" maxlength="255"/>
    </div>
    <div class="form-group">
      <label for="State">State:
	  </label>
      <form:input path="state" cssClass="form-control" id="State" maxlength="255"/>
    </div>
    <div class="form-group">
      <label for="City">City:
      </label>
      <form:input path="city" cssClass="form-control" id="City" maxlength="255"/>
    </div>
    <div class="form-group">
      <label for="District">District:
      </label>
      <form:input path="district" cssClass="form-control" id="District" maxlength="255"/>
    </div>
    <div class="form-group">
      <label for="Landmark">Landmark:
      </label>
      <form:input path="landmark" cssClass="form-control" id="Landmark" maxlength="255"/>
    </div>
    <div class="form-group">
      <label for="Address">Address:
      </label>
      <form:input path="address" cssClass="form-control" id="Address" maxlength="255"/>
    </div>
    <div class="form-group">
      <label for="Pincode">Pincode:
      </label>
      <form:input path="pinCode" cssClass="form-control" id="Pincode" maxlength="255"/>
    </div>
    <div class="form-group">
      <label for="URL">Company URL: 
      </label>
      <form:input path="companyUrl" cssClass="form-control" id="URL" maxlength="255"/>
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
