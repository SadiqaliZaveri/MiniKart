
<div class="modal fade" id="productModal" >
<div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
          <h3 class="modal-title">Product List</h3>
        </div>
        <div class="modal-body" style="overflow-x:scroll">
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
            
          <table class="table table-striped" id="tblGrid" >
            <thead id="tblHead">
              <tr>
                <th ng-click="sort('productId')">Product ID
                <span class="glyphicon sort-icon" ng-show="sortKey=='productId'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
                </th>
                
                <th ng-click="sort('productName')" style="min-width: 100px;">Product Name
                <span class="glyphicon sort-icon" ng-show="sortKey=='productName'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
                </th>
                <th ng-click="sort('productDescription')">Product Description
                <span class="glyphicon sort-icon" ng-show="sortKey=='productDescription'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
                </th>
                <th ng-click="sort('productStock')">Product Stock
                <span class="glyphicon sort-icon" ng-show="sortKey=='productStock'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
                </th>
                <th ng-click="sort('productPrice')">Product Price
                <span class="glyphicon sort-icon" ng-show="sortKey=='productPrice'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
                </th>
                <th ng-click="sort('productDate')">Product Date
                <span class="glyphicon sort-icon" ng-show="sortKey=='productDate'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
                </th>
                <th>Product Image</th>
                <th ng-click="sort('itemTotal')">Total Price
                <span class="glyphicon sort-icon" ng-show="sortKey=='itemTotal'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
                </th>
                <th ng-click="sort('productEnabled')">Product Enabled
                <span class="glyphicon sort-icon" ng-show="sortKey=='productEnabled'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
                </th>
                
               
              </tr>
            </thead>
            <tbody>
            <tr dir-paginate="x in resultvalue=(getProduct | filter: test) | orderBy:sortKey:reverse |itemsPerPage: maxsize" pagination-id="Product">
            <td>{{x.productId}}</td>   
            <td><div title="{{x.productName}}" style="height:100px; overflow:hidden;">{{x.productName}}</div></td>
            <td><div title="{{x.productDescription}}" style="height:100px; overflow:hidden;">{{x.productDescription}}</div></td>
            <td>{{x.productStock}} Units</td>
            <td>Rs. {{x.productPrice}}</td>
            <td>{{x.productDate}}</td>            
            <td>          
            <img src="resources/images/product{{x.productId}}.jpg" width="100px" height="50px"/>          
            </td>
            
            
            
            <td ng-init="itemTotal = x.productPrice * x.productStock; ">Rs. {{itemTotal}}</td>
            
            <td>{{x.enabled}}</td>
            <td><a href="viewfullprod-{{x.productId}}"><i class="fa fa-television largetxt" style="color:#f65819" title="View"></i></a></td>
            <td><a href="editprod-{{x.productId}}"><i class="fa fa-edit largetxt" style="color:#f65819" title="Edit"></i></a></td> 
            <td><a href="deleteprod-{{x.productId}}"><i class="fa fa-trash largetxt" style="color:#f65819" title="Delete"></i></a></td>
            <td><a href="productspec-{{x.productId}}"><i class="fa fa-folder-o largetxt" style="color:#f65819" title="Add Product Info"></i></a></td> 
            <td><a href="editprodspec-{{x.productId}}"><i class="fa fa-folder-open-o largetxt" style="color:#f65819" title="Edit Product Info"></i></a></td>
            
            <td><a href="toggleproduct-{{x.productId}}">
            <div ng-if="x.enabled == true">
            <i class="fa fa-toggle-on largetxt" title="Disable"></i>
            </div>
            <div ng-if="x.enabled != true">
            <i class="fa fa-toggle-off largetxt" title="Enable" ></i>
            </div>
            </a></td>
            
            
            </tr>
            <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td>Grand Total :</td>
            <td>{{resultvalue | totalSumPriceQty:'productStock':'productPrice'}}</td>
            </tr>
            </tbody>
          </table>
         
		</div>
        <div class="modal-footer">
        <dir-pagination-controls class="pull-left"  max-size="5" pagination-id="Product" direction-links="true" boundary-links="true" ></dir-pagination-controls>
          <button type="button" class="btn btn-default " data-dismiss="modal">Close</button>
          
        </div>
				
      </div>
    </div>
  </div>