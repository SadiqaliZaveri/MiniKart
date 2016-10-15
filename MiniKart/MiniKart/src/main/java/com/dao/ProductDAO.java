//INTERFACE WITH ABSTRACT METHODS

package com.dao;


import java.util.List;

import com.model.Product;



public interface ProductDAO {
public void addProduct(Product product);
public List<Product> listProduct();
public String listProductViaJson();
public Product getIdFromName(String productName);
public Product getIdFromId(int productId);
public void deleteProduct(int productId);

}
