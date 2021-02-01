package com.app.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.app.pojos.User;
@Repository //manadatory :spring bean having data access logic 
public class UserDaoImp implements IUserDao {

	//dependency of UserDao
	@Autowired
	private SessionFactory sf;
	private Session session;
   
    
    @Override
    @Transactional
	public List<User> getAllUser() {
		// TODO Auto-generated method stub
		session=sf.getCurrentSession();
		String jpql="select u from User u";
		List<User>userlist=session.createQuery(jpql,User.class).getResultList();
		return userlist;
	}
    
	@Override
	@Transactional
	public void insert(User u) {
		// TODO Auto-generated method stub
		
		session=sf.getCurrentSession();
		//session.persist(u);
		 session.save(u);
		//session.saveOrUpdate(u);
		
		
		
	}

	

}
