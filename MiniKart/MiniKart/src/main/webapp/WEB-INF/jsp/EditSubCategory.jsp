
<%@include file="Header.jsp" %>
      



<hr>
<blockquote><h4>Add Sub-Category</h4></blockquote>
<div class="container-fluid">
<form:form cssClass="form-inline" method="POST" action="add/subcategories" modelAttribute="subCategory">
<div class="form-group">
<form:input path="subCategoryId" hidden="true"/>
<label for="Sub-Category Name">Sub-Category Name:</label>
<form:input path="subCategoryName" cssClass="form-control" id="Sub-Category Name" />
</div>
<div class="form-group">
<label class="labelspace">Select Category:</label>
<form:select cssClass="form-control" path="category.categoryName" items="${categoryListNormal}" itemValue="categoryName" itemLabel="categoryName"> 
</form:select>
</div>
<div class="form-group">
<button type="submit" class="btn btn-warning">Submit</button>
</div>
<div class="form-group">
<button type="button" class="btn btn-success">Check</button>
</div>
</form:form>
</div>

<%@include file="SubCategoryListModal.jsp" %>
<!--      FOOTER STARTS     -->

<%@include file="Footer.jsp" %>
		

<!--      FOOTER ENDS     -->
          
