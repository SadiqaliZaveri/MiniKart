<%@include file="Header.jsp" %>
<div class="container pushfooter theme" style="max-width:500px;">
  <blockquote>
    <h4>Confirm Details | 4-4</h4></blockquote>
  <form:form modelAttribute="userDetails">
    <div class="form-group">
      <label for="username">UserName:
      </label>
      <input type="text" class="form-control" id="username" readonly="readonly" value="${userDetails.username}"/>
    </div>
    <div class="form-group">
      <label for="EmailId">Email_id:
      </label>
      <input type="text" class="form-control" id="EmailId" readonly="readonly" value="${userDetails.emailId}"/>
    </div>
    <div class="form-group">
      <label for="FirstName">First Name:
      </label>
      <input type="text" class="form-control" id="FirstName" readonly="readonly" value="${userDetails.firstName}"/>
    </div>
    <div class="form-group">
      <label for="LastName">Last Name:
      </label>
      <input type="text" class="form-control" id="LastName" readonly="readonly" value="${userDetails.lastName}"/>
    </div>
    <div class="form-group">
      <label for="contact_no">Contact Number:
      </label>
      <input type="text" class="form-control" id="contact_no" readonly="readonly" value="${userDetails.contactNo}"/>
    </div>
    
    <div class="form-group">
      <label for="alternateContactNo">Alternate Contact Number:</label>
      <input type="text" class="form-control" id="alternateContactNo" readonly="readonly" value="${userDetails.alternateContactNo}"/>
    </div>
    <div class="form-group">
    <button name="_eventId_submit" type="submit" class="btn btn-success pull-right labelspace"><i class="glyphicon glyphicon-ok"></i> Confirm</button>
    <button name="_eventId_edit" type="submit" class="btn btn-warning pull-right "><i class="glyphicon glyphicon-repeat"></i> Edit</button>
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
