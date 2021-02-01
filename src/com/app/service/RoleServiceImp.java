package com.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.IRoleDao;
import com.app.pojos.Role;
@Service
@Transactional
public class RoleServiceImp implements IRoleService {
	
	@Autowired
	private IRoleDao dao;

	@Override
	public Role authenticateRole(String username, String pwd) {

		System.out.println("in service : auth ");
		return dao.authenticateRole(username, pwd);
	}

	@Override
	public String register(Role transientrole) {
		// TODO Auto-generated method stub
		return dao.register(transientrole);
	}

}
