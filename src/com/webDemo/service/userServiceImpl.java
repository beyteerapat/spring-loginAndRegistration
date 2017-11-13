package com.webDemo.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webDemo.dao.userDao;
import com.webDemo.entity.User;

@Service
public class userServiceImpl implements userService {

	@Autowired
	private userDao UserDao;

	@Override
	@Transactional
	public void createUser(User theUser) {
		
		UserDao.createUser(theUser);
		
	}

	@Override
	@Transactional
	public boolean existUsername(String username) {
		
		return UserDao.existUsername(username);
	}

}
