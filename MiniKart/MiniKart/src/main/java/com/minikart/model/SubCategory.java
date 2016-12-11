package com.minikart.model;
import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.validator.constraints.NotEmpty;

import com.google.gson.annotations.Expose;

@Entity
public class SubCategory implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Expose
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int subCategoryId;
	@Expose
	@NotEmpty(message="Cannot be Empty")
	private String subCategoryName;
	@Expose
	private int categoryId;
	
	@ManyToOne
    @JoinColumn(name = "categoryId", nullable=false, insertable=false, updatable=false)
	private Category category;
	
	
	
	
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public int getSubCategoryId() {
		return subCategoryId;
	}
	public void setSubCategoryId(int subCategoryId) {
		this.subCategoryId = subCategoryId;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public String getSubCategoryName() {
		return subCategoryName;
	}
	public void setSubCategoryName(String subCategoryName) {
		this.subCategoryName = subCategoryName;
	}
	
	
	
}
