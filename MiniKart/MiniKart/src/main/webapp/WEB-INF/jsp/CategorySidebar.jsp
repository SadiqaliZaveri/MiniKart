 <div id="sidebar-wrapper">
  <ul class="sidebar-nav">
    <a id="menu-toggle" href="#" style="color:#f65819" class="btn btn-sm pull-right"><i class="glyphicon glyphicon-resize-full"></i></a>
    <li class="sidebar-brand">
      Filters
    </li>
    <hr>
    <hr>


    <c:forEach var="category" items="${categoryListNormal}">
      <li>
        <div class="panel-group filters">
          <div class="panel panel-default">
            <a data-toggle="collapse" href="#collapse${category.categoryId}">
              <div class="panel-heading" >
                <h4 class="panel-title" >
          			<c:out value="${category.categoryName}"/>
          		</h4>
              </div>
            </a>
            <div id="collapse${category.categoryId}" class="panel-collapse collapse">
              <ul class="list-group">
                <c:forEach var="sc" items="${category.subCategory}">
                  <a href="#">
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

<!--             <li> -->
<!--           <div class="panel-group filters"> -->
<!--     <div class="panel panel-default"> -->
<!--       <div class="panel-heading"> -->
<!--         <h4 class="panel-title"> -->
<!--           <a data-toggle="collapse" href="#collapse1">Mobiles</a> -->
<!--         </h4> -->
<!--       </div> -->
<!--       <div id="collapse1" class="panel-collapse collapse"> -->
<!--         <ul class="list-group"> -->
<!--           <li class="list-group-item">One</li> -->
<!--           <li class="list-group-item">Two</li> -->
<!--           <li class="list-group-item">Three</li> -->
<!--         </ul> -->
<!--       </div> -->
<!--     </div> -->
<!--   </div></li> -->
<!--   <li> -->
<!--           <div class="panel-group filters"> -->
<!--     <div class="panel panel-default"> -->
<!--       <div class="panel-heading"> -->
<!--         <h4 class="panel-title"> -->
<!--           <a data-toggle="collapse" href="#collapse2">laptops</a> -->
<!--         </h4> -->
<!--       </div> -->
<!--       <div id="collapse2" class="panel-collapse collapse"> -->
<!--         <ul class="list-group"> -->
<!--           <li class="list-group-item">One</li> -->
<!--           <li class="list-group-item">Two</li> -->
<!--           <li class="list-group-item">Three</li> -->
<!--         </ul> -->
<!--       </div> -->
<!--     </div> -->
<!--   </div></li> -->
        