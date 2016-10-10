//MAIN QUERIES ARE WRITTEN HERE ALONG WITH LOGIC. THE METHODS ARE JUST CREATED HERE NOT EXECUTED

package com.DAOImplementation;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.DAO.SubCategoryDAO;
import com.google.gson.Gson;
import com.model.Product;
import com.model.SubCategory;
@Repository
public class SubCategoryDAOImplementation implements SubCategoryDAO {
@Autowired
private SessionFactory sessionFactory;

	public void addSubCategory(SubCategory subcategory) {
		sessionFactory.getCurrentSession().saveOrUpdate(subcategory);
	}

	@SuppressWarnings("unchecked")
	public List<SubCategory> listSubCategory() {
		List<SubCategory> subCategoryList = sessionFactory.getCurrentSession().createQuery("from SubCategory").getResultList();
		return subCategoryList;
	}
	
	@SuppressWarnings("unchecked")
	public String listSubCategoryViaJson() {
		Gson gson = new Gson();
		List<Product> list = sessionFactory.getCurrentSession().createQuery("from SubCategory").getResultList();
		String listProduct = gson.toJson(list);
		return listProduct;
	}

	@SuppressWarnings("unchecked")
	public SubCategory getIdFromName(String subCategoryName) {
		
		String query ="from Subcategory where subCategoryName='"+subCategoryName+"'";
		
		List<SubCategory> subCategoryList = sessionFactory.getCurrentSession().createQuery(query).getResultList();
		if(subCategoryList!=null && !subCategoryList.isEmpty())
		{
			return subCategoryList.get(0);	
		}else
		{
			return null;
		}
		
	}

}
