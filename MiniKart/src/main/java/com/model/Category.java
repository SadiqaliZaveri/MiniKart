package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Category {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int categoryId;
	private String categoryName;
	private String categoryDescription;
	
	
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryID(int categoryID) {
		this.categoryId = categoryID;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getCategoryDescription() {
		return categoryDescription;
	}
	public void setCategoryDescription(String categoryDescription) {
		this.categoryDescription = categoryDescription;
	}
	
	
	@Override
	public String toString() {
		
		return "categoryId="+categoryId+", categoryName="+categoryName+", categoryDescription="+categoryDescription;
	}
	
	

}
