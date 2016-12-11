 <div id="sidebar-wrapper">
  <ul class="sidebar-nav">
    <a id="menu-toggle" href="#" style="color:#f65819" class="btn btn-sm pull-right"><i class="glyphicon glyphicon-resize-full"></i></a>
    <li class="sidebar-brand text-center">
      FILTERS
    </li>
   
    <hr style="margin-top:0px;">
    
    <c:forEach var="category" items="${categoryListNormal}">
      <li>
        <div class="panel-group filters">
          <div class="panel panel-default">
            <a data-toggle="collapse" href="#collapse${category.categoryId}">
              <div class="panel-heading" >
                <h4 class="panel-title " >
          			<c:out value="${category.categoryName}"/>
          		</h4>
              </div>
            </a>
            <div id="collapse${category.categoryId}" class="panel-collapse collapse">
              <ul class="list-group">
                <c:forEach var="sc" items="${category.subCategory}">
                  <a href="filter?search=${sc.subCategoryName}">
                    <li class="list-group-item">
                      <c:out value="${sc.subCategoryName}" />
                      <p>
                    </li>
                  </a>
                </c:forEach>
              </ul>
            </div>
          </div>
        </div>
      </li>
    </c:forEach>
  </ul>
</div>
