package com.daoimplementation;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dao.ProductSpecificationDAO;
import com.google.gson.Gson;
import com.model.ProductSpecification;
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
		Gson gson = new Gson();
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
	public ProductSpecification getIdFromId(int productSpecificationId) {
		String query ="from ProductSpecification where productSpecificationId="+productSpecificationId;
		List<ProductSpecification> productSpecificationList = sessionFactory.getCurrentSession().createQuery(query).getResultList();
		if(productSpecificationList!=null && !productSpecificationList.isEmpty())
		{
			return productSpecificationList.get(0);	
		}else
		{
			return null;
		}
		
	}

	public void deleteProductSpecification(int productSpecificationId) {
		ProductSpecification productSpecification = new ProductSpecification();
		productSpecification.setProductSpecificationId(productSpecificationId);
		sessionFactory.getCurrentSession().delete(productSpecificationId);
		
	}

	

}
