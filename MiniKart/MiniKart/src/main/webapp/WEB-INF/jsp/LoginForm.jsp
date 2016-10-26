<%@include file="Header.jsp" %>
                

<div class="container pushfooter theme" style="max-width:500px;">
  <blockquote>
    <h4>Login Details</h4></blockquote>
  <form method="POST" action="perform_login">
    <div class="form-group">
      <label for="username">UserName:</label>
      <input type="text" name="username" class="form-control" id="username" />
    </div>
    <div class="form-group">
      <label for="password">Password:</label>
      <input type="password" name="password" class="form-control" id="password" />
    </div>
    <button type="submit" class="btn btn-warning pull-right" value="Submit"><i class="glyphicon glyphicon-arrow-right"></i> Login</button>
  </form>
  <h2><% 
String errorString = (String) request.getAttribute("error");
if(errorString != null && errorString.trim().equals("true")){
out.println("Invalid Username/Password");	
}
%></h2>
</div>

<script>
  $("#wrapper").toggleClass("toggled");

</script>
          

<!--      FOOTER STARTS     -->

<%@include file="Footer.jsp" %>
		

<!--      FOOTER ENDS     -->
          
