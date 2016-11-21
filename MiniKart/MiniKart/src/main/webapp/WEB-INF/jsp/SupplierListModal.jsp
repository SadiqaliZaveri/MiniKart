<div ng-app="Caller"  ng-controller="CallerController" class="modal fade" id="supplierModal">
<div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
          <h3 class="modal-title">Category List</h3>
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
<!--               <input type="number" min="1" max="100" class="form-control"  > -->
            </div>
            <div style="overflow: auto">
          <table class="table table-striped" id="tblGrid">
            <thead id="tblHead">
              <tr>
                <th ng-click="sort('supplierId')">Supplier ID
                <span class="glyphicon sort-icon" ng-show="sortKey=='supplierId'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
                </th>        
                <th ng-click="sort('supplierName')">Supplier Name
                <span class="glyphicon sort-icon" ng-show="sortKey=='supplierName'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
                </th>
                <th ng-click="sort('supplierDescription')">Supplier Description
                <span class="glyphicon sort-icon" ng-show="sortKey=='supplierDescription'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
                </th>
                <th ng-click="sort('state')">State
                <span class="glyphicon sort-icon" ng-show="sortKey=='state'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
                </th>
                <th ng-click="sort('city')">City
                <span class="glyphicon sort-icon" ng-show="sortKey=='city'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
                </th>
                <th ng-click="sort('district')">District
                <span class="glyphicon sort-icon" ng-show="sortKey=='district'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
                </th>
                <th ng-click="sort('landmark')">Landmark
                <span class="glyphicon sort-icon" ng-show="sortKey=='landmark'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
                </th>
                <th ng-click="sort('pinCode')">Pincode
                <span class="glyphicon sort-icon" ng-show="sortKey=='pinCode'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
                </th>
                <th ng-click="sort('companyUrl')">Website
                <span class="glyphicon sort-icon" ng-show="sortKey=='companyUrl'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
                </th>
                <th ng-click="sort('address')" style="min-width:200px;">Address
                <span class="glyphicon sort-icon" ng-show="sortKey=='address'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
                </th>
                <th></th>
                <th></th>
              </tr>
            </thead>
            <tbody>
            <tr dir-paginate="x in getSupplier | filter: test | orderBy:sortKey:reverse |itemsPerPage: maxsize" pagination-id="Supplier">
            <td>{{x.supplierId}}</td>
            <td>{{x.supplierName}}</td>
            <td>{{x.supplierDescription}}</td>
            <td>{{x.state}}</td>
            <td>{{x.city}}</td>
            <td>{{x.district}}</td>
            <td>{{x.landmark}}</td>
            <td>{{x.pinCode}}</td>
            <td>{{x.companyUrl}}</td>
            <td>{{x.address}}</td>
            <td><a href="editsup-{{x.supplierId}}"><i class="fa fa-edit largetxt" style="color:#f65819" title="Edit"></i></a></td>
            <td><a href="deletesup-{{x.supplierId}}"><i class="fa fa-trash largetxt" style="color:#f65819" title="Delete"></i></a></td>
            </tr>
            </tbody>
          </table>
          </div>
		</div>
        <div class="modal-footer">
         <dir-pagination-controls class="pull-left"  max-size="5" pagination-id="Supplier" direction-links="true" boundary-links="true" ></dir-pagination-controls>
          <button type="button" class="btn btn-default " data-dismiss="modal">Close</button>
          
        </div>
				
      </div>
    </div>
  </div>