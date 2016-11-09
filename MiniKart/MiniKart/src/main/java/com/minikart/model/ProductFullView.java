package com.minikart.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;



import com.google.gson.annotations.Expose;

@Entity
public class ProductFullView implements Serializable{

/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
@Id
@Expose
private int productId;
@Expose
private String categoryName;
@Expose
private String subCategoryName;
@Expose	
private String supplierName;
@Expose
private String productName;
@Expose
private int productStock;
@Expose
private int productPrice;
@Expose
private int productDiscountPrice;
@Expose
private int productRating;
@Expose
private String productDescription;
@Expose
private String productWeight;
@Expose
private String productWarranty;
@Expose
private String productInches;
@Expose
private String productColor;
@Expose
private String productRam;
@Expose
private String productNetworkType;
@Expose
private String productScreenSize;
@Expose
private String productBatteryCapacity;
@Expose
private String productCamera;
@Expose
private String productSecondaryCamera;
@Expose
private String productOperatingSystem;
@Expose
private String productProcessor;
@Expose
private String productGraphicsMemory;
@Expose
private String productHardDiskCapacity;
@Expose
private String productPortType;
@Expose
private String productConnectivityFeatures;
@Expose
private String productResolution;
}
