package com.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.IMedicineDao;
import com.app.pojos.Medicine;

@Service
@Transactional
public class MedicineServiceImp implements IMedicineService {
	
	
	@Autowired
	private IMedicineDao dao;

	@Override
	public String insert(Medicine medicine) {
		// TODO Auto-generated method stub
		return dao.insert(medicine);	
		
	}

	 @Override
		public String update(Medicine medicine)
		{
			// TODO Auto-generated method stub
		      return dao.update(medicine);
		}
		
	 
	/*  
	@Override
	public String update(int id)
	{
		// TODO Auto-generated method stub
	      return dao.update(id);
	}*/
		

	
	@Override
	public List<Medicine> getAll() {
		// TODO Auto-generated method stub
		return dao.getAll();
	}

	@Override
	public String delete(int id) {
		// TODO Auto-generated method stub
		return dao.delete(id);
	}

	@Override
	public Medicine getById(int id) {
		// TODO Auto-generated method stub
		return dao.getById(id);
	}

	

	/*@Override
	public void update(int id) {
		// TODO Auto-generated method stub
		dao.update(id);
	}*/
	
  
	
	
	

}
