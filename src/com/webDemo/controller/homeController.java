package com.webDemo.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.webDemo.entity.User;
import com.webDemo.service.userService;

@Controller
public class homeController {

	@Autowired
	private userService UserService;
	
	@RequestMapping("/")
	public String showHome() {
		return "home";
	}
	
	@RequestMapping("/login")
	public String showLogin() {
		
		
		
		return "login";
	}
	
	@RequestMapping("/register")
	public String showRegister(Model model) {
		
		User theUser = new User();
		
		model.addAttribute("user",theUser);
		
		return "register";
		
	}
	
	@RequestMapping(value="/createuser",  method=RequestMethod.POST)
	public String createUser(@Valid @ModelAttribute("user") User theUser ,BindingResult bindingresult) {
		
		if(bindingresult.hasErrors()) {
			return "register";
		}
		
		if(UserService.existUsername(theUser.getUsername())) {
			bindingresult.rejectValue("username", "DuplicateKey.theUser.username", "This username already exist.");
			return "register";
		}
		
		try {
			UserService.createUser(theUser);
		} catch(DuplicateKeyException e) {
			bindingresult.rejectValue("username", "DuplicateKey.theUser.username","This username already exist.");
			return "register";
		}
		
		
		return "home";
	}
	
	@RequestMapping("/database")
	public String showdatabase() {
		return "database";
	}
	
	@RequestMapping("/logout")
	public String showLogout() {
		return "redirect:/";
	}
}
