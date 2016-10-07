package com.DAO;



import java.util.List;

import com.model.Category;

public interface CategoryDAO {
	
	public void addCategory(Category category);
	public List<Category> listCategory();
	public String stringCategory();
	
}
