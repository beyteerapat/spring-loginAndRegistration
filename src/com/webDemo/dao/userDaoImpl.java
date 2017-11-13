package com.webDemo.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webDemo.entity.User;

@Repository
public class userDaoImpl implements userDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void createUser(User theUser) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		currentSession.save(theUser);
		
	}

	@Override
	public boolean existUsername(String username) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		return currentSession.createQuery("from User where username = :username")
				.setParameter("username", username)
				.uniqueResult() != null;
	}

}
