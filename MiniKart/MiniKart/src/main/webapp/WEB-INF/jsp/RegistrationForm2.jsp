<%@include file="Header.jsp" %>
<div class="container pushfooter theme" style="max-width:500px;">
  <blockquote>
    <h4>Register</h4>
  </blockquote>
  <form:form method="POST" action="add/register" modelAttribute="userDetails">
    <form:input type="hidden" path="username" value="${sessionScope.username}" />
    <form:input type="hidden" path="userId" value="${sessionScope.userId}" />
    <form:input type="hidden" path="cartId" value="${sessionScope.userId}" />
    <form:input type="hidden" path="password" value="${sessionScope.password}" />
    <form:input type="hidden" path="userRole.userId" value="${sessionScope.userId}" />

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

    <label for="LastName">You are:</label>
    <div class="form-group">

      <form:radiobutton path="userRole.roleId" value="1" checked="true" />Buyer
    </div>
    <div class="form-group">
      <form:radiobutton path="userRole.roleId" value="3" />Supplier
    </div>
    <div class="form-group">

      <form:input type="hidden" path="shippingaddress.landmark" />
    </div>
    <form:input type="hidden" path="billingaddress.landmark" />
    <button type="submit" class="btn btn-warning pull-right">Submit</button>

  </form:form>
</div>


<script>
$("#wrapper").toggleClass("toggled");
</script> 

<!--      FOOTER STARTS     -->

<%@include file="Footer.jsp" %>
		

<!--      FOOTER ENDS     -->
          
