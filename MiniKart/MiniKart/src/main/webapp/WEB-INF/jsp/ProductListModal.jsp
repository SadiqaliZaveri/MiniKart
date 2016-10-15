
<div class="modal fade" id="productModal">
<div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
          <h3 class="modal-title">Product List</h3>
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
                <th ng-click="orderByMe('productId')">Product ID</th>
                <th ng-click="orderByMe('categoryId')">Category ID</th>
                <th ng-click="orderByMe('subCategoryId')">SubCategory ID</th>
                <th ng-click="orderByMe('productName')">Product Name</th>
                <th ng-click="orderByMe('productStock')">Product Stock</th>
                <th></th>
                <th></th>
              </tr>
            </thead>
            <tbody>
            <tr ng-repeat="x in getProduct | filter: test | orderBy:myOrderBy | limitTo : maxsize">
            <td>{{x.productId}}</td>
            <td>{{x.categoryId}}</td>
            <td>{{x.subCategoryId}}</td>
            <td>{{x.productName}}</td>
            <td>{{x.productStock}} Units</td>
            <td><a href="editprod-{{x.productId}}">Edit</a></td>
            <td><a href="deleteprod-{{x.productId}}">Delete</a></td>
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