package com.minikart.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;



import com.google.gson.annotations.Expose;

@Entity
public class ProductFullView implements Serializable{

/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
@Id
@Expose
private int productId;
@Expose
private String categoryName;
@Expose
private String subCategoryName;
@Expose	
private String supplierName;
@Expose
private String productName;
@Expose
private int productStock;
@Expose
private int productPrice;
@Expose
private int productDiscountPrice;
@Expose
private int productRating;
@Expose
private String productDescription;
@Expose
private String productWeight;
@Expose
private String productWarranty;
@Expose
private String productInches;
@Expose
private String productColor;
@Expose
private String productRam;
@Expose
private String productNetworkType;
@Expose
private String productScreenSize;
@Expose
private String productBatteryCapacity;
@Expose
private String productCamera;
@Expose
private String productSecondaryCamera;
@Expose
private String productOperatingSystem;
@Expose
private String productProcessor;
@Expose
private String productGraphicsMemory;
@Expose
private String productHardDiskCapacity;
@Expose
private String productPortType;
@Expose
private String productConnectivityFeatures;
@Expose
private String productResolution;
@Expose
private boolean enabled;

public int getProductId() {
	return productId;
}
public void setProductId(int productId) {
	this.productId = productId;
}
public String getCategoryName() {
	return categoryName;
}
public void setCategoryName(String categoryName) {
	this.categoryName = categoryName;
}
public String getSubCategoryName() {
	return subCategoryName;
}
public void setSubCategoryName(String subCategoryName) {
	this.subCategoryName = subCategoryName;
}
public String getSupplierName() {
	return supplierName;
}
public void setSupplierName(String supplierName) {
	this.supplierName = supplierName;
}
public String getProductName() {
	return productName;
}
public void setProductName(String productName) {
	this.productName = productName;
}
public int getProductStock() {
	return productStock;
}
public void setProductStock(int productStock) {
	this.productStock = productStock;
}
public int getProductPrice() {
	return productPrice;
}
public void setProductPrice(int productPrice) {
	this.productPrice = productPrice;
}
public int getProductDiscountPrice() {
	return productDiscountPrice;
}
public void setProductDiscountPrice(int productDiscountPrice) {
	this.productDiscountPrice = productDiscountPrice;
}
public int getProductRating() {
	return productRating;
}
public void setProductRating(int productRating) {
	this.productRating = productRating;
}
public String getProductDescription() {
	return productDescription;
}
public void setProductDescription(String productDescription) {
	this.productDescription = productDescription;
}
public String getProductWeight() {
	return productWeight;
}
public void setProductWeight(String productWeight) {
	this.productWeight = productWeight;
}
public String getProductWarranty() {
	return productWarranty;
}
public void setProductWarranty(String productWarranty) {
	this.productWarranty = productWarranty;
}
public String getProductInches() {
	return productInches;
}
public void setProductInches(String productInches) {
	this.productInches = productInches;
}
public String getProductColor() {
	return productColor;
}
public void setProductColor(String productColor) {
	this.productColor = productColor;
}
public String getProductRam() {
	return productRam;
}
public void setProductRam(String productRam) {
	this.productRam = productRam;
}
public String getProductNetworkType() {
	return productNetworkType;
}
public void setProductNetworkType(String productNetworkType) {
	this.productNetworkType = productNetworkType;
}
public String getProductScreenSize() {
	return productScreenSize;
}
public void setProductScreenSize(String productScreenSize) {
	this.productScreenSize = productScreenSize;
}
public String getProductBatteryCapacity() {
	return productBatteryCapacity;
}
public void setProductBatteryCapacity(String productBatteryCapacity) {
	this.productBatteryCapacity = productBatteryCapacity;
}
public String getProductCamera() {
	return productCamera;
}
public void setProductCamera(String productCamera) {
	this.productCamera = productCamera;
}
public String getProductSecondaryCamera() {
	return productSecondaryCamera;
}
public void setProductSecondaryCamera(String productSecondaryCamera) {
	this.productSecondaryCamera = productSecondaryCamera;
}
public String getProductOperatingSystem() {
	return productOperatingSystem;
}
public void setProductOperatingSystem(String productOperatingSystem) {
	this.productOperatingSystem = productOperatingSystem;
}
public String getProductProcessor() {
	return productProcessor;
}
public void setProductProcessor(String productProcessor) {
	this.productProcessor = productProcessor;
}
public String getProductGraphicsMemory() {
	return productGraphicsMemory;
}
public void setProductGraphicsMemory(String productGraphicsMemory) {
	this.productGraphicsMemory = productGraphicsMemory;
}
public String getProductHardDiskCapacity() {
	return productHardDiskCapacity;
}
public void setProductHardDiskCapacity(String productHardDiskCapacity) {
	this.productHardDiskCapacity = productHardDiskCapacity;
}
public String getProductPortType() {
	return productPortType;
}
public void setProductPortType(String productPortType) {
	this.productPortType = productPortType;
}
public String getProductConnectivityFeatures() {
	return productConnectivityFeatures;
}
public void setProductConnectivityFeatures(String productConnectivityFeatures) {
	this.productConnectivityFeatures = productConnectivityFeatures;
}
public String getProductResolution() {
	return productResolution;
}
public void setProductResolution(String productResolution) {
	this.productResolution = productResolution;
}
public boolean isEnabled() {
	return enabled;
}
public void setEnabled(boolean enabled) {
	this.enabled = enabled;
}


}
