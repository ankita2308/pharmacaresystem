package com.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.IUserDao;
import com.app.pojos.User;

@Service
@Transactional
public class UserServiceImp  implements IUserService{
	
	@Autowired
	private IUserDao dao;
	
	

	@Override
	public void insert(User u) {
		// TODO Auto-generated method stub
	  dao.insert(u);
			
	}

	@Override
	public List<User> getAllUser() {
		// TODO Auto-generated method stub
		return dao.getAllUser();
		
	}
	

}
