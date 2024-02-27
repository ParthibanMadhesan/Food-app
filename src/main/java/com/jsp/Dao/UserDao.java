package com.jsp.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsp.Entities.User;

@Repository
public class UserDao {
	
	@Autowired
	EntityManagerFactory emf;

	public void saveUser(User u) {
		EntityManager em=emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		et.begin();
		em.persist(u);
		et.commit();
		
	}

	public User login(String email, String password) {
		EntityManager em=emf.createEntityManager();
		Query q=em.createQuery("select u from User u where email=?1 and password=?2");
		q.setParameter(1, email);
		q.setParameter(2, password);
		try {
			List<User>u=q.getResultList();
			return u.get(0);
			
		}catch(NoResultException e){
			return null;
		}
		catch(IndexOutOfBoundsException e){
			return null;
		}
		
	}

	public void updateUser(User u) {
		EntityManager em=emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		et.begin();
		em.merge(u);
		et.commit();
		
	}

}
