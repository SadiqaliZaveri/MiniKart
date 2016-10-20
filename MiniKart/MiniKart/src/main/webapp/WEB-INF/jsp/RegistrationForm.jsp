<%@include file="Header.jsp" %>

<blockquote><h4>Register</h4></blockquote>
<div class="container" style="max-width:500px;">
<form:form method="POST" action="adduser" modelAttribute="user">
<div class="form-group">
<label for="username">UserName:</label>
<form:input path="username" cssClass="form-control" id="username"/>
</div>
<div class="form-group">
<label for="password">Password:</label>
<form:password path="password" cssClass="form-control" id="password"/>
</div>
<button type="submit" class="btn btn-warning" value="Submit">Submit</button>
</form:form>
</div>

<!--      FOOTER STARTS     -->

<%@include file="Footer.jsp" %>
		

<!--      FOOTER ENDS     -->
