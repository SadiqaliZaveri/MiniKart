<%@include file="Header.jsp" %>     
<hr>
<blockquote><h4>Edit User Details</h4></blockquote>
<div class="container">
<form:form cssClass="form" method="POST" action="edituserdetails" modelAttribute="userDetails">
<form:input path="userId" hidden="true"/>
<form:input path="cartId" hidden="true"/>


<div class="form-group tenpxtop">
      <label for="username">UserName:</label>
      <form:input path="username" cssClass="form-control" id="username" maxlength="255" readonly="true" />
    </div>
    <div class="form-group tenpxtop">
      <label for="password">Password:
      </label>
      <form:input path="password" cssClass="form-control" id="password" maxlength="255" />
    </div>
    <div class="form-group tenpxtop">
      <label for="password">Gender
      </label>
      <form:select path="gender" cssClass="form-control">
   		<form:option value="Male" label="Male" selected="true"/>
   		<form:option value="Female" label="Female"/>
		</form:select>
    </div>
   
    
    <div class="form-group tenpxtop">
      <label for="EmailId">Email:
      </label>
      <form:input path="emailId" cssClass="form-control" id="EmailId" maxlength="255"/>
    </div>
    <div class="form-group tenpxtop">
      <label for="FirstName">First Name:
      </label>
      <form:input path="firstName" cssClass="form-control" id="FirstName" maxlength="255"/>
    </div>
    <div class="form-group tenpxtop">
      <label for="LastName">Last Name:
      </label>
      <form:input path="lastName" cssClass="form-control" id="LastName" maxlength="255"/>
    </div>
    <div class="form-group tenpxtop">
      <label for="contact_no">Contact Number:
      </label>
      <form:input path="contactNo" cssClass="form-control" id="contact_no" />
    </div>
    <div class="form-group tenpxtop">
      <label for="alternateContactNo">Alternate Contact Number:
      </label>
      <form:input path="alternateContactNo" cssClass="form-control" id="alternateContactNo" maxlength="255"/>
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




