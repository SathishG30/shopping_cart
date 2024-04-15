package com.jsp.shoppingcart.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsp.shoppingcart.dto.Item;
@Repository
public class ItemDao {
	@Autowired
    EntityManagerFactory emf;
	
	public void saveItem(Item items) {
		EntityManager em=emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		
		et.begin();
		em.persist(items);
		et.commit();
	}
	
	
	
	public void updateItem(Item items) {
		EntityManager em=emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		
		
		et.begin();
		em.merge(items);
		et.commit();
	  }
	public Item fndItemById(int id) {
		EntityManager em=emf.createEntityManager();
		
		Item items=em.find(Item.class,id);
		
		if(items !=null) {
			return items;
		}else {
			return null;
		}
		
	  }
	
	public void deleteItemById(int id) {
		EntityManager em=emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		
		Item items=em.find(Item.class,id);
		
		et.begin();
		em.remove(items);
		et.commit();
	}


}
