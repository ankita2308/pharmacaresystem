package com.app.pojos;
import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.*;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;
@Entity
@Table(name="tbl_medicine")
public class Medicine implements Serializable {


	private static final long serialVersionUID = 1L;
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "medicine_id")
	private Integer medicineId;
    @Column(name = "medicine_name")
    private String medicineName;
    @Column(name = "medicine_price")
    private String medicinePrice;
    @Column(name = "quantity")
    private int quantity;
    @Column(name = "added_date")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date addedDate;
    @Column(name = "modified_date",nullable = true)
    @DateTimeFormat(pattern="yyyy-MM-dd")
    //@Temporal(value=TemporalType.TIMESTAMP)
    //@DateTimeFormat(pattern="dd/MM/yyyy")
    private Date modifiedDate;
    @Basic(optional = false)
    @NotNull
    @Column(name = "status")
    private boolean status;
    @OneToMany(mappedBy = "medicineId",cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    private List<User> userlist;
    
	public Integer getMedicineId() {
		return medicineId;
	}
	public void setMedicineId(Integer medicineId) {
		this.medicineId = medicineId;
	}
	public String getMedicineName() {
		return medicineName;
	}
	public void setMedicineName(String medicineName) {
		this.medicineName = medicineName;
	}
	public String getMedicinePrice() {
		return medicinePrice;
	}
	public void setMedicinePrice(String medicinePrice) {
		this.medicinePrice = medicinePrice;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public Date getAddedDate() {
		return addedDate;
	}
	public void setAddedDate(Date addedDate) {
		this.addedDate = addedDate;
	}
	public Date getModifiedDate() {
		return modifiedDate;
	}
	public void setModifiedDate(Date modifiedDate) {
		this.modifiedDate = modifiedDate;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public List<User> getUserlist() {
		return userlist;
	}
	public void setUserlist(List<User> userlist) {
		this.userlist = userlist;
	}
	public Medicine() {
		super();
		System.out.println("In constructor of medicine");
	}
	public Medicine(Integer medicineId, String medicineName, String medicinePrice, int quantity, Date addedDate,
			Date modifiedDate, boolean status) {
		super();
		this.medicineId = medicineId;
		this.medicineName = medicineName;
		this.medicinePrice = medicinePrice;
		this.quantity = quantity;
		this.addedDate = addedDate;
		this.modifiedDate = modifiedDate;
		this.status = status;
		
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((medicineId == null) ? 0 : medicineId.hashCode());
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
		Medicine other = (Medicine) obj;
		if (medicineId == null) {
			if (other.medicineId != null)
				return false;
		} else if (!medicineId.equals(other.medicineId))
			return false;
		return true;
	}
	
	
	@Override
	public String toString() {
		return "Medicine [medicineId=" + medicineId + ", medicineName=" + medicineName + ", medicinePrice="
				+ medicinePrice + ", quantity=" + quantity + ", addedDate=" + addedDate + ", modifiedDate="
				+ modifiedDate + ", status=" + status + "]";
	}
	
	
	/*@Override
	public String toString() {
		return " [medicineId=" + medicineId + "]";
	}*/
	
    

	
}
