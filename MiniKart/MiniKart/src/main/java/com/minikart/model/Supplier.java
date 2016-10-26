package com.minikart.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


import org.hibernate.validator.constraints.NotEmpty;

import com.google.gson.annotations.Expose;

@Entity
public class Supplier implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Expose
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int supplierId;
	@Expose
	@NotEmpty(message="Cannot be Empty")
	private String supplierName;
	@Expose
	@NotEmpty(message="Cannot be Empty")
	private String supplierDescription;
	
//	@OneToOne
//	private UserDetails userDetails;
	
	public int getSupplierId() {
		return supplierId;
	}
	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}
	public String getSupplierName() {
		return supplierName;
	}
	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}
	public String getSupplierDescription() {
		return supplierDescription;
	}
	public void setSupplierDescription(String supplierDescription) {
		this.supplierDescription = supplierDescription;
	}
	
	
}
