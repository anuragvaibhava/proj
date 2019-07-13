package com.lti.airline.dao;

import java.util.List;

import com.lti.airline.model.User;



public interface UserDAO {

	public void saveUser(User user);// user accessed.
	
	public List<User> getUsers(); //admin

	
}
