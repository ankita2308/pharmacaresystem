package com.app.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.pojos.Disease;

@Repository
public class DiseaseDaoImp implements IDiseaseDao {
  
	
	
	@Autowired
	private SessionFactory sf;
	@Override
	public void insert(Disease disease) {
		// TODO Auto-generated method stub
		sf.getCurrentSession().save(disease); //save entity into database
		
	}

	@Override
	public List<Disease> getAll() {
		// TODO Auto-generated method stub
		String jpql="select d from Disease d";
		return sf.getCurrentSession().createQuery(jpql, Disease.class).getResultList();
	}

}
