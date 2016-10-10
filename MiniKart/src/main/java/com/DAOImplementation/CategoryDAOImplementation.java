//MAIN QUERIES ARE WRITTEN HERE ALONG WITH LOGIC. THE METHODS ARE JUST CREATED HERE NOT EXECUTED

package com.DAOImplementation;


import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.DAO.CategoryDAO;
import com.google.gson.Gson;
import com.model.Category;

@Repository
public class CategoryDAOImplementation implements CategoryDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public void addCategory(Category category) {
		sessionFactory.getCurrentSession().saveOrUpdate(category);
	}

	public List<Category> listCategory() {
		@SuppressWarnings("unchecked")
		List<Category> categoryList = sessionFactory.getCurrentSession().createQuery("from Category").getResultList();
		return categoryList;
	}

	
	@SuppressWarnings("unchecked")
	public String listCategoryViaJson() {
		Gson gson = new Gson();
		List<Category> categoryList = sessionFactory.getCurrentSession().createQuery("from Category").getResultList();
		String g = gson.toJson(categoryList);
		return g;
	}
	
	@SuppressWarnings("unchecked")
	public Category getIdFromName(String categoryName) {
		String query = "from Category WHERE categoryName = '"+categoryName+"'";
		List<Category> CategoryList= sessionFactory.getCurrentSession().createQuery(query).getResultList();
		if(CategoryList!=null && !CategoryList.isEmpty())
		{
			return CategoryList.get(0);	
		}else
		{
			return null;
		}
		
	}
	
}


