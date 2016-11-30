
<%@include file="Header.jsp" %>
      
<hr>
<blockquote><h4>Edit Todays Message</h4></blockquote>
<div class="container-fluid">
<form:form cssClass="form-inline" method="POST" action="add/todaysmessage" modelAttribute="todaysMessage">
<form:input path="messageId" hidden="true"/>
<div class="form-group">
<label for="message">Message</label>
<form:textarea cssClass="form-control" path="message" id="message" cols="50" maxlength="255"/>
</div>
<div class="form-group">
<button type="submit" class="btn btn-warning"><i class="glyphicon glyphicon-ok"> Edit</i></button>
</div>
<div class="form-group">
<a href="admin"><button type="button" class="btn btn-success"><i class="glyphicon glyphicon-arrow-left"> Back</i></button></a>
</div>
</form:form>
</div>


<script>
$("#wrapper").toggleClass("toggled");
</script>
<!--      FOOTER STARTS     -->

<%@include file="Footer.jsp" %>
		

<!--      FOOTER ENDS     -->
          
