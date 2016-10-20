
<%@include file="Header.jsp" %>
      


  
<hr>
<blockquote><h4>Edit Supplier</h4></blockquote>
<div class="container-fluid">
<form:form cssClass="form-inline" method="POST" action="add/suppliers" modelAttribute="supplier">
<div class="form-group">
<label for="Supplier Name">Supplier Name:</label>
<form:input path="supplierId" hidden="true"/>
<form:input path="supplierName" cssClass="form-control" id="Supplier Name"/>
</div>
<div class="form-group">
<label class="labelspace" for="Supplier Description">Supplier Description:</label>
<form:input path="supplierDescription" cssClass="form-control" id="Supplier Description"/>
</div>
<div class="form-group">
<button type="submit" class="btn btn-warning">Submit</button>
</div>
<div class="form-group">
<button type="button" class="btn btn-success">Check</button>
</div>
</form:form>
</div>

<%@include file="SupplierListModal.jsp" %>
<!--      FOOTER STARTS     -->

<%@include file="Footer.jsp" %>
		

<!--      FOOTER ENDS     -->
          
 