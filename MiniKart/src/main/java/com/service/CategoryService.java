package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.DAOImplementation.CategoryDAOImplementation;
import com.model.Category;

public class CategoryService {
	@Autowired
	private CategoryDAOImplementation categoryDAOImplementation;

	public void setCategoryDAOImplementation(CategoryDAOImplementation categoryDAOImplementation) {
		this.categoryDAOImplementation = categoryDAOImplementation;
	}
	@Transactional
	public void addCategory(Category category){
		categoryDAOImplementation.addCategory(category);
	}
	@Transactional
	public List<Category> getCategory(){
		return categoryDAOImplementation.getCategory();
		
	}
	@Transactional
	public void deleteCategory(int categoryId){
		categoryDAOImplementation.deleteCategory(categoryId);
	}

}
