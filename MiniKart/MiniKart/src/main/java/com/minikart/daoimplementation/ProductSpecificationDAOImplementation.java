package com.minikart.daoimplementation;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.minikart.dao.ProductSpecificationDAO;
import com.minikart.model.ProductSpecification;
@Repository
public class ProductSpecificationDAOImplementation implements ProductSpecificationDAO{

	@Autowired
	 private SessionFactory sessionFactory;
	public void addProduct(ProductSpecification productSpecification) {
		sessionFactory.getCurrentSession().saveOrUpdate(productSpecification);
		
	}

	@SuppressWarnings("unchecked")
	public List<ProductSpecification> listProductSpecification() {
		
		return sessionFactory.getCurrentSession().createQuery("from ProductSpecification").getResultList();
	}

	@SuppressWarnings("unchecked")
	public String listProductSpecificationViaJson() {
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		List<ProductSpecification> list = sessionFactory.getCurrentSession().createQuery("from ProductSpecification").getResultList();
		String listProductSpecification = gson.toJson(list);
		return listProductSpecification;
	}
	
	@SuppressWarnings("unchecked")
	public ProductSpecification getIdFromName(String productSpecificationName) {
		String query = "from ProductSpecification where productSpecificationName='"+productSpecificationName+"'";
		List<ProductSpecification> productSpecificationList = sessionFactory.getCurrentSession().createQuery(query).getResultList();
		if(productSpecificationList!=null && !productSpecificationList.isEmpty())
		{
			return productSpecificationList.get(0);
		}
		else
		{
			return null;
		}
	}

	@SuppressWarnings("unchecked")
	public ProductSpecification getIdFromId(int productId) {
		String query ="from ProductSpecification where productSpecificationId="+productId;
		List<ProductSpecification> productSpecificationList = sessionFactory.getCurrentSession().createQuery(query).getResultList();
		if(productSpecificationList!=null && !productSpecificationList.isEmpty())
		{
			return productSpecificationList.get(0);	
		}else
		{
			return null;
		}
		
	}

	public void deleteProductSpecification(int productId) {
		ProductSpecification productSpecification = new ProductSpecification();
		productSpecification.setProductId(productId);
		sessionFactory.getCurrentSession().delete(productId);
		
	}

	

}
