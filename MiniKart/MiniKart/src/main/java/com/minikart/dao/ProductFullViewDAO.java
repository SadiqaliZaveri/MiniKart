package com.minikart.dao;

import java.util.List;


import com.minikart.model.ProductFullView;

public interface ProductFullViewDAO {

	public List<ProductFullView> listProductFullView();
	public String listProductFullViewViaJson();
	public ProductFullView getIdFromId(int productFullViewId);
}
