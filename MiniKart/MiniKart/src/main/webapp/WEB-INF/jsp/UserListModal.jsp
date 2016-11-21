<div class="modal fade" id="userListModal">
<div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
          <h3 class="modal-title">User List</h3>
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
                <th ng-click="sort('userId')">User ID
                <span class="glyphicon sort-icon" ng-show="sortKey=='userId'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
                </th>
                <th ng-click="sort('username')">User Name
                <span class="glyphicon sort-icon" ng-show="sortKey=='username'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
                </th>
                <th ng-click="sort('password')">Password
                <span class="glyphicon sort-icon" ng-show="sortKey=='password'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
                </th>
                <th ng-click="sort('enabled')">Enable/Disable 
                <span class="glyphicon sort-icon" ng-show="sortKey=='enabled'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
                </th>
                <th></th>
                <th></th>
              </tr>
            </thead>
            <tbody>
            <tr dir-paginate="x in getUser | filter: test | orderBy:sortKey:reverse |itemsPerPage: maxsize" pagination-id="Category">
            <td>{{x.userId}}</td>
            <td>{{x.username}}</td>
            <td>{{x.password}}</td>
            <td>{{x.enabled}}</td>
            <td><a href="toggleuser-{{x.userId}}"><div ng-if="x.enabled == true">
            <i class="fa fa-toggle-on largetxt" title="Disable"></i>
            </div>
            <div ng-if="x.enabled != true">
            <i class="fa fa-toggle-off largetxt" title="Enable" ></i>
            </div></a></td>
            
            </tr>
            </tbody>
            
          </table>
          </div>
		</div>
        <div class="modal-footer">
        <dir-pagination-controls class="pull-left"  max-size="5" pagination-id="Category" direction-links="true" boundary-links="true" ></dir-pagination-controls>
          <button type="button" class="btn btn-default " data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>