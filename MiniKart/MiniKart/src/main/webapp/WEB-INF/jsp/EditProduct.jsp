
<%@include file="Header.jsp" %>
      


<hr>
<blockquote><h4>Edit Product</h4></blockquote>
<div class="container-fluid">
<form:form method="POST" action="add/products" modelAttribute="product">
<div class="form-group">
<form:input path="productId" hidden="true" />
<label for="Product Name">Product Name:</label>
<form:input path="productName" cssClass="form-control" id="Product Name" />
</div>
<div class="form-group">
<label for="Product Stock">Product Stock:</label>
<form:input path="productStock" cssClass="form-control" id="Product Stock" />
</div>
<div class="form-group">
<label class="labelspace">Select Category:</label>
<form:select cssClass="form-control" path="category.categoryName" items="${categoryListNormal}" itemValue="categoryName" itemLabel="categoryName"> 
</form:select>
</div>
<div class="form-group">
<label class="labelspace">Select Sub-Category:</label>
<form:select cssClass="form-control" path="subCategory.subCategoryName" items="${subCategoryListNormal}" itemValue="subCategoryName" itemLabel="subCategoryName"> 
</form:select>
</div>
<div class="form-group">
<label class="labelspace">Select Supplier:</label>
<form:select cssClass="form-control" path="supplier.supplierName" items="${supplierListNormal}" itemValue="supplierName" itemLabel="supplierName"> 
</form:select>
</div>

<div class="form-group">
<button type="submit" class="btn btn-warning">Submit</button>
</div>
<div class="form-group">
<button href="#productModal" data-toggle="modal" type="button" class="btn btn-success">Check</button>

</div>
</form:form>
</div>


<%@include file="ProductListModal.jsp" %>
<!--      FOOTER STARTS     -->

<%@include file="Footer.jsp" %>
		

<!--      FOOTER ENDS     -->
          
