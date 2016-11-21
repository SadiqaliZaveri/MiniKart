package com.minikart.daoimplementation;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.minikart.dao.ProductFullViewDAO;

import com.minikart.model.ProductFullView;
@Repository
public class ProductFullViewDAOImplementation implements ProductFullViewDAO{
@Autowired
private SessionFactory sessionFactory;
	@SuppressWarnings("unchecked")
	public List<ProductFullView> listProductFullView() {
		return sessionFactory.getCurrentSession().createQuery("from ProductFullView").getResultList();
	}

	@SuppressWarnings("unchecked")
	public String listProductFullViewViaJson() {
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		List<ProductFullView> list = sessionFactory.getCurrentSession().createQuery("from ProductFullView").getResultList();
		String listProductFullView = gson.toJson(list);
		return listProductFullView;
	}
	
	@SuppressWarnings("unchecked")
	public ProductFullView getIdFromId(int productFullViewId) {
		String query ="from ProductFullView where productId="+productFullViewId;
		List<ProductFullView> productFullViewList = sessionFactory.getCurrentSession().createQuery(query).getResultList();
		if(productFullViewList!=null && !productFullViewList.isEmpty())
		{
			return productFullViewList.get(0);	
		}else
		{
			return null;
		}
		
	}

	@SuppressWarnings("unchecked")
	public String listProductEnabledFullviewViaJson() {
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		List<ProductFullView> list = sessionFactory.getCurrentSession().createQuery("from ProductFullView where enabled=true").getResultList();
		String listProductEnabledFullView = gson.toJson(list);
		return listProductEnabledFullView;
		
	}

}
