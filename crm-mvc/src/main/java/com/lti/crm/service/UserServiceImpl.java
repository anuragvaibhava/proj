package com.lti.crm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lti.crm.model.User;
import com.lti.crm.dao.*;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO UserDAO;
	
	@Transactional
	public User checkUser(User theUser) {
		return UserDAO.checkUser(theUser);
	}

}
