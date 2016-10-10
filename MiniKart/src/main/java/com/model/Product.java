package com.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;


@Entity
public class Product {
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
private int productId;

private int subCategoryId;
@ManyToOne
@JoinColumn(name = "subCategoryId", nullable=false, insertable=false, updatable=false)
private SubCategory subCategory;

private String productName;

private int productStock;

//@Transient
//private MultipartFile productImage;

public SubCategory getSubCategory() {
	return subCategory;
}
public void setSubCategory(SubCategory subCategory) {
	this.subCategory = subCategory;
}
//public MultipartFile getProductImage() {
//	return productImage;
//}
//public void setProductImage(MultipartFile productImage) {
//	this.productImage = productImage;
//}
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
