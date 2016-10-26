<%@include file="Header.jsp" %>
<div class="container pushfooter theme" style="max-width:500px;">
  <blockquote>
    <h4>Register</h4></blockquote>
  <form:form method="POST" action="user" modelAttribute="user">
    <div class="form-group">
      <label for="username">UserName:</label>
      <form:input path="username" cssClass="form-control" id="username" />
    </div>
    <div class="form-group">
      <label for="password">Password:</label>
      <form:password path="password" cssClass="form-control" id="password" />
    </div>
    <div class="form-group">
      <label for="EmailId">Email_id:</label>
      <form:input path="emailId" cssClass="form-control" id="EmailId" />
    </div>
    <div class="form-group">
      <label for="FirstName">First Name:</label>
      <form:input path="firstName" cssClass="form-control" id="FirstName" />
    </div>
    <div class="form-group">
      <label for="LastName">Last Name:</label>
      <form:input path="lastName" cssClass="form-control" id="LastName" />
    </div>
    <div class="form-group">
      <label for="contact_no">Contact Number:</label>
      <form:input path="contactNo" cssClass="form-control" id="contact_no" />
    </div>
    <div class="form-group">
      <label for="alternateContactNo">Alternate Contact Number:</label>
      <form:input path="alternateContactNo" cssClass="form-control" id="alternateContactNo" />
    </div>
    <form:input type ="hidden" path="shippingAddress.landmark"/>
	<form:input type="hidden" path="billingAddress.landmark"/>
    <button type="submit" class="btn btn-warning pull-right"><i class="glyphicon glyphicon-arrow-right"></i> Continue</button>
  </form:form>
</div>

<script>
$("#wrapper").toggleClass("toggled");
</script> 

<!--      FOOTER STARTS     -->

<%@include file="Footer.jsp" %>
		

<!--      FOOTER ENDS     -->
