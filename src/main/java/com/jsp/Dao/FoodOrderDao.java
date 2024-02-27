package com.jsp.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsp.Entities.FoodOrder;

@Repository
public class FoodOrderDao {
	
	@Autowired
	EntityManagerFactory emf;

	public void saveFoodOrder(FoodOrder fo) {
		EntityManager em=emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		et.begin();
		em.persist(fo);
		et.commit();
		
	}

	public List<FoodOrder> viewAllFoodOrders() {
		EntityManager em=emf.createEntityManager();
		Query q=em.createQuery("select f from FoodOrder f");
		return q.getResultList();
	}
	
	
	
	  

}
