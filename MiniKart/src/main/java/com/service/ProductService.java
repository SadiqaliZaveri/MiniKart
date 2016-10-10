package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.DAOImplementation.ProductDAOImplementation;
import com.model.Product;

@Service
public class ProductService {
	
@Autowired
private ProductDAOImplementation productDAOImplementation;

@Transactional
public void addProduct(Product product) {
	productDAOImplementation.addProduct(product);
}

@Transactional
public List<Product> listProduct() {
	return productDAOImplementation.listProduct();
}

@Transactional
public Product getIdFromName(String productName) {
	return productDAOImplementation.getIdFromName(productName);
}

@Transactional
public String listProductViaJson() {
	return productDAOImplementation.listProductViaJson();
}
}
