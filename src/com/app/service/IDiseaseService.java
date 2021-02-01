package com.app.service;

import java.util.List;

import com.app.pojos.Disease;

public interface IDiseaseService {

	void insert(Disease disease);
	List<Disease>getAll();
	

}
