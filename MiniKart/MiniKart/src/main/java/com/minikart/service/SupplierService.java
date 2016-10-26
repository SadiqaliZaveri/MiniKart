package com.minikart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.minikart.daoimplementation.SupplierDAOImplementation;
import com.minikart.model.Supplier;

@Service
public class SupplierService {
@Autowired
private SupplierDAOImplementation supplierDAOImplementation;

@Transactional
public void addSupplier(Supplier supplier) {
	supplierDAOImplementation.addSupplier(supplier);
}

@Transactional
public List<Supplier> listSupplier(){
 return	supplierDAOImplementation.listSupplier();
}
@Transactional
public String listSupplierViaJson() {
 return supplierDAOImplementation.listSupplierViaJson();	
}

@Transactional
public Supplier getIdFromName(String supplier) {
 return supplierDAOImplementation.getIdFromName(supplier);
}

@Transactional
public Supplier getIdFromId(int supplierId) {
 return supplierDAOImplementation.getIdFromId(supplierId);
}

@Transactional
public void deleteSupplier(int supplierId) {
	supplierDAOImplementation.deleteSupplier(supplierId);
}
}
