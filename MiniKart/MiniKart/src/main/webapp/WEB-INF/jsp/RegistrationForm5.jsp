<%@include file="Header.jsp" %>
<div class="container pushfooter theme" style="max-width:500px;">
  <blockquote>
    <h4>Billing Details | 3-4 <span class="color">(optional)</span></h4>
  </blockquote>
  <form:form modelAttribute="billingAddress">
    <div class="form-group">
      <label for="State">State:<span class="color">
      <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('state')}" var="err">
	  ${err.text}
	  </c:forEach>
	  </span>
      </label>
      <form:input path="state" cssClass="form-control" id="State" maxlength="255"/>
    </div>
    <div class="form-group">
      <label for="City">City:<span class="color">
      <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('city')}" var="err">
	  ${err.text}
	  </c:forEach>
	  </span>
     
      </label>
      <form:input path="city" cssClass="form-control" id="City" maxlength="255"/>
    </div>
    <div class="form-group">
      <label for="District">District:<span class="color">
      <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('district')}" var="err">
	  ${err.text}
	  </c:forEach>
	  </span>
      
      </label>
      <form:input path="district" cssClass="form-control" id="District" maxlength="255"/>
    </div>
    <div class="form-group">
      <label for="Landmark">Landmark:<span class="color">
      <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('landmark')}" var="err">
	  ${err.text}
	  </c:forEach>
	  </span>

      </label>
      <form:input path="landmark" cssClass="form-control" id="Landmark" maxlength="255"/>
    </div>
    <div class="form-group">
      <label for="Address">Address:<span class="color">
      <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('address')}" var="err">
	  ${err.text}
	  </c:forEach>
	  </span>
     
      </label>
      <form:input path="address" cssClass="form-control" id="Address" maxlength="255"/>
    </div>
    <div class="form-group">
      <label for="Pincode">Pincode:<span class="color">
      <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('pincode')}" var="err">
	  ${err.text}
	  </c:forEach>
	  </span>
      
      </label>
      <form:input path="pinCode" cssClass="form-control" id="Pincode" maxlength="255"/>
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
