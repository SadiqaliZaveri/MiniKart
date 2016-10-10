//INTERFACE WITH ABSTRACT METHODS

package com.DAO;
import java.util.List;

import com.model.Category;


public interface CategoryDAO {
	
	public void addCategory(Category category);
	public List<Category> listCategory();
	public String listCategoryViaJson();
	public Category getIdFromName(String categoryName);
	
}
