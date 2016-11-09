package com.minikart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.minikart.daoimplementation.ProductFullViewDAOImplementation;
import com.minikart.model.ProductFullView;

@Service
public class ProductFullViewService {
	
@Autowired
private ProductFullViewDAOImplementation productFullViewDAOImplementation;

@Transactional
public List<ProductFullView> listProductFullView() {
	return productFullViewDAOImplementation.listProductFullView();
}
@Transactional
public String listProductFullViewViaJson() {
	return productFullViewDAOImplementation.listProductFullViewViaJson();
}

@Transactional
public ProductFullView getIdFromId(int productFullViewId) {
	return productFullViewDAOImplementation.getIdFromId(productFullViewId);
}

	

}
