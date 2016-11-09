package com.minikart.model;


import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.annotations.Expose;


@Entity
public class Product {
@Expose
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
private int productId;
@Expose
private int supplierId;
@Expose
private int subCategoryId;
@Expose
private int categoryId;
@Expose
@NotEmpty(message="Cannot be Empty")
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
private Date productDate;
@Expose
private boolean enabled;




@ManyToOne
@JoinColumn(name = "subCategoryId", nullable=false, insertable=false, updatable=false)
private SubCategory subCategory;

@ManyToOne
@JoinColumn(name = "categoryId", nullable=false, insertable=false, updatable=false)
private Category category;

@ManyToOne
@JoinColumn(name = "supplierId", nullable=false, insertable=false, updatable=false)
private Supplier supplier;

public boolean isEnabled() {
	return enabled;
}
public void setEnabled(boolean enabled) {
	this.enabled = enabled;
}

@Transient
private MultipartFile productImage;

public String getProductDescription() {
	return productDescription;
}
public void setProductDescription(String productDescription) {
	this.productDescription = productDescription;
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
public int getProductPrice() {
	return productPrice;
}
public void setProductPrice(int productPrice) {
	this.productPrice = productPrice;
}
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
public Date getProductDate() {
	return productDate;
}
public void setProductDate(Date productDate) {
	this.productDate = productDate;
}
}
