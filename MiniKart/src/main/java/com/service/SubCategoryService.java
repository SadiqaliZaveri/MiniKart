// SERVICE FILE WHERE THE TRANSACTIONS ACTUALLY RUN

package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.DAOImplementation.SubCategoryDAOImplementation;
import com.model.SubCategory;
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
}
