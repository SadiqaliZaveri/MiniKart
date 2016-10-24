package com.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import com.google.gson.annotations.Expose;
@Entity
public class ProductSpecification {
@Expose
@Id
private int productId;
@OneToOne
@JoinColumn(name="productId", nullable=false, insertable=false, updatable=false)
private Product product;
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

public String getProductWarranty() {
	return productWarranty;
}
public void setProductWarranty(String productWarranty) {
	this.productWarranty = productWarranty;
}
public Product getProduct() {
	return product;
}
public void setProduct(Product product) {
	this.product = product;
}
public int getProductId() {
	return productId;
}
public void setProductId(int productId) {
	this.productId = productId;
}
public String getProductWeight() {
	return productWeight;
}
public void setProductWeight(String productWeight) {
	this.productWeight = productWeight;
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
}
