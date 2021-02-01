package com.app.dao;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.pojos.Role;
@Repository //manadatory :spring bean having data access logic 
public class RoleDaoImp implements IRoleDao{

	
	
	@Autowired
	private SessionFactory sf;
	
	@Override
	public String register(Role transientrole) {
		// TODO Auto-generated method stub
		
		String mesg=" reg failed";
		//getcurrentsession create a new session object
		sf.getCurrentSession().persist(transientrole);    
		//if object properties change before transaction committed it also saved into database
		mesg="reg successful , ID : "+transientrole.getId();
		return mesg;
	}

	@Override
	public Role authenticateRole(String username, String pwd) {
		// TODO Auto-generated method stub
         String jpql="select r from Role r where r.username =:username and r.password=:pwd";
		
		return sf.getCurrentSession().createQuery(jpql, Role.class).setParameter("username", username).setParameter("pwd", pwd).getSingleResult();
	}

}
