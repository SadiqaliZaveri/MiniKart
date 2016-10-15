package com.daoimplementation;

import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dao.CategoryDAO;
import com.google.gson.Gson;
import com.model.Category;


@Repository
public class CategoryDAOImplementation implements CategoryDAO
{
	@Autowired
	private SessionFactory sessionFactory;
	
	public void createCategory(Category category)
	{
		
		sessionFactory.getCurrentSession().saveOrUpdate(category);
	
	}
	
	public void deleteCategory(int categoryId)
	{
		Category categoryToDelete=new Category();
		categoryToDelete.setCategoryId(categoryId);
		sessionFactory.getCurrentSession().delete(categoryToDelete);
	}
	
	@SuppressWarnings("unchecked")
	public List<Category> listCategory() 
	{
		List<Category> categoryList = sessionFactory.getCurrentSession().createQuery("from Category").getResultList();
		return categoryList;
	}
	
	@SuppressWarnings("unchecked")
	public String listCategoryViaJson()
	{
		Gson list = new Gson();
		List<Category> categoryList = sessionFactory.getCurrentSession().createQuery("from Category").getResultList();
		String categoriesjson= list.toJson(categoryList);
		return categoriesjson;
		
	}

	@SuppressWarnings("unchecked")
	public Category getIdByName(String categoryName)
	{
		
		String sql = "from Category where categoryName= '" +categoryName+"'";
		List<Category> list = sessionFactory.getCurrentSession().createQuery(sql).getResultList();
		if(list!=null && !list.isEmpty())
		{
			return list.get(0);
		}
		else return null;
	}
	
	
	
	@SuppressWarnings("unchecked")
	public Category getById(int categoryId)
	{
		
		String sql = "from Category where categoryId=" +categoryId;
		List<Category> list = sessionFactory.getCurrentSession().createQuery(sql).getResultList();
		if(list!=null && !list.isEmpty())
		{
			return list.get(0);
		}
	    return null;
	}

	
	
}
