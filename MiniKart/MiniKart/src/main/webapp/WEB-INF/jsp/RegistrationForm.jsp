<%@include file="Header.jsp" %>
<div class="container pushfooter theme" style="max-width:500px;">
  <blockquote>
    <h4>Register</h4></blockquote>
  <form:form method="POST" action="adduser" modelAttribute="user">
    <div class="form-group">
      <label for="username">UserName:</label>
      <form:input path="username" cssClass="form-control" id="username" />
    </div>
    <div class="form-group">
      <label for="password">Password:</label>
      <form:password path="password" cssClass="form-control" id="password" />
    </div>
    <button type="submit" class="btn btn-warning pull-right"><i class="glyphicon glyphicon-arrow-right"></i> Continue</button>
  </form:form>
</div>

<script>
$("#wrapper").toggleClass("toggled");
</script> 

<!--      FOOTER STARTS     -->

<%@include file="Footer.jsp" %>
		

<!--      FOOTER ENDS     -->
