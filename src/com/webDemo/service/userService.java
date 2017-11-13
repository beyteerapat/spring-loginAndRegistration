package com.webDemo.service;

import com.webDemo.entity.User;

public interface userService {

	public void createUser(User theUser);
	
	public boolean existUsername(String username);
	
}
