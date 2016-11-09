<%@include file="Header.jsp" %>
                

<div class="container pushfooter theme" style="max-width:500px;">
  <blockquote>
    <h4>Login Details</h4></blockquote>
  <form method="POST" action="perform_login">
  
  
	  
  <c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
      <div class="alert alert-warning"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        
        <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}"/>.
        <c:remove var = "SPRING_SECURITY_LAST_EXCEPTION" scope = "session" />
      </div>
</c:if>

    <div class="form-group">
    
      <label for="username">UserName:</label>
      <input type="text" name="username" class="form-control" id="username" required/>
    </div>
    <div class="form-group">
      <label for="password">Password:</label>
      <input type="password" name="password" class="form-control" id="password" required/>
    </div>
    <button type="submit" class="btn btn-warning pull-right" value="Submit"><i class="glyphicon glyphicon-arrow-right"></i> Login</button>
  </form>
</div>

<script>
  $("#wrapper").toggleClass("toggled");
  
</script>
          

<!--      FOOTER STARTS     -->

<%@include file="Footer.jsp" %>
		

<!--      FOOTER ENDS     -->
          
