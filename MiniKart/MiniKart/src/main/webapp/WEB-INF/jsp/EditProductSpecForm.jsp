<%@include file="Header.jsp" %>
<div class="container">
<blockquote><h4>Add Info</h4><h6><span class="color">(N/A - Not Applicable)<br/>(Some fields allow multiple values to be selected. To select multiple values, hold ctrl and select respectively)<br/>(Fields that require text input from the user should only contain the value, example : Product color : Red [this is right] / Product color : Red color [this is wrong])</span></h6></blockquote>

<form:form method="POST" cssClass="form" action="addprodspec-${productId}" modelAttribute="productSpecification">




<form:input path="productId" hidden="true"/>
<div class="form-group tenpxtop" >
<label for="Product BC">Product Battery Capacity:</label>
<form:select path="productBatteryCapacity" cssClass="form-control" id="Product BC">
<form:option value="N/A" label="N/A"/>
<form:option value="2500 Mah" label="2500 Mah"/>
<form:option value="3000 Mah" label="3000 Mah"/>
<form:option value="3500 Mah" label="3500 Mah"/>
<form:option value="4000 Mah" label="4000 Mah"/>
<form:option value="4500 Mah" label="4500 Mah"/>
<form:option value="5000 Mah" label="5000 Mah"/>
<form:option value="5500 Mah" label="5500 Mah"/>
<form:option value="6000 Mah" label="6000 Mah"/>
<form:option value="6500 Mah" label="6500 Mah"/>
<form:option value="7000 Mah" label="7000 Mah"/>
<form:option value="7500 Mah" label="7500 Mah"/>
<form:option value="8000 Mah" label="8000 Mah"/>
<form:option value="8500 Mah" label="8500 Mah"/>
<form:option value="9000 Mah" label="9000 Mah"/>
<form:option value="9500 Mah" label="9500 Mah"/>
<form:option value="10000 Mah" label="3000 Mah"/>
<form:option value="10500 Mah" label="10500 Mah"/>
<form:option value="11000 Mah" label="11000 Mah"/>
<form:option value="11500 Mah" label="11500 Mah"/>
<form:option value="12000 Mah" label="12000 Mah"/>
<form:option value="12500 Mah" label="12500 Mah"/>
<form:option value="13000 Mah" label="13000 Mah"/>
<form:option value="13500 Mah" label="13500 Mah"/>
<form:option value="14000+ Mah" label="14000 or Above"/>
</form:select>
<%-- <form:input path="productBatteryCapacity" cssClass="form-control" id="Product BC" /> --%>
</div>
<div class="form-group tenpxtop" >
<label for="Product Camera">Product Camera:</label>
<form:select path="productCamera" cssClass="form-control" id="Product Camera">
<form:option value="N/A" label="N/A"/>
<form:option value="2 MP" label="2 MP"/>
<form:option value="3 MP" label="3 MP"/>
<form:option value="4 MP" label="4 MP"/>
<form:option value="5 MP" label="5 MP"/>
<form:option value="6 MP" label="6 MP"/>
<form:option value="7 MP" label="7 MP"/>
<form:option value="8 MP" label="8 MP"/>
<form:option value="9 MP" label="9 MP"/>
<form:option value="10 MP" label="10 MP"/>
<form:option value="11 MP" label="11 MP"/>
<form:option value="12 MP" label="12 MP"/>
<form:option value="13 MP" label="13 MP"/>
<form:option value="14+ MP" label="14 MP or Above"/>
</form:select>
<%-- <form:input path="productCamera" cssClass="form-control" id="Product Camera" /> --%>
</div>
<div class="form-group tenpxtop" >
<label for="Product Color">Product Color:</label>
<form:input path="productColor" cssClass="form-control" id="Product Color" maxlength="255"/>
</div>
<div class="form-group tenpxtop" >
<label for="Product Connectivity Features">Product Connectivity Features:</label>
<form:select path="productConnectivityFeatures" cssClass="form-control" id="Product Camera" multiple="true">
<form:option value="N/A" label="N/A"/>
<form:option value="bluetooth" label="Bluetooth"/>
<form:option value="wi-fi" label="Wi-Fi"/>
<form:option value="nfc" label="NFC"/>
<form:option value="ir" label="IR Blaster"/>
</form:select>
<%-- <form:input path="productConnectivityFeatures" cssClass="form-control" id="Product Connectivity Features" /> --%>
</div>
<div class="form-group tenpxtop" >
<label for="Product Graphics Memory">Product Graphics Memory:</label>
<form:select path="productGraphicsMemory" cssClass="form-control" id="Product Graphics Memory">
<form:option value="N/A" label="N/A"/>
<form:option value="1 GB" label="1 GB"/>
<form:option value="2 GB" label="2 GB"/>
<form:option value="3 GB" label="3 GB"/>
<form:option value="4 GB" label="4 GB"/>
<form:option value="5 GB" label="5 GB"/>
<form:option value="6 GB" label="6 GB"/>
<form:option value="7 GB" label="7 GB"/>
<form:option value="8 GB" label="8 GB"/>
<form:option value="9 GB" label="9 GB"/>
<form:option value="10 GB" label="10 GB"/>
<form:option value="11 GB" label="11 GB"/>
<form:option value="12 GB" label="12 GB"/>
<form:option value="13 GB" label="13 GB"/>
<form:option value="14+ GB" label="14 GB or Above"/>
</form:select>
<%-- <form:input path="productGraphicsMemory" cssClass="form-control" id="Product Graphics Memory" /> --%>
</div>
<div class="form-group tenpxtop" >
<label for="Product HardDisk Capacity">Product HardDisk Capacity:</label>
<form:select path="productHardDiskCapacity" cssClass="form-control" id="Product HardDisk Capacity" >
<form:option value="N/A" label="N/A"/>
<form:option value="64 GB" label="64 GB"/>
<form:option value="128 GB" label="128 GB"/>
<form:option value="256 GB" label="256 GB"/>
<form:option value="512 GB" label="512 GB"/>
<form:option value="1 TB" label="1 TB"/>
<form:option value="2 TB" label="2 TB"/>
<form:option value="3 TB" label="3 TB"/>
<form:option value="4 TB" label="4 TB"/>
<form:option value="5 TB" label="5 TB"/>
<form:option value="6+ TB" label="6 TB or Above"/>
</form:select>
<%-- <form:input path="productHardDiskCapacity" cssClass="form-control" id="Product HardDisk Capacity" /> --%>
</div>
<div class="form-group tenpxtop" >
<label for="Product Product Inches">Product Inches:</label>
<form:input path="productInches" cssClass="form-control" id="Product Product Inches" maxlength="255"/>
</div>
<div class="form-group tenpxtop" >
<label for="Product Network Type">Product Network Type:</label>
<form:select path="productNetworkType" cssClass="form-control" id="Product Network Type" >
<form:option value="N/A" label="N/A"/>
<form:option value="2 G" label="2 G"/>
<form:option value="3 G" label="3 G"/>
<form:option value="4 G" label="4 G"/>
</form:select>
<%-- <form:input path="productNetworkType" cssClass="form-control" id="Product Network Type" /> --%>
</div>
<div class="form-group tenpxtop" >
<label for="Product Operating System">Product Operating System:</label>
<form:select path="productOperatingSystem" cssClass="form-control" id="Product Operating System" >
<form:option value="N/A" label="N/A"/>
<form:option value="Android" label="Android"/>
<form:option value="IOS" label="IOS"/>
<form:option value="Blackberry" label="Blackberry"/>
<form:option value="Windows" label="Windows"/>
<form:option value="Other" label="Other"/>
</form:select>
<%-- <form:input path="productOperatingSystem" cssClass="form-control" id="Product Operating System" /> --%>
</div>
<div class="form-group tenpxtop" >
<label for="Product Ram">Product Ram:</label>
<form:select path="productRam" cssClass="form-control" id="Product Ram">
<form:option value="N/A" label="N/A"/>
<form:option value="1 GB" label="1 GB"/>
<form:option value="2 GB" label="2 GB"/>
<form:option value="4 GB" label="4 GB"/>
<form:option value="6 GB" label="6 GB"/>
<form:option value="8 GB" label="8 GB"/>
<form:option value="16 GB" label="16 GB"/>
<form:option value="32 GB" label="32 GB"/>
<form:option value="64 GB" label="64 GB"/>
<form:option value="128+ GB" label="128 GB or Above"/>
</form:select>
<%-- <form:input path="productRam" cssClass="form-control" id="Product Ram" /> --%>
</div>
<div class="form-group tenpxtop" >
<label for="Product Port Type">Product Port Type:</label>
<form:select path="productPortType" cssClass="form-control" id="Product Port Type" multiple="true">
<form:option value="N/A" label="N/A"/>
<form:option value="Usb 2.0" label="Usb 2.0"/>
<form:option value="Usb 3.0" label="Usb 3.0"/>
<form:option value="Usb C" label="Usb C"/>
<form:option value="HDMI" label="HDMI"/>
<form:option value="DVI" label="DVI"/>
<form:option value="VGA" label="VGA"/>
<form:option value="Ethernet" label="Ethernet"/>
<form:option value="3.5mm Audio Jack" label="3.5mm Audio Jack"/>
<form:option value="Lightning" label="Lightning"/>
</form:select>
<%-- <form:input path="productPortType" cssClass="form-control" id="Product Port Type" /> --%>
</div>
<div class="form-group tenpxtop" >
<label for="Product Processor">Product Processor:</label>
<form:select path="productProcessor" cssClass="form-control" id="Product Processor">
<form:option value="N/A" label="N/A"/>
<form:option value="Single Core" label="Single Core"/>
<form:option value="Dual Core" label="Dual Core"/>
<form:option value="Quad Core" label="Quad Core"/>
<form:option value="Octa Core" label="Octa Core"/>
<form:option value="Hexa Core" label="Hexa Core"/>
<form:option value="Intel" label="Intel"/>
<form:option value="AMD" label="AMD"/>
<form:option value="Other" label="Other"/>
</form:select>
<%-- <form:input path="productProcessor" cssClass="form-control" id="Product Processor" /> --%>
</div>
<div class="form-group tenpxtop" >
<label for="Product Resolution">Product Resolution:</label>
<form:select path="productResolution" cssClass="form-control" id="Product Resolution">
<form:option value="N/A" label="N/A"/>
<form:option value="HD" label="HD"/>
<form:option value="Full-HD" label="Full-HD"/>
<form:option value="Ultra-HD" label="Ultra-HD"/>
<form:option value="8K" label="8K"/>
<form:option value="Other" label="Other"/>
</form:select>
<%-- <form:input path="productResolution" cssClass="form-control" id="Product Resolution" /> --%>
</div>
<div class="form-group tenpxtop" >
<label for="Product Screen Size">Product Screen Size:</label>
<form:input path="productScreenSize" cssClass="form-control" id="Product Screen Size" maxlength="255"/>
</div>
<div class="form-group tenpxtop" >
<label for="Product Secondary Camera">Product Secondary Camera:</label>
<form:select path="productSecondaryCamera" cssClass="form-control" id="Product Secondary Camera">
<form:option value="N/A" label="N/A"/>
<form:option value="2 MP" label="2 MP"/>
<form:option value="3 MP" label="3 MP"/>
<form:option value="4 MP" label="4 MP"/>
<form:option value="5 MP" label="5 MP"/>
<form:option value="6 MP" label="6 MP"/>
<form:option value="7 MP" label="7 MP"/>
<form:option value="8 MP" label="8 MP"/>
<form:option value="9 MP" label="9 MP"/>
<form:option value="10 MP" label="10 MP"/>
<form:option value="11 MP" label="11 MP"/>
<form:option value="12 MP" label="12 MP"/>
<form:option value="13 MP" label="13 MP"/>
<form:option value="14+ MP" label="14 MP or Above"/>
</form:select>
<%-- <form:input path="productSecondaryCamera" cssClass="form-control" id="Product Secondary Camera" /> --%>
</div>
<div class="form-group tenpxtop" >
<label for="Product Weight">Product Weight:</label>
<form:input path="productWeight" cssClass="form-control" id="Product Weight" maxlength="255"/>
</div>
<div class="form-group tenpxtop" >
<label for="Product Warranty">Product Warranty:</label>
<form:select path="productWarranty" cssClass="form-control" id="Product Warranty">
<form:option value="N/A" label="N/A"/>
<form:option value="1 Year" label="1 Year"/>
<form:option value="2 Years" label="2 Years"/>
<form:option value="3 Years" label="3 Years"/>
<form:option value="4 Years" label="4 Years"/>
<form:option value="5 Years" label="5 Years"/>
<form:option value="6 Years" label="6 Years"/>
<form:option value="7 Years" label="7 Years"/>
<form:option value="8 Years" label="8 Years"/>
<form:option value="Lifetime" label="Lifetime"/>
</form:select>
<%-- <form:input path="productWarranty" cssClass="form-control" id="Product Warranty" /> --%>
</div>


<div class="form-group">
<button type="submit" class="btn btn-warning"><i class="glyphicon glyphicon-ok"> Edit</i></button>
</div>
<div class="form-group">
<a href="admin"><button type="button" class="btn btn-success"><i class="glyphicon glyphicon-arrow-left"> Back</i></button></a>
</div>
</form:form>
</div>
<script>
$("#wrapper").toggleClass("toggled");
</script>
<!--      FOOTER STARTS     -->

<%@include file="Footer.jsp" %>
		

<!--      FOOTER ENDS     -->
          
