//INTERFACE WITH ABSTRACT METHODS

package com.dao;
import java.util.List;

import com.model.Category;


public interface CategoryDAO
{
	public void createCategory(Category category);
	public List<Category> listCategory();
	public String listCategoryViaJson();
	public Category getIdByName(String categoryName);
	public void deleteCategory(int categoryId);
	public Category getById(int categoryId);
}

