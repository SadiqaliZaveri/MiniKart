<%@include file="Header.jsp" %>

<div class="container">
  <div class="row">
         <form:form>
          <div class="form-actions">
            <button name="_eventId_submit" type="submit" class="btn btn-success pull-right labelspace"><i class="glyphicon glyphicon-ok"></i> Confirm</button>
            <button name="_eventId_cancel" type="submit" class="btn btn-danger pull-left"><i class="glyphicon glyphicon-remove"></i> Cancel</button>
          </div>
      </form:form>
      
    </div>
  </div>


<script>
$("#wrapper").toggleClass("toggled");
</script> 

<!--      FOOTER STARTS     -->

<%@include file="Footer.jsp" %>