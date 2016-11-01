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
                <th ng-click="sort('supplierId')">Supplier ID</th>        
                <th ng-click="sort('supplierName')">Supplier Name</th>
                <th ng-click="sort('supplierDescription')">Supplier Description</th>
                <th ng-click="sort('state')">State</th>
                <th ng-click="sort('city')">City</th>
                <th ng-click="sort('district')">District</th>
                <th ng-click="sort('landmark')">Landmark</th>
                <th ng-click="sort('pinCode')">Pincode</th>
                <th ng-click="sort('companyUrl')">Website</th>
                <th ng-click="sort('address')" style="min-width:200px;">Address</th>
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
            <td><a href="editsup-{{x.supplierId}}">Edit</a></td>
            <td><a href="deletesup-{{x.supplierId}}">Delete</a></td>
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