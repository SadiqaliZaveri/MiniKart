
<%@include file="Header.jsp" %>
      


  
<hr>

<div class="container">
<blockquote><h4>Edit Supplier</h4></blockquote>
<form:form cssClass="form" method="POST" action="add/suppliers" modelAttribute="supplier">
<form:input path="supplierId" hidden="true"/>
<div class="form-group">
<label class="labelspace" for="Supplier Name">Supplier Name:</label>
<form:input path="supplierName" cssClass="form-control" id="Supplier Name" maxlength="255"/>
</div>
<div class="form-group">
<label class="labelspace" for="Supplier Description">Supplier Description:</label>
<form:input path="supplierDescription" cssClass="form-control" id="Supplier Description" maxlength="255"/>
</div>
<div class="form-group">
<label class="labelspace" for="Supplier State">State:</label>
<form:input path="state" cssClass="form-control" id="Supplier State" maxlength="255"/>
</div>
<div class="form-group">
<label class="labelspace" for="Supplier city">City:</label>
<form:input path="city" cssClass="form-control" id="Supplier city" maxlength="255"/>
</div>
<div class="form-group">
<label class="labelspace" for="Supplier district">District:</label>
<form:input path="district" cssClass="form-control" id="Supplier district" maxlength="255"/>
</div>
<div class="form-group">
<label class="labelspace" for="Supplier landmark">Landmark:</label>
<form:input path="landmark" cssClass="form-control" id="Supplier landmark" maxlength="255"/>
</div>
<div class="form-group">
<label class="labelspace" for="Supplier pincode">Pincode:</label>
<form:input path="pinCode" cssClass="form-control" id="Supplier pincode" maxlength="6"/>
</div>
<div class="form-group">
<label class="labelspace" for="Supplier address">Address:</label>
<form:input path="address" cssClass="form-control" id="Supplier address" maxlength="255"/>
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
          
 