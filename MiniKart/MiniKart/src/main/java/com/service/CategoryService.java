package com.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.daoimplementation.CategoryDAOImplementation;
import com.model.Category;


@Service

public class CategoryService {
	
	@Autowired
   private CategoryDAOImplementation categoryDAOImplementation;
   
	@Transactional
	public void addCategory(Category category)
	{
		categoryDAOImplementation.createCategory(category);
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
	public Category getIdByName(String categoryName)
	{
		return categoryDAOImplementation.getIdByName(categoryName);
	}
	
	@Transactional
	public Category getById(int categoryId)
	{
		return categoryDAOImplementation.getById(categoryId);
	}
	
	@Transactional
	public void deleteCategory(int categoryId)
	{
		categoryDAOImplementation.deleteCategory(categoryId);
	}
	
	
}
	

