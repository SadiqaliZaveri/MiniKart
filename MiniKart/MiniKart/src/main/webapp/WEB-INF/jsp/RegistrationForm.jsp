<%@include file="Header.jsp" %>

<blockquote><h4>Register</h4></blockquote>
<div class="container">
<form:form method="POST" action="add/register" modelAttribute="userDetails">
<div class="form-group">
<label for="username">UserName:</label>
<form:input path="username" cssClass="form-control" id="username"/>
</div>
<div class="form-group">
<label for="password">Password:</label>
<form:password path="password" cssClass="form-control" id="password"/>
</div>
<div class="form-group">
<label for="confirmpassword">Confirm Password:</label>
<form:password path="password" cssClass="form-control" id="confirmpassword"/>
</div>
<div class="form-group">
<label for="EmailId">Email_id:</label>
<form:input path="emailId" cssClass="form-control" id="EmailId"/>
</div>
<div class="form-group">
<label for="FirstName">First Name:</label>
<form:input path="firstName" cssClass="form-control" id="FirstName"/>
</div>
<div class="form-group">
<label for="LastName">Last Name:</label>
<form:input path="lastName" cssClass="form-control" id="LastName"/>
</div>
<div class="form-group">
<label for="contact_no">Contact Number:</label>
<form:input path="contactNo" cssClass="form-control" id="contact_no"/>
</div>

<label for="LastName">You are:</label>
<div class="form-group">

<form:radiobutton path="userRole.roleId" value="1" checked="true"/>Buyer
</div>
<div class="form-group">
<form:radiobutton path="userRole.roleId" value="3" />Supplier
</div>
<div class="form-group">
<button type="submit" class="btn btn-warning" value="Submit">Submit</button>
</div>
</form:form>
</div>

<!--      FOOTER STARTS     -->

<%@include file="Footer.jsp" %>
		

<!--      FOOTER ENDS     -->
          
      </div>
<!--    PAGE CONTENT WRAPPER ENDS   -->

    </div>
<!--    SIDE BAR WRAPPER ENDS  -->
