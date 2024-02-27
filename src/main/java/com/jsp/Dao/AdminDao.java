package com.jsp.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsp.Entities.Admin;

@Repository
public class AdminDao {
    @Autowired
	EntityManagerFactory entityManagerFactory;
    
    public void saveAdmin(Admin admin) {
    	EntityManager em=entityManagerFactory.createEntityManager();
    	EntityTransaction et=em.getTransaction();
    	et.begin();
    	em.persist(admin);
    	et.commit();
    	em.close();
    }
    
    public Admin login(String email,String password) {
    	EntityManager em=entityManagerFactory.createEntityManager();
    	Query q=em.createQuery("select a from Admin a where a.email=?1 and a.password=?2");
    	q.setParameter(1, email);
    	q.setParameter(2, password);
    	
    	List<Admin> admin=q.getResultList();
    	
    	if(admin.size()>0) {
    		return admin.get(0);
    	}
    		
    		else {
    			return null;
    		}
    	
    }
}
