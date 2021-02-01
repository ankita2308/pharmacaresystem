package com.app.dao;

import com.app.pojos.Role;

public interface IRoleDao {
	String register(Role transientrole);
	Role authenticateRole(String username,String pwd);

}
