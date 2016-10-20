package com.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;
import org.springframework.web.multipart.MultipartFile;


@Entity
public class Product {
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
private int productId;

private int supplierId;

private int subCategoryId;

private int categoryId;

private String productName;

private int productStock;

@ManyToOne
@JoinColumn(name = "subCategoryId", nullable=false, insertable=false, updatable=false)
private SubCategory subCategory;

@ManyToOne
@JoinColumn(name = "categoryId", nullable=false, insertable=false, updatable=false)
private Category category;

@ManyToOne
@JoinColumn(name = "supplierId", nullable=false, insertable=false, updatable=false)
private Supplier supplier;

@Transient
private MultipartFile productImage;


public Supplier getSupplier() {
	return supplier;
}
public void setSupplier(Supplier supplier) {
	this.supplier = supplier;
}
public int getSupplierId() {
	return supplierId;
}
public void setSupplierId(int supplierId) {
	this.supplierId = supplierId;
}
public int getCategoryId() {
	return categoryId;
}
public void setCategoryId(int categoryId) {
	this.categoryId = categoryId;
}
public Category getCategory() {
	return category;
}
public void setCategory(Category category) {
	this.category = category;
}
public MultipartFile getProductImage() {
	return productImage;
}
public void setProductImage(MultipartFile productImage) {
	this.productImage = productImage;
}
public SubCategory getSubCategory() {
	return subCategory;
}
public void setSubCategory(SubCategory subCategory) {
	this.subCategory = subCategory;
}
public int getProductId() {
	return productId;
}
public void setProductId(int productId) {
	this.productId = productId;
}
public int getSubCategoryId() {
	return subCategoryId;
}
public void setSubCategoryId(int subCategoryId) {
	this.subCategoryId = subCategoryId;
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
}
