package com.minikart.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.minikart.daoimplementation.ProductSpecificationDAOImplementation;
import com.minikart.model.ProductSpecification;

@Service
public class ProductSpecificationService {
	
@Autowired
private ProductSpecificationDAOImplementation productSpecificationDAOImplementation;

@Transactional
public void addProductSpecification(ProductSpecification productSpecification) {
	productSpecificationDAOImplementation.addProduct(productSpecification);
}

@Transactional
public List<ProductSpecification> listProductSpecification() {
	return productSpecificationDAOImplementation.listProductSpecification();
}


@Transactional
public String listProductSpecificationViaJson() {
	return productSpecificationDAOImplementation.listProductSpecificationViaJson();
}

@Transactional
public ProductSpecification getIdFromName(String productSpecificationName) {
	return productSpecificationDAOImplementation.getIdFromName(productSpecificationName);
}

@Transactional
public ProductSpecification getIdFromId(int productId)
{
	return productSpecificationDAOImplementation.getIdFromId(productId);
}
@Transactional
public void deleteProductSpecification(int productId)
{
	 productSpecificationDAOImplementation.deleteProductSpecification(productId);
}
}
