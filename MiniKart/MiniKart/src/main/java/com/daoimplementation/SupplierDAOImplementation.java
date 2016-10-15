package com.daoimplementation;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dao.SupplierDAO;
import com.google.gson.Gson;
import com.model.Supplier;
@Repository
public class SupplierDAOImplementation implements SupplierDAO{

	@Autowired
	private SessionFactory sessionFactory;
	public void addSupplier(Supplier supplier) {
		sessionFactory.getCurrentSession().saveOrUpdate(supplier);
	}

	@SuppressWarnings("unchecked")
	public List<Supplier> listSupplier() {
		
		return sessionFactory.getCurrentSession().createQuery("from Supplier").getResultList();
	}
	@SuppressWarnings("unchecked")
	public String listSupplierViaJson() {
		Gson gson = new Gson();
		
		List<Supplier> list = sessionFactory.getCurrentSession().createQuery("from Supplier").getResultList();
		String listSupplier = gson.toJson(list);
		return listSupplier;
	}
	@SuppressWarnings("unchecked")
	public Supplier getIdFromName(String supplierName) {
		String query = "from Supplier where supplierName='"+supplierName+"'";
		List<Supplier> supplierList = sessionFactory.getCurrentSession().createQuery(query).getResultList();
		if(supplierList!=null && !supplierList.isEmpty())
		{
		return supplierList.get(0);
		}
		else
		{
		return null;	
		}
	}

	public void deleteSupplier(int supplierId) {
		Supplier deleteSupplier = new Supplier();
		deleteSupplier.setSupplierId(supplierId);
		sessionFactory.getCurrentSession().delete(deleteSupplier);
		
	}
	@SuppressWarnings("unchecked")
	public Supplier getIdFromId(int supplierId) {
		String query ="from Supplier where supplierId="+supplierId;
		List<Supplier> supplierList = sessionFactory.getCurrentSession().createQuery(query).getResultList();
		if(supplierList!=null && !supplierList.isEmpty())
		{
			return supplierList.get(0);	
		}else
		{
			return null;
		}
		
	}

}
