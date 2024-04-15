package com.jsp.shoppingcart.controller;

import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.shoppingcart.dao.CustomerDao;
import com.jsp.shoppingcart.dao.ProductDao;
import com.jsp.shoppingcart.dto.Customer;
import com.jsp.shoppingcart.dto.Product;


@Controller
public class CustomerController {
	@Autowired
	CustomerDao dao ;
	
	@RequestMapping("/addcustomer")
	public ModelAndView addCustomer() {
		Customer c=new Customer();
		ModelAndView mav=new ModelAndView();
		mav.addObject("customerobj", c);
		mav.setViewName("customerform");
		return mav;
	}
	  @RequestMapping("/savecustomer")
	   public ModelAndView saveCustomer(@ModelAttribute("customerobj")Customer c) {
		   dao.saveCustomer(c);
		   ModelAndView mav=new ModelAndView();
		   mav.addObject("message","data saved successfully");
		   mav.setViewName("customermenu");
		   return mav;
	  }
	  @RequestMapping("/customerloginvalidation")   
	  public ModelAndView customerlogin(ServletRequest req,HttpSession session) {
		  String email=req.getParameter("email");
		  String password=req.getParameter("password");
		  
		  Customer c=dao.login(email, password);
		  ModelAndView mav=new ModelAndView();
		  
		  if(c!=null) {
			  mav.addObject("msg","Customer Successfully Loged In");
			  mav.setViewName("customeroption");
			  session.setAttribute("customerinfo", c);
			  return mav;
		  }else {
			  mav.addObject("msg","Invalid Credentials");
			  mav.setViewName("customerloginform");
			  return mav;
		  }
	  }
	  
	  

}
