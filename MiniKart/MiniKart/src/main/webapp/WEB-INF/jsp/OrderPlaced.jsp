<%@include file="Header.jsp" %>
<div class="container" style="max-width:800px;">
    <div class="row pushfooter">
        <div class="thumbnail" >
            
            
                <div class="text-center">
                    <h1>Receipt</h1>
                </div>
                
                <table class="table">
                    <thead>
                        <tr>
                            <th class="text-center">Product</th>
                            <th class="text-center">#</th>
                            <th class="text-center">Price</th>
                            <th class="text-center">Discounted Price</th>
                            <th class="text-center">Total</th>
                        </tr>
                    </thead>
                    
                        <tr ng-repeat="x in getReceipt">
                            <td class="text-center"><em>{{x.productName}}</em></td>
                            <td class="text-center">{{x.productQuantity}} </td>
                            <td class="text-center">{{x.productPrice}}</td>
                            <td class="text-center">{{x.productDiscountPrice}}</td>
                            <td class="text-center">
                            <div ng-if="x.productDiscountPrice == 0">
                            {{x.productPrice*x.productQuantity}}
                            </div>
                             <div ng-if="x.productDiscountPrice != 0">
                             {{x.productDiscountPrice*x.productQuantity}}
                             </div>
                            </td>
                            
                           
                            
                            
                        </tr>
                       
                       
                        <tr>
                        	<td></td>
                            <td></td>
                            <td></td>
                            <td class="text-right"><h4><strong>Total: </strong></h4></td>
                            <td class="text-center text-danger"><h4><i class="fa fa-inr" aria-hidden="true"></i><strong> {{getReceipt | totalSumPriceQty:'productQuantity':'productPrice':'productDiscountPrice'}}</strong></h4></td>
                        </tr>
                   
                </table>
                <a href="home"><button type="button" class="btn btn-lg btn-block cartbutton">
                    Continue Shopping   <span class="glyphicon glyphicon-chevron-right"></span>
                </button></a>
            </div>
        </div>
    </div>

    
    <script>
    $("#wrapper").toggleClass("toggled");
    var app = angular.module('Caller', ['angularUtils.directives.dirPagination']).filter('totalSumPriceQty', function () {
        return function (data, key1, key2, key3) {
            
            if (typeof (data) === 'undefined' && typeof (key1) === 'undefined' && typeof (key2) === 'undefined'  && typeof (key3) === 'undefined') {
                return 0;
            }
            var sum = 0;
            for (var i = 0; i < data.length; i++) {
            	if(parseInt(data[i][key3])==0)
            		{
            		sum = sum + (parseInt(data[i][key1]) * parseInt(data[i][key2]));        		
            		}
            	else
            		{
            		sum = sum + (parseInt(data[i][key1]) * parseInt(data[i][key3]));
            		}
                
            }
            return sum;
        }
    });
    app.controller('CallerController', function($scope) {
      $scope.getReceipt = ${orderReceipt};
      
     
      
    });
    </script>
    
<%@include file="Footer.jsp" %>