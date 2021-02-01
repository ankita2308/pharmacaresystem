package com.app.service;

import java.util.List;

import com.app.pojos.User;

public interface IUserService {
	void insert(User u);
	List<User>getAllUser();
}
