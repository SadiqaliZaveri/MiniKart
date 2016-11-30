<%@include file="Header.jsp" %>
<div class="container pushfooter theme" style="max-width:500px;">
  <blockquote>
    <h4>Confirm Billing Details | 2-4 
    <span class="color"><c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('dberror')}" var="err">
	  ${err.text}
	  </c:forEach></span>
    </h4>
    </blockquote>
  <form:form modelAttribute="billingAddress">
    <div class="form-group">
      <label for="username">State:
      </label>
      <input type="text" class="form-control" id="State" readonly="readonly" value="${billingAddress.state}"/>
    </div>
    <div class="form-group">
      <label for="EmailId">City:
      </label>
      <input type="text" class="form-control" id="City" readonly="readonly" value="${billingAddress.city}"/>
    </div>
    <div class="form-group">
      <label for="FirstName">District:
      </label>
      <input type="text" class="form-control" id="District" readonly="readonly" value="${billingAddress.district}"/>
    </div>
    <div class="form-group">
      <label for="LastName">LandMark:
      </label>
      <input type="text" class="form-control" id="LandMark" readonly="readonly" value="${billingAddress.landmark}"/>
    </div>
    <div class="form-group">
      <label for="contact_no">Address:
      </label>
      <input type="text" class="form-control" id="Address" readonly="readonly" value="${billingAddress.address}"/>
    </div>
    
    <div class="form-group">
      <label for="alternateContactNo">Pincode:</label>
      <input type="text" class="form-control" id="Pincode" readonly="readonly" value="${billingAddress.pinCode}"/>
    </div>
    <div class="form-group">
    <button name="_eventId_submit" type="submit" class="btn btn-success pull-right labelspace tenpxtop"><i class="glyphicon glyphicon-ok"></i> Confirm</button>
    <button name="_eventId_cancel" type="submit" class="btn btn-danger pull-left tenpxtop"><i class="glyphicon glyphicon-remove"></i> Cancel</button>
    <button name="_eventId_back" type="submit" class="btn btn-warning pull-right labelspace tenpxtop"><i class="glyphicon glyphicon-arrow-left"></i> Back</button>
    <button name="_eventId_same" data-toggle="tooltip" data-placement="bottom" type="submit" class="btn btn-warning pull-right labelspace tenpxtop" ><i class="glyphicon glyphicon-repeat"></i> Same</button>
    
    <button name="_eventId_edit" type="submit" class="btn btn-warning pull-right tenpxtop"><i class="glyphicon glyphicon-repeat"></i> Edit</button>
    
    </div>
  </form:form>
</div>

<script>
$("#wrapper").toggleClass("toggled");
</script> 

<!--      FOOTER STARTS     -->

<%@include file="Footer.jsp" %>
		

<!--      FOOTER ENDS     -->