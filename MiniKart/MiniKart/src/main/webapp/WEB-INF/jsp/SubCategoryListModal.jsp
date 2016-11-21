
<div class="modal fade" id="subCategoryModal">
<div class="modal-dialog modal-lg">
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
                <th ng-click="sort('subCategoryId')">SubCategory ID
                <span class="glyphicon sort-icon" ng-show="sortKey=='subcategoryId'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
                </th>
                <th ng-click="sort('categoryId')">Category ID
                <span class="glyphicon sort-icon" ng-show="sortKey=='categoryId'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
                </th>
                <th ng-click="sort('subCategoryName')">SubCategory Name
                <span class="glyphicon sort-icon" ng-show="sortKey=='subCategoryName'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
                </th>
                <th></th>
                <th></th>
              </tr>
            </thead>
            <tbody>
            <tr dir-paginate="x in getSubCategory | filter: test | orderBy:sortKey:reverse |itemsPerPage: maxsize" pagination-id="subCategory">
            <td>{{x.subCategoryId}}</td>
            <td>{{x.categoryId}}</td>
            <td>{{x.subCategoryName}}</td>
            <td><a href="editsub-{{x.subCategoryId}}"><i class="fa fa-edit largetxt" style="color:#f65819" title="Edit"></i></a></td>
            <td><a href="deletesub-{{x.subCategoryId}}"><i class="fa fa-trash largetxt" style="color:#f65819" title="Delete"></i></a></td>
            </tr>
            </tbody>
          </table>
          </div>
		</div>
        <div class="modal-footer">
       <dir-pagination-controls class="pull-left" max-size="5" pagination-id="subCategory" direction-links="true" boundary-links="true" ></dir-pagination-controls>
          <button type="button" class="btn btn-default " data-dismiss="modal">Close</button>
          
        </div>
				
      </div>
    </div>
  </div>