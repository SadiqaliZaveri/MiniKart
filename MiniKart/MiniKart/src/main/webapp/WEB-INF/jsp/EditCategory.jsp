
<%@include file="Header.jsp" %>
      
<hr>
<blockquote><h4>Edit Category</h4></blockquote>
<div class="container-fluid">
<form:form cssClass="form-inline" method="POST" action="add/categories" modelAttribute="category">
<form:input path="categoryId" hidden="true"/>
<div class="form-group">
<label for="category name">Category Name</label>
<form:input cssClass="form-control" path="categoryName" id="category name"/>
</div>
<div class="form-group">
<label for="category description">Category Description</label>
<form:input cssClass="form-control" path="categoryDescription" id="category description"/>
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
          
