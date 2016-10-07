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
	public String stringCategory() {
		Gson gson = new Gson();
		List<Category> categoryList = sessionFactory.getCurrentSession().createQuery("from Category").getResultList();
		String g = gson.toJson(categoryList);
		return g;
	}
	
}


