//MAIN QUERIES ARE WRITTEN HERE ALONG WITH LOGIC. THE METHODS ARE JUST CREATED HERE NOT EXECUTED

package com.minikart.daoimplementation;

import java.util.List;


import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.minikart.dao.SubCategoryDAO;
import com.minikart.model.Product;
import com.minikart.model.SubCategory;
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
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		
		

		
		List<Product> list = sessionFactory.getCurrentSession().createQuery("from SubCategory").getResultList();
		String listProduct = gson.toJson(list);
		return listProduct;
	}

	@SuppressWarnings("unchecked")
	public SubCategory getIdFromName(String subCategoryName) {
		
		String query ="from SubCategory where subCategoryName='"+subCategoryName+"'";
		
		List<SubCategory> subCategoryList = sessionFactory.getCurrentSession().createQuery(query).getResultList();
		if(subCategoryList!=null && !subCategoryList.isEmpty())
		{
			return subCategoryList.get(0);	
		}else
		{
			return null;
		}
		
	}
	@SuppressWarnings("unchecked")
	public SubCategory getIdFromId(int subCategoryId) {
		String query ="from SubCategory where subCategoryId="+subCategoryId;
		
		
		List<SubCategory> subCategoryList = sessionFactory.getCurrentSession().createQuery(query).getResultList();
		if(subCategoryList!=null && !subCategoryList.isEmpty())
		{
			return subCategoryList.get(0);	
		}else
		{
			return null;
		}
		
	
	}

	public void deleteSubCategory(int subCategoryId) {
		SubCategory deleteSubCategory = new SubCategory();
		deleteSubCategory.setSubCategoryId(subCategoryId);
		sessionFactory.getCurrentSession().delete(deleteSubCategory);	
	}

}
