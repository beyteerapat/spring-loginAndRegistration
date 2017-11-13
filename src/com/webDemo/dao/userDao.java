package com.webDemo.dao;

import com.webDemo.entity.User;

public interface userDao {

	public void createUser(User theUser);

	public boolean existUsername(String username);
	
}
