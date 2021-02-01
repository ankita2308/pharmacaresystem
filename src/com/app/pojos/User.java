package com.app.pojos;
import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="tbl_user")

public class User implements Serializable {
	
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="user_id")
	private Integer user_id;
	
	@Column(name="first_name")
	private String first_name;
	
	@Column(name="last_name")
	private String last_name;
	
	@Column(name="email_id")
	private String email_id;
	
	@Column(name="contact_number")
	private String contact_number;
	
	// many to one,  (since FK column appears here)
	//@ManyToOne 
	//@JoinColumn(name="medicine_id",nullable = false ,referencedColumnName = "medicine_id")
	//@JoinColumn(name="medicine_id",nullable = false)
	@ManyToOne 
	@JoinColumn(name="medicine_id",referencedColumnName = "medicine_id",nullable = false,insertable = true)
	private Medicine medicineId;
	
	//@ManyToOne 
	//@JoinColumn(name="disease_id",nullable = false,referencedColumnName = "disease_id")
	//@JoinColumn(name="disease_id",nullable = false)
	@ManyToOne 
	@JoinColumn(name="disease_id",referencedColumnName = "disease_id",nullable = false,insertable = true)
	private Disease diseaseId;
   //user class diseaseid get from disease class diseaseid through reference
	public User() {
		super();
		System.out.println("In constructor of user");
	}

	public User(Integer user_id, String first_name, String last_name, String email_id, String contact_number) {
		super();
		this.user_id = user_id;
		this.first_name = first_name;
		this.last_name = last_name;
		this.email_id = email_id;
		this.contact_number = contact_number;
		
	}
	
	

	public User(Integer user_id, String first_name, String last_name, String email_id, String contact_number,
			Medicine medicineId, Disease diseaseId) {
		super();
		this.user_id = user_id;
		this.first_name = first_name;
		this.last_name = last_name;
		this.email_id = email_id;
		this.contact_number = contact_number;
		this.medicineId = medicineId;
		this.diseaseId = diseaseId;
	}

	public Integer getUser_id() {
		return user_id;
	}

	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public String getEmail_id() {
		return email_id;
	}

	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}

	public String getContact_number() {
		return contact_number;
	}

	public void setContact_number(String contact_number) {
		this.contact_number = contact_number;
	}

	public Medicine getMedicineId() {
		return medicineId;
	}

	public void setMedicineId(Medicine medicineId) {
		this.medicineId = medicineId;
	}

	public Disease getDiseaseId() {
		return diseaseId;
	}

	public void setDiseaseId(Disease diseaseId) {
		this.diseaseId = diseaseId;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((user_id == null) ? 0 : user_id.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		if (user_id == null) {
			if (other.user_id != null)
				return false;
		} else if (!user_id.equals(other.user_id))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "User [user_id=" + user_id + ", first_name=" + first_name + ", last_name=" + last_name + ", email_id="
				+ email_id + ", contact_number=" + contact_number + ", medicineId=" + medicineId + ", diseaseId="
				+ diseaseId + "]";
	}

	


	
	
	
	
	
	
	

	
	
	
	

}
