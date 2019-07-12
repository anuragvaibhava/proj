package com.lti.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloWolrdController {
	
	@	RequestMapping("/raj")
public ModelAndView helloWorld() {
	
	String msg= "<br><div style='text-align:center;'>" + "<h3>*******Hello World from Spring MVC</h3> "+ "This message is coming from HelloWorld.java*****"
			+ "</div><br><br>";  
	// data from database
	
	//return new ModelAndView("welcome", "message", msg); // welcome here is view name.
	ModelAndView mv = new ModelAndView("welcome");
	mv.addObject("message",msg);
	mv.addObject("test", "Created by Raj");
	return mv;
}
}
