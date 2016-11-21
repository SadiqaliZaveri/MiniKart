package com.minikart.daoimplementation;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.minikart.dao.ProductDAO;
import com.minikart.model.Product;
@Repository
public class ProductDAOImplementation implements ProductDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void addProduct(Product product) {
		product.setEnabled(false);
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
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
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

	public void enableDisableProduct(int productId) {
		sessionFactory.getCurrentSession().createQuery("update Product set enabled = case when enabled=true then false when enabled=false then true end where productId="+productId ).executeUpdate();
		
	}

	@SuppressWarnings("unchecked")
	public String listProductEnabledViaJson() {
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		List<Product> list = sessionFactory.getCurrentSession().createQuery("from Product where enabled=true").getResultList();
		String listProduct = gson.toJson(list);
		return listProduct;
		
	}

	public void updateProductMinus(int productId) {
       sessionFactory.getCurrentSession().createQuery("update Product set productStock = productStock - 1 where productId="+productId).executeUpdate();		
	}

	public void updateProductPlus(int productId) {
		sessionFactory.getCurrentSession().createQuery("update Product set productStock = productStock + 1 where productId="+productId).executeUpdate();
		
	}
	

}
