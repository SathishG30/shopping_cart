package com.jsp.shoppingcart.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.cache.spi.support.AbstractReadWriteAccess.Item;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.shoppingcart.dao.CartDao;
import com.jsp.shoppingcart.dao.CustomerDao;
import com.jsp.shoppingcart.dto.Cart;
import com.jsp.shoppingcart.dto.Customer;

@Controller
public class CartController {
       @Autowired
       CartDao dao;
       
       @Autowired
       CustomerDao cusdao;
       
       @RequestMapping("/fetchitemsfromcart")
       public ModelAndView fetchItemsFromCart(HttpSession session) {
    	   Customer c=(Customer)session.getAttribute("customerinfo");
    	   
    	   Customer customer=cusdao.findCustomerById(c.getId());
    	   Cart cart=customer.getCart();
    	   List<com.jsp.shoppingcart.dto.Item>items=cart.getItems();
    	   
    	   ModelAndView mav=new ModelAndView();
    	   mav.addObject("itemslist",items);
    	   mav.addObject("total",cart.getTotalprice());
    	   mav.setViewName("displaycartitemstocustomer");
    	   
    	   return mav;
    	   
       }
       
}
