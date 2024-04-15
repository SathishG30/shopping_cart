package com.jsp.shoppingcart.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.shoppingcart.dao.CartDao;
import com.jsp.shoppingcart.dao.CustomerDao;
import com.jsp.shoppingcart.dao.OrderDao;
import com.jsp.shoppingcart.dao.ProductDao;
import com.jsp.shoppingcart.dto.Cart;
import com.jsp.shoppingcart.dto.Customer;
import com.jsp.shoppingcart.dto.Item;
import com.jsp.shoppingcart.dto.Orders;
import com.jsp.shoppingcart.dto.Product;

@Controller
public class OrderController {
	      @Autowired
          OrderDao dao;
	      
	      @Autowired
	      CustomerDao cdao;
	      
	      @Autowired
	      ProductDao pdao;
	      
	      @Autowired
	      CartDao cartdao;
	      
	      @RequestMapping("/addorder")
	  	public ModelAndView addorder() {
	  		Orders o = new Orders();

	  		ModelAndView mav = new ModelAndView();
	  		mav.addObject("orderobj", o);

	  		mav.setViewName("addorder");
	  		return mav;
	  	}
	      @RequestMapping("/saveorder")
	      public ModelAndView saveOrder(@ModelAttribute("ordersobj")Orders o,HttpSession session) {
	    	  Customer c=(Customer)session.getAttribute("customerinfo");
	    	  Customer customer=cdao.findCustomerById(c.getId());
	    	  Cart cart=customer.getCart();
	    	  
	    	  List<Item>items=cart.getItems();
	    	  
	    	  List<Item>itemslist=new ArrayList<Item>();
	    	  
	    	  List<Item>itemswithgreaterquantity=new ArrayList<Item>();
	    	  
	    	  for(Item i:items) {
	    		  Product p=pdao.findProductById(i.getP_id());
	    		  if(i.getQuantity()<p.getStock()) {
	    			  itemslist.add(i);
	    			  p.setStock(p.getStock()-i.getQuantity());
	    			  pdao.updateProduct(p);
	    		  }else {
	    			  itemswithgreaterquantity.add(i);
	    		  }
	    	  }
	    	  
	    	  o.setItems(itemslist);
	    	  double totalpriceoforder=0;
	    	  for(Item it:itemslist) {
	    		  totalpriceoforder+=it.getPrice();
	    	  }
	    	  o.setTotalprice(totalpriceoforder);
	    	  cart.setItems(itemswithgreaterquantity);
	    	  
	    	  double totalprice=0;
	    	  
	    	  for(Item item:itemswithgreaterquantity) {
	    		  totalprice+=item.getPrice();
	    	  }
	    	  cart.setTotalprice(totalprice);
	    	  
	    	  List<Orders>orders=customer.getOrders();
	    	  if(orders.size()>0) {
	    		  orders.add(o);
	    		  customer.setOrders(orders);
	    	  }else {
	    		  List<Orders>orders1=new ArrayList<Orders>();
	    		  orders1.add(o);
	    		  customer.setOrders(orders1);
	    	  }
	    	  
	    	  dao.saveOrders(o);
	    	  cdao.updateCustomer(customer);
	    	  
	    	  ModelAndView mav=new ModelAndView();
	    	  mav.addObject("message","Order Placed Successfully");
	    	  mav.addObject("orderdetails",o);
	    	  mav.setViewName("customerbill");
	    	  return mav;
	    }
}
