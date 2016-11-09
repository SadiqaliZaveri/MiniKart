<div class="modal fade" id="todaysMessageModal">
<div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
          <h3 class="modal-title">Messages List</h3>
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
                <th ng-click="sort('messageId')">Message ID
                <span class="glyphicon sort-icon" ng-show="sortKey=='messageId'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"> </span>
                </th>
                <th ng-click="sort('message')">Message
                <span class="glyphicon sort-icon" ng-show="sortKey=='message'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
                </th>
                
               
              </tr>
            </thead>
            <tbody>
            <tr dir-paginate="x in getTodaysMessage | filter: test | orderBy:sortKey:reverse |itemsPerPage: maxsize" pagination-id="Message">
            <td>{{x.messageId}}</td>
            <td>{{x.message}}</td>
            <td><a href="editTodaysMessage-{{x.messageId}}">Edit</a></td>
            <td><a href="deleteTodaysMessage-{{x.messageId}}">Delete</a></td>
            </tr>
            </tbody>
            
          </table>
          </div>
		</div>
        <div class="modal-footer">
        <dir-pagination-controls class="pull-left"  max-size="5" pagination-id="Message" direction-links="true" boundary-links="true" ></dir-pagination-controls>
          <button type="button" class="btn btn-default " data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>