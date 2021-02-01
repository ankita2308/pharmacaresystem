package com.app.dao;

import java.util.List;

import com.app.pojos.Medicine;

public interface IMedicineDao {

	
	public String insert(Medicine medicine);
    public List<Medicine> getAll();
	public String delete(int id);
	public Medicine getById(int id);
	//public String update(int id);
   public String update(Medicine medicine);
	
	

}
