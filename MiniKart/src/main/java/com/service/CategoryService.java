package com.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.DAOImplementation.CategoryDAOImplementation;
import com.model.Category;

@Service
public class CategoryService {
	@Autowired
	private CategoryDAOImplementation categoryDAOImplementation;
	
	
	@Transactional
    public void addCategory(Category category) {
		categoryDAOImplementation.addCategory(category);
		
    }
	@Transactional
	 public List<Category> listCategory()
	 {
		
		return categoryDAOImplementation.listCategory();
		
	 }
	
	@Transactional
	public String listCategoryViaJson()
	{
		return categoryDAOImplementation.listCategoryViaJson();
	}
	
	@Transactional
	public Category getIdFromName(String categoryName) {
		return categoryDAOImplementation.getIdFromName(categoryName);
	}
	
}
