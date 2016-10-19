package com.pkg.controller;


import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.pkg.beans.HelloBean;
 
@Controller
public class HelloWorldController {
	String message = "Extracts development";
	
	HelloBean helloBean;
 
	@RequestMapping("/hello")
	public ModelAndView showMessage(
			@RequestParam(value = "name", required = false, defaultValue = "World") String name) {
		System.out.println("in controller");
 
		helloBean = new HelloBean();
		
		List<String> exTypes = new ArrayList<String>();
		exTypes.add("APC");
		exTypes.add("OP");
		exTypes.add("RDM");
		exTypes.add("PDS");
		
		helloBean.setExtractTypes(exTypes);
		ModelAndView mv = new ModelAndView("HelloWorld");
		mv.addObject("message", message);
		mv.addObject("helloBean", helloBean);
		//mv.addObject("name", name);
		return mv;
	}
	
	@RequestMapping(value="/Submit", method=RequestMethod.POST)
	public String submit() {
		
		System.out.println("Addeded");
		return "added";
		// TODO Auto-generated method stub

	}
}