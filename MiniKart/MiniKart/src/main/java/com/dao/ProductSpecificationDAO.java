package com.dao;

import java.util.List;


import com.model.ProductSpecification;


public interface ProductSpecificationDAO {
	
public void addProduct(ProductSpecification productSpecification);
public List<ProductSpecification> listProductSpecification();
public String listProductSpecificationViaJson();
public ProductSpecification getIdFromName(String productSpecificationName);
public ProductSpecification getIdFromId(int productSpecificationId);
public void deleteProductSpecification(int productSpecificationId);

}
