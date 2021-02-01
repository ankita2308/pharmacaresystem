package com.app.dao;

import java.util.List;

import com.app.pojos.Disease;

public interface IDiseaseDao {
	void insert(Disease disease);
	List<Disease>getAll();	

}
