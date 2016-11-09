
<%@include file="Header.jsp" %>
      


  
<hr>
<blockquote><h4>Edit Supplier</h4></blockquote>
<div class="container-fluid">
<form:form cssClass="form-inline" method="POST" action="add/suppliers" modelAttribute="supplier">
<div class="form-group">
<label for="Supplier Name">Supplier Name:</label>
<form:input path="supplierId" hidden="true"/>
<form:input path="supplierName" cssClass="form-control" id="Supplier Name" maxlength="255"/>
</div>
<div class="form-group">
<label class="labelspace" for="Supplier Description">Supplier Description:</label>
<form:input path="supplierDescription" cssClass="form-control" id="Supplier Description" maxlength="255"/>
</div>
<div class="form-group">
<button type="submit" class="btn btn-warning"><i class="glyphicon glyphicon-ok"> Edit</i></button>
</div>
<div class="form-group">
<a href="admin"><button type="button" class="btn btn-success"><i class="glyphicon glyphicon-arrow-left"> Back</i></button></a>
</div>
</form:form>
</div>


<!--      FOOTER STARTS     -->

<%@include file="Footer.jsp" %>
		

<!--      FOOTER ENDS     -->
          
 