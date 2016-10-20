<%@include file="Header.jsp" %>

<blockquote><h4>Add Info</h4></blockquote>
<div class="container" style="max-width:500px;">
<form:form method="POST" action="addprodspec-${productId}" modelAttribute="productSpecification">



<div class="form-group">
<form:input path="productId" hidden="true"/>
<label for="productInches">Inches:</label>
<form:input path="productInches" cssClass="form-control" id="productInches"/>
</div>
<div class="form-group">
<label for="productColor">Color:</label>
<form:input path="productColor" cssClass="form-control" id="productColor"/>
</div>
<button type="submit" class="btn btn-warning" value="Submit">Submit</button>

</form:form>
</div>

<!--      FOOTER STARTS     -->

<%@include file="Footer.jsp" %>
		

<!--      FOOTER ENDS     -->
          
