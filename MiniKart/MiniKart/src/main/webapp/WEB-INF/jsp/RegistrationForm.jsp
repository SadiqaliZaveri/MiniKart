<div class="modal fade" id="signup" tabindex="-1" role="dialog" 
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
                    Registration Form
                </h4>
            </div>
            
            <!-- Modal Body -->
            <div class="modal-body">
                
                <form role="form">
                  <div class="form-group">
                    <label for="exampleInputUserName">User Name</label>
                      <input type="text" class="form-control"
                      id="userName" placeholder="Enter User Name"/>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword">Password</label>
                      <input type="password" class="form-control"
                          id="password" placeholder="Password" required/>
                  </div>
                    <div class="form-group">
                    <label for="exampleInputPassword1">Confirm Password</label>
                      <input type="password" class="form-control"
                          id="password1" placeholder="Password" required/>
                  </div>
                    <div class="form-group">
                    <label for="exampleInputEmail">Email</label>
                      <input type="email" class="form-control"
                          id="Email" placeholder="Email ID"/>
                  </div>
                  <label>Who are you?</label>
                    <div class="form-group">
                        <label class="radio-inline">
                        <input type="radio" name="optradio" checked>Buyer / Normal User
                        </label>
                        <label class="radio-inline">
                        <input type="radio" name="optradio">Seller
                        </label>
                    </div>
                    
<!--
                  <div class="checkbox">
                    <label>
                        <input type="checkbox"/> Check me out
                    </label>
                  </div>
-->
                  <button type="submit" class="btn btn-primary">Submit</button>
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

<!--    Script to check if passwords are same   -->
<script type="text/javascript">
var password = document.getElementById("password")
  , confirm_password = document.getElementById("password1");

function validatePassword(){
  if(password.value != confirm_password.value) {
    confirm_password.setCustomValidity("Passwords Don't Match");
  } else {
    confirm_password.setCustomValidity('');
  }
}

password.onchange = validatePassword;
password1.onkeyup = validatePassword;
</script>
