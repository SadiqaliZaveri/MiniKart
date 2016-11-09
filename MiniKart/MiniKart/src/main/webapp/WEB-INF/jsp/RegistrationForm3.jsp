<%@include file="Header.jsp" %>
<div class="container pushfooter theme" style="max-width:500px;">
  <blockquote>
    <h4>User Details | 1-4</h4></blockquote>
  <form:form modelAttribute="userDetails">
    <div class="form-group">
      <label for="username">UserName:<span class="color">
      <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('username')}" var="err">
	  ${err.text}
	  </c:forEach></span></label>
      <form:input path="username" cssClass="form-control" id="username" maxlength="255"/>
    </div>
    <div class="form-group">
      <label for="password">Password:<span class="color">
      <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('password')}" var="err">
	  ${err.text}
	  </c:forEach>
	  </span>
      </label>
      <form:password path="password" cssClass="form-control" id="password" maxlength="255" />
    </div>
    <div class="form-group">
      <label for="EmailId">Email:<span class="color">
      <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('emailid')}" var="err">
	  ${err.text}
	  </c:forEach>
	  </span>
      </label>
      <form:input path="emailId" cssClass="form-control" id="EmailId" maxlength="255"/>
    </div>
    <div class="form-group">
      <label for="FirstName">First Name:<span class="color">
      <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('firstname')}" var="err">
	  ${err.text}
	  </c:forEach>
	  </span>
      </label>
      <form:input path="firstName" cssClass="form-control" id="FirstName" maxlength="255"/>
    </div>
    <div class="form-group">
      <label for="LastName">Last Name:<span class="color">
      <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('lastname')}" var="err">
	  ${err.text}
	  </c:forEach>
	  </span>
      </label>
      <form:input path="lastName" cssClass="form-control" id="LastName" maxlength="255"/>
    </div>
    <div class="form-group">
      <label for="contact_no">Contact Number:<span class="color">
      <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('contactno')}" var="err">
	  ${err.text}
	  </c:forEach>
	  </span>
      </label>
      <form:input path="contactNo" cssClass="form-control" id="contact_no" />
    </div>
    <div class="form-group">
      <label for="alternateContactNo">Alternate Contact Number:
      </label>
      <form:input path="alternateContactNo" cssClass="form-control" id="alternateContactNo" maxlength="255"/>
    </div>
    <div class="form-grouo">
    <button name="_eventId_submit" type="submit" class="btn btn-warning pull-right"><i class="glyphicon glyphicon-arrow-right"></i> Continue</button>
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
