
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
<div class="form-group tenpxtop" >
<label for="Product Price">Product Price:</label>
<form:input path="productPrice" cssClass="form-control" id="Product Price" />
</div>
<div class="form-group tenpxtop" >
<label for="Product DPrice">Product Discount Price:</label>
<form:input path="productDiscountPrice" cssClass="form-control" id="Product DPrice" />
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
          
