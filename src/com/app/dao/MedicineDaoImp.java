package com.app.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.app.pojos.Medicine;
@Repository  //manadatory :spring bean having data access logic 
public class MedicineDaoImp implements IMedicineDao{
//dependency of dao layer
	@Autowired
	private SessionFactory sf;
	private Session session;
   

	@Override
	@Transactional
	public String insert(Medicine medicine) {
		String mesg="medicine insertion failed";
		System.out.println(medicine);
		session=sf.getCurrentSession();
        //session.save(medicine);
		//session.persist(medicine);
		 session.saveOrUpdate(medicine);  
		 mesg="medicine insertion successful";
		 System.out.println(medicine);
		return mesg;
		
	}
	
	@Override
    @Transactional
	public String update(Medicine medicine) 
	{
		
		String mesg="medicine updation failed";
		System.out.println(medicine.getMedicineId());
		sf.getCurrentSession().saveOrUpdate(medicine);
		System.out.println(medicine);
       // session.saveOrUpdate(medicine);
		//session.update(medicine);
		mesg="medicine updation successful";
		
		System.out.println(medicine.getMedicinePrice());
		return mesg;
		
 		
    }

	
	/*@Override
    @Transactional
	public String update(int id) 
	{
    String mesg="medicine updation failed";
	Medicine med=getById(id);
	if(med!=null)
	{
		session=sf.getCurrentSession();
		session.update(med);
		mesg="medicine updation successful";
	}
	return mesg;
		
 		
    }*/
	

	@Override
	@Transactional
	public List<Medicine> getAll() {
		// TODO Auto-generated method stub
		session=sf.getCurrentSession();
		String jpql="select m from Medicine m";
		return  session.createQuery(jpql, Medicine.class).getResultList();
		
	}

	@Override
	@Transactional
	public String delete(int id) {
		// TODO Auto-generated method stub
		String mesg="medicine deletion failed";
		Medicine medicine=(Medicine)sf.getCurrentSession().load(Medicine.class, id);
    	if(medicine!=null)
    	{	
    		sf.getCurrentSession().delete(medicine);//deleteing an entity from database	
    	    mesg="medicine deleted successfully";
    	}
    	return mesg;
	}

	@Override
	@Transactional
	public Medicine getById(int id) {
		// TODO Auto-generated method stub
		Session session=sf.getCurrentSession();
		Medicine medicine=session.get(Medicine.class,id);
    	session.get(Medicine.class, id);
    	return medicine;
		}
}
    



    
    
	
	


