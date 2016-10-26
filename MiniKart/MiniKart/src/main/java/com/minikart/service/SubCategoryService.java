// SERVICE FILE WHERE THE TRANSACTIONS ACTUALLY RUN

package com.minikart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.minikart.daoimplementation.SubCategoryDAOImplementation;
import com.minikart.model.SubCategory;
@Service
public class SubCategoryService {
@Autowired
 private SubCategoryDAOImplementation subCategoryDAOImplementation;	
	@Transactional
	public void addSubCategory(SubCategory subcategory) {
		subCategoryDAOImplementation.addSubCategory(subcategory);
	}
	
	@Transactional
	public List<SubCategory> listSubCategory(){
	 return	subCategoryDAOImplementation.listSubCategory();
	}
	@Transactional
	public String listSubCategoryViaJson() {
	 return subCategoryDAOImplementation.listSubCategoryViaJson();
		
	}
	
	@Transactional
	public SubCategory getIdFromName(String subCategoryName) {
	 return subCategoryDAOImplementation.getIdFromName(subCategoryName);
	}
	@Transactional
	public SubCategory getIdFromId(int subCategoryId) {
		return subCategoryDAOImplementation.getIdFromId(subCategoryId);
	}
	@Transactional
	public void deleteSubCategory(int subCategoryId) {
		subCategoryDAOImplementation.deleteSubCategory(subCategoryId);
	}
}
