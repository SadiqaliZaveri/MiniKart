<%@include file="Header.jsp" %>
                
                
                
                
                <form method="POST" action="perform_login">
                  <div class="form-group">
                    <label for="username">User Name</label>
                      <input type="text" class="form-control"
                      name="username" placeholder="Enter User Name" required/>
                  </div>
                  <div class="form-group">
                    <label for="password">Password</label>
                      <input type="password" class="form-control"
                          name="password" placeholder="Password" required/>
                  </div>
                  <button type="submit" class="btn btn-primary">Login</button>
                </form>
                
                
   
            
           
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
<!--      FOOTER STARTS     -->

<%@include file="Footer.jsp" %>
		

<!--      FOOTER ENDS     -->
          
      </div>
<!--    PAGE CONTENT WRAPPER ENDS   -->

    </div>
<!--    SIDE BAR WRAPPER ENDS  -->


