package com.lti.airline.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lti.airline.model.User;
import com.lti.airline.service.UserService;


@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/showForm")
	public String showFormForAdd(ModelMap theModel) {
		
		User user = new User();
		theModel.addAttribute("user", user);
		return "signUp";
	}
	
	@PostMapping("/signup")                                          // actions is signup
	public String saveUser(@ModelAttribute("user") User user) {
		userService.saveUser(user);
		
		return "home-page";
	
	
}
}
