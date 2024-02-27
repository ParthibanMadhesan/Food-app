package com.jsp.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;

import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsp.Entities.Product;
@Repository
public class ProductDao {
  @Autowired
	EntityManagerFactory emf;
  
  public void saveProduct(Product p) {
	  EntityManager em=emf.createEntityManager();
	  EntityTransaction et=em.getTransaction();
	  et.begin();
	  em.persist(p);
	  et.commit();
	
  }
  
  public List<Product> viewAllProducts() {
	  
	  EntityManager em=emf.createEntityManager();
	  Query q=em.createQuery("select p from Product p");
	  
	  return q.getResultList();
	  
	  
  }

public Product viewProductById(int id) {
	
	EntityManager em=emf.createEntityManager();
	
	return em.find(Product.class, id);

}

public void updateProductt(Product product) {
EntityManager em=emf.createEntityManager();
EntityTransaction et=em.getTransaction();
et.begin();
em.merge(product);
et.commit();
	
}

public void viewProductDeleteByid(int id) {
	EntityManager em=emf.createEntityManager();
	EntityTransaction et=em.getTransaction();
	Product p=em.find(Product.class, id);
	
	et.begin();
	em.remove(p);
	et.commit();
	
}


}