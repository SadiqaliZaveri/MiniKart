
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
<input type="submit" class="btn btn-warning" value="Submit"/>
</div>
<div class="form-group">
<button type="button" class="btn btn-success">Check</button>
</div>
</form:form>
</div>

<script type="text/javascript">
var app = angular.module('Caller', []);
var modelAttributeName = ${categoryListJson};
app.controller('CallerController', function($scope) {
  $scope.getCategory = modelAttributeName;
  $scope.orderByMe = function(x) {
	    $scope.myOrderBy = x;
	  }
});

</script>

<%@include file="CategoryListModal.jsp" %>
<!--      FOOTER STARTS     -->

<%@include file="Footer.jsp" %>
		

<!--      FOOTER ENDS     -->
          
      </div>
<!--    PAGE CONTENT WRAPPER ENDS   -->

    </div>
<!--    SIDE BAR WRAPPER ENDS  -->
