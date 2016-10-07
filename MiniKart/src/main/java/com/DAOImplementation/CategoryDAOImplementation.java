package com.DAOImplementation;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.DAO.CategoryDAO;
import com.model.Category;

@Repository
public class CategoryDAOImplementation implements CategoryDAO {
	@Autowired
	private SessionFactory sessionFactory;
	


	public void addCategory(Category category) {
		
		sessionFactory.getCurrentSession().saveOrUpdate(category);
	}

	

	public void deleteCategory(int categoryId) {
		
//	    sessionFactory.getCurrentSession().load(Category.class, new Integer(categoryId));
		Session session = this.sessionFactory.getCurrentSession();
		Category c = (Category) session.load(Category.class, new Integer(categoryId));
		if(null != c){
			session.delete(c);
		}
		
	}



	
	@SuppressWarnings("unchecked")
	public List<Category> getCategory() {
		return sessionFactory.getCurrentSession().createQuery("from Category").getResultList();
	}

}
