package com.minikart.dao;

import java.util.List;

import com.minikart.model.ProductSpecification;


public interface ProductSpecificationDAO {
	
public void addProduct(ProductSpecification productSpecification);
public List<ProductSpecification> listProductSpecification();
public String listProductSpecificationViaJson();
public ProductSpecification getIdFromName(String productSpecificationName);
public ProductSpecification getIdFromId(int productId);
public void deleteProductSpecification(int productId);

}
