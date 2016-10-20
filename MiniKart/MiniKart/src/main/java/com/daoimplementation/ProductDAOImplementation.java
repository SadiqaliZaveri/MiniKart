package com.daoimplementation;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dao.ProductDAO;
import com.google.gson.Gson;
import com.model.Product;
@Repository
public class ProductDAOImplementation implements ProductDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void addProduct(Product product) {
		sessionFactory.getCurrentSession().saveOrUpdate(product);
		
	}

	@SuppressWarnings("unchecked")
	public List<Product> listProduct() {
		
		return sessionFactory.getCurrentSession().createQuery("from Product").getResultList();
		
	}
	@SuppressWarnings("unchecked")
	public Product getIdFromName(String productName) {
		String query = "from Product where productName='"+productName+"'";
		List<Product> productList = sessionFactory.getCurrentSession().createQuery(query).getResultList();
		if(productList!=null && !productList.isEmpty())
		{
			return productList.get(0);
		}
		else
		{
			return null;
		}
	}
	@SuppressWarnings("unchecked")
	public String listProductViaJson() {
		Gson gson = new Gson();
		List<Product> list = sessionFactory.getCurrentSession().createQuery("from Product").getResultList();
		String listProduct = gson.toJson(list);
		return listProduct;
	}
	@SuppressWarnings("unchecked")
	public Product getIdFromId(int productId) {
		String query ="from Product where productId="+productId;
		List<Product> productList = sessionFactory.getCurrentSession().createQuery(query).getResultList();
		if(productList!=null && !productList.isEmpty())
		{
			return productList.get(0);	
		}else
		{
			return null;
		}
		
	}

	public void deleteProduct(int productId) {
		Product product = new Product();
		product.setProductId(productId);
		sessionFactory.getCurrentSession().delete(product);
		
	}

}
