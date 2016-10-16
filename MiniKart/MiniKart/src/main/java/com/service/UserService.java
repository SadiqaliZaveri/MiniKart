package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.daoimplementation.UserDAOImplementation;
import com.model.UserDetails;

@Service
public class UserService {
	@Autowired
	private UserDAOImplementation userDAOImplementation;
	@Transactional
	public void saveOrUpdate(UserDetails userDetails) {
		userDAOImplementation.saveOrUpdate(userDetails);
	}
}
