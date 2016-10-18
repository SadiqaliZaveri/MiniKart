package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
@Entity
public class ProductSpecification {
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
private int productSpecificationId;
private int productId;
@OneToOne
@JoinColumn(name="productId", nullable=false, insertable=false, updatable=false)
private Product product;
private String productWeight;
private String productWarranty;
public String getProductWarranty() {
	return productWarranty;
}
public void setProductWarranty(String productWarranty) {
	this.productWarranty = productWarranty;
}
private String productInches;
private String productColor;
private String productRam;
private String productNetworkType;
private String productScreenSize;
private String productBatteryCapacity;
private String productCamera;
private String productSecondaryCamera;
private String productOperatingSystem;
private String productProcessor;
private String productGraphicsMemory;
private String productHardDiskCapacity;
private String productPortType;
private String productConnectivityFeatures;
private String productResolution;

public Product getProduct() {
	return product;
}
public void setProduct(Product product) {
	this.product = product;
}
public int getProductSpecificationId() {
	return productSpecificationId;
}
public void setProductSpecificationId(int productSpecificationId) {
	this.productSpecificationId = productSpecificationId;
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
