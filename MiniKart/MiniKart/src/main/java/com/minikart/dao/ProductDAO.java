//INTERFACE WITH ABSTRACT METHODS

package com.minikart.dao;


import java.util.List;

import com.minikart.model.Product;



public interface ProductDAO {
public void addProduct(Product product);
public List<Product> listProduct();
public String listProductViaJson();
public String listProductEnabledViaJson();
public Product getIdFromName(String productName);
public Product getIdFromId(int productId);
public void deleteProduct(int productId);
public void enableDisableProduct(int productId);
public void updateProductMinus(int productId);
public void updateProductPlus(int productId);

}
