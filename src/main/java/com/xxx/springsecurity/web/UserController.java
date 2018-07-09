package com.xxx.springsecurity.web;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
	
	@RequestMapping(value={"/","/welcome*"},method=RequestMethod.GET)
	public ModelAndView welcome(){
		String name = "welcome";
		ModelAndView page = new ModelAndView();
		page.setViewName(name);
		page.addObject("title", "welcome");
		page.addObject("message", "welcome to security page");
		return page;
	}
	
	@RequestMapping(value="/admin**",method=RequestMethod.GET)
	public ModelAndView admin(){
		ModelAndView page = new ModelAndView();
		page.setViewName("admin");
		page.addObject("title", "admin");
		page.addObject("message","welcome to admin page");
		return page;
	}
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public ModelAndView loginPage(@RequestParam(name="error",required=false)String error,@RequestParam(name="logout",required=false)String logout){
		ModelAndView page = new ModelAndView();
		page.setViewName("login");
		page.addObject("title", "login");
		if(error != null){
			page.addObject("error", "Invalid username or password.");
		}
		if(logout != null){
			page.addObject("msg", "You've been logged out successfully.");
		}
		return page;
	}
	
}
