<div class="modal fade" id="login" tabindex="-1" role="dialog" 
     aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <button type="button" class="close" 
                   data-dismiss="modal">
                       <span aria-hidden="true">&times;</span>
                       <span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    Login
                </h4>
            </div>
            
            <!-- Modal Body -->
            <div class="modal-body">
                
                <form role="form">
                  <div class="form-group">
                    <label for="exampleInputUsername">User Name</label>
                      <input type="text" class="form-control"
                      id="userName" placeholder="Enter User Name" required/>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                      <input type="password" class="form-control"
                          id="password" placeholder="Password" required/>
                  </div>
<!--
                  <div class="form-group">
                     <div class="checkbox">
                    <label>
                        <input type="checkbox" onclick="showPassword()"/> Show Password
                    </label>
                  </div>
                        </div>
-->
                  <button type="submit" class="btn btn-primary">Login</button>
                </form>
                
                
            </div>
            
            <!-- Modal Footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-default"
                        data-dismiss="modal">
                            Close
                </button>
               
            </div>
        </div>
    </div>
</div>
<!--    Show Password Script   -->
<!--
<script type="text/javascript">
    function showPassword() {
    
    var key_attr = $('#password').attr('type');
    if(key_attr != 'text') {
        
       
        $('#password').attr('type', 'text');
        
    } else {
        
        
        $('#password').attr('type', 'password');
        
    }
    
}
</script>-->
