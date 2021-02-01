
package com.app.pojos;
import java.io.Serializable;
import java.util.List;

import javax.persistence.*;
@Entity
@Table(name="tbl_disease")
public class Disease implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	
	@Column(name = "disease_id")
    private Integer diseaseId;
    @Column(name = "disease_name")
    private String diseaseName;
    @OneToMany(mappedBy = "diseaseId",cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    private List<User> userlist;
    
	public Integer getDiseaseId() {
		return diseaseId;
	}
	public void setDiseaseId(Integer diseaseId) {
		this.diseaseId = diseaseId;
	}
	public String getDiseaseName() {
		return diseaseName;
	}
	public void setDiseaseName(String diseaseName) {
		this.diseaseName = diseaseName;
	}
	public List<User> getUserlist() {
		return userlist;
	}
	public void setUserlist(List<User> userlist) {
		this.userlist = userlist;
	}
	public Disease(Integer diseaseId, String diseaseName) {
		super();
		this.diseaseId = diseaseId;
		this.diseaseName = diseaseName;
		
	}
	public Disease() {
		super();
		System.out.println("In Constructor of Disease");
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((diseaseId == null) ? 0 : diseaseId.hashCode());
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
		Disease other = (Disease) obj;
		if (diseaseId == null) {
			if (other.diseaseId != null)
				return false;
		} else if (!diseaseId.equals(other.diseaseId))
			return false;
		return true;
	}
	
	@Override
	public String toString() {
		return "Disease [diseaseId=" + diseaseId + ", diseaseName=" + diseaseName + ", userlist=" + userlist + "]";
	}
	
	
	
	/*
	@Override
	public String toString() {
		return "[diseaseId=" + diseaseId + "]";
	}*/
	
    
	

}
