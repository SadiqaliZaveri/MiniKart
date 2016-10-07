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
	
//	setter
	public void setCategoryDAO(CategoryDAOImplementation categoryDAOImplementation)
	{
		this.categoryDAOImplementation = categoryDAOImplementation;
	}
	@Transactional
    public void addCategory(Category category) {
		this.categoryDAOImplementation.addCategory(category);
		
    }
	@Transactional
	 public List<Category> listCategory()
	 {
		
		return this.categoryDAOImplementation.listCategory();
		
	 }
	
	@Transactional
	public String stringCategory()
	{
		return this.categoryDAOImplementation.stringCategory();
	}
	
}
