
<div class="modal fade" id="productModal">
<div class="modal-dialog modal-lg">
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
              <select class="form-control" ng-model="maxsize" ng-init="maxsize=10">
			    <option ng-selected="true">10</option>
			    <option>20</option>
			    <option>30</option>
			    <option>40</option>
			  </select>
<!--               <input type="number" min="1" max="100" class="form-control" ng-model="maxsize" ng-init="maxsize=10" > -->
            </div>
            <div style="overflow: auto">
          <table class="table table-striped" id="tblGrid">
            <thead id="tblHead">
              <tr>
                <th ng-click="sort('productId')">Product ID</th>
                <th ng-click="sort('categoryId')">Category ID</th>
                <th ng-click="sort('subCategoryId')">SubCategory ID</th>
                <th ng-click="sort('productName')">Product Name</th>
                <th ng-click="sort('productStock')">Product Stock</th>
                <th>Product Image</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
            <tr dir-paginate="x in getProduct | filter: test | orderBy:sortKey:reverse |itemsPerPage: maxsize" pagination-id="Product">
            <td>{{x.productId}}</td>
            <td>{{x.categoryId}}</td>
            <td>{{x.subCategoryId}}</td>
            <td>{{x.productName}}</td>
            <td>{{x.productStock}} Units</td>
            <td><img src="resources/images/product{{x.productId}}.jpg" width="100px" height="50px"/></td>
            <td><a href="viewprod-{{x.productId}}">View</a></td>
            <td><a href="editprod-{{x.productId}}">Edit</a></td>
            <td><a href="deleteprod-{{x.productId}}">Delete</a></td>
            <td><a href="productspec-{{x.productId}}">Add Info</a></td>
            </tr>
            </tbody>
          </table>
          </div>
		</div>
        <div class="modal-footer">
        <dir-pagination-controls class="pull-left"  max-size="5" pagination-id="Product" direction-links="true" boundary-links="true" ></dir-pagination-controls>
          <button type="button" class="btn btn-default " data-dismiss="modal">Close</button>
          
        </div>
				
      </div>
    </div>
  </div>