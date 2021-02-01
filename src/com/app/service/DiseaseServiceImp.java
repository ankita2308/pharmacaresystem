package com.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.IDiseaseDao;
import com.app.pojos.Disease;

@Service
@Transactional
public class DiseaseServiceImp implements  IDiseaseService{

	
	@Autowired
	private IDiseaseDao dao;
	@Override
	public void insert(Disease disease) {
		// TODO Auto-generated method stub
		dao.insert(disease);;
		
	}

	@Override
	public List<Disease> getAll() {
		// TODO Auto-generated method stub
		return dao.getAll();
	}

}
