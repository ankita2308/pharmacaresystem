package com.app.service;

import com.app.pojos.Role;

public interface IRoleService {
	
	String register(Role transientrole);
	Role authenticateRole(String username,String pwd);
}
