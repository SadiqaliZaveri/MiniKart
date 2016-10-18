
<div class="modal fade" id="subCategoryModal">
<div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
          <h3 class="modal-title">Sub-Category List</h3>
        </div>
        <div class="modal-body">
        <div class="form-group">
        <label>Search:</label>
        <input class="form-control" ng-model="test">
        </div>
        <div class="form-group">
              <label for="search">Items per page:</label>
              <input type="number" min="1" max="100" class="form-control" ng-model="maxsize" ng-init="maxsize=10" >
            </div>
          <table class="table table-striped" id="tblGrid">
            <thead id="tblHead">
              <tr>
                <th ng-click="orderByMe('subCategoryId')">SubCategory ID</th>
                <th ng-click="orderByMe('categoryId')">Category ID</th>
                <th ng-click="orderByMe('subCategoryName')">SubCategory Name</th>
                <th></th>
                <th></th>
              </tr>
            </thead>
            <tbody>
            <tr ng-repeat="x in getSubCategory | filter: test | orderBy:myOrderBy | limitTo : maxsize">
            <td>{{x.subCategoryId}}</td>
            <td>{{x.categoryId}}</td>
            <td>{{x.subCategoryName}}</td>
            <td><a href="editsub-{{x.subCategoryId}}">Edit</a></td>
            <td><a href="deletesub-{{x.subCategoryId}}">Delete</a></td>
            </tr>
            </tbody>
          </table>
		</div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default " data-dismiss="modal">Close</button>
          
        </div>
				
      </div>
    </div>
  </div>