package com.app.dao;

import java.util.List;

import com.app.pojos.User;

public interface IUserDao {
	void insert(User u);
	List<User>getAllUser();
	

}
