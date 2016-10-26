//INTERFACE WITH ABSTRACT METHODS

package com.minikart.dao;

import java.util.List;

import com.minikart.model.SubCategory;

public interface SubCategoryDAO {
	
public void addSubCategory(SubCategory subcategory);
public List<SubCategory> listSubCategory();
public String listSubCategoryViaJson();
public SubCategory getIdFromName(String subCategoryName);
public SubCategory getIdFromId(int subCategoryId);
public void deleteSubCategory(int subCategoryId);

}
