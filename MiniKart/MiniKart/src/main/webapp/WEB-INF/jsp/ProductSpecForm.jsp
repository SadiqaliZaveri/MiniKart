<%@include file="Header.jsp" %>

<blockquote><h4>Add Info</h4></blockquote>

<form:form method="POST" cssClass="form-inline" action="addprodspec-${productId}" modelAttribute="productSpecification">




<form:input path="productId" hidden="true"/>
<div class="form-group tenpxtop" >
<label for="Product BC">Product Battery Capacity:</label>
<form:input path="productBatteryCapacity" cssClass="form-control" id="Product BC" />
</div>
<div class="form-group tenpxtop" >
<label for="Product Camera">Product Camera:</label>
<form:input path="productCamera" cssClass="form-control" id="Product Camera" />
</div>
<div class="form-group tenpxtop" >
<label for="Product Color">Product Color:</label>
<form:input path="productColor" cssClass="form-control" id="Product Color" />
</div>
<div class="form-group tenpxtop" >
<label for="Product Connectivity Features">Product Connectivity Features:</label>
<form:input path="productConnectivityFeatures" cssClass="form-control" id="Product Connectivity Features" />
</div>
<div class="form-group tenpxtop" >
<label for="Product Graphics Memory">Product Graphics Memory:</label>
<form:input path="productGraphicsMemory" cssClass="form-control" id="Product Graphics Memory" />
</div>
<div class="form-group tenpxtop" >
<label for="Product HardDisk Capacity">Product HardDisk Capacity:</label>
<form:input path="productHardDiskCapacity" cssClass="form-control" id="Product HardDisk Capacity" />
</div>
<div class="form-group tenpxtop" >
<label for="Product Product Inches">Product Inches:</label>
<form:input path="productInches" cssClass="form-control" id="Product Product Inches" />
</div>
<div class="form-group tenpxtop" >
<label for="Product Network Type">Product Network Type:</label>
<form:input path="productNetworkType" cssClass="form-control" id="Product Network Type" />
</div>
<div class="form-group tenpxtop" >
<label for="Product Operating System">Product Operating System:</label>
<form:input path="productOperatingSystem" cssClass="form-control" id="Product Operating System" />
</div>
<div class="form-group tenpxtop" >
<label for="Product Ram">Product Ram:</label>
<form:input path="productRam" cssClass="form-control" id="Product Ram" />
</div>
<div class="form-group tenpxtop" >
<label for="Product Port Type">Product Port Type:</label>
<form:input path="productPortType" cssClass="form-control" id="Product Port Type" />
</div>
<div class="form-group tenpxtop" >
<label for="Product Processor">Product Processor:</label>
<form:input path="productProcessor" cssClass="form-control" id="Product Processor" />
</div>
<div class="form-group tenpxtop" >
<label for="Product Resolution">Product Resolution:</label>
<form:input path="productResolution" cssClass="form-control" id="Product Resolution" />
</div>
<div class="form-group tenpxtop" >
<label for="Product Screen Size">Product Screen Size:</label>
<form:input path="productScreenSize" cssClass="form-control" id="Product Screen Size" />
</div>
<div class="form-group tenpxtop" >
<label for="Product Secondary Camera">Product Secondary Camera:</label>
<form:input path="productSecondaryCamera" cssClass="form-control" id="Product Secondary Camera" />
</div>
<div class="form-group tenpxtop" >
<label for="Product Weight">Product Weight:</label>
<form:input path="productWeight" cssClass="form-control" id="Product Weight" />
</div>
<div class="form-group tenpxtop" >
<label for="Product Warranty">Product Warranty:</label>
<form:input path="productWarranty" cssClass="form-control" id="Product Warranty" />
</div>


<div class="form-group">
<button type="submit" class="btn btn-warning"><i class="glyphicon glyphicon-ok"> Add</i></button>
</div>
<div class="form-group">
<a href="admin"><button type="button" class="btn btn-success"><i class="glyphicon glyphicon-arrow-left"> Back</i></button></a>
</div>
</form:form>

<!--      FOOTER STARTS     -->

<%@include file="Footer.jsp" %>
		

<!--      FOOTER ENDS     -->
          
