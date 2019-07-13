package com.lti.airline.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lti.airline.dao.UserDAO;
import com.lti.airline.model.User;



@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDAO userdao;

	@Transactional
	public void saveUser(User user) {
			userdao.saveUser(user);

	}

}
