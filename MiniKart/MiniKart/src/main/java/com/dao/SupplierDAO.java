package com.dao;

import java.util.List;

import com.model.Supplier;

public interface SupplierDAO {

	public void addSupplier(Supplier supplier);
	public List<Supplier> listSupplier();
	public String listSupplierViaJson();
	public Supplier getIdFromName(String supplierName);
	public Supplier getIdFromId(int supplierId);
	public void deleteSupplier(int supplierId);
}
