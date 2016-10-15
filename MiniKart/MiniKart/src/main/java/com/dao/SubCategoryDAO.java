//INTERFACE WITH ABSTRACT METHODS

package com.dao;

import java.util.List;


import com.model.SubCategory;

public interface SubCategoryDAO {
	
public void addSubCategory(SubCategory subcategory);
public List<SubCategory> listSubCategory();
public String listSubCategoryViaJson();
public SubCategory getIdFromName(String subCategoryName);
public SubCategory getIdFromId(int subCategoryId);
public void deleteSubCategory(int subCategoryId);

}
