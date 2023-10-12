package com.prakash.dao;

import com.prakash.entity.User;

public interface UserDao {
	public int saveUser(User user);
	public User loginUser(String email,String password);
	
}
