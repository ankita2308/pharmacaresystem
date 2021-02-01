package com.app.pojos;
import java.io.IOException;
import java.io.Serializable;
import java.security.GeneralSecurityException;

//id(Integer),name,role,password
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.app.controller.AESAlgorithm;



@Entity
@Table(name="role")
public class Role implements Serializable
{

	private static final long serialVersionUID = 1L;
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    private Integer id;
	
    @Column(name="username")
    private String username;

    @Column(name="password")
    private String password;
	
    @Enumerated(EnumType.STRING)
    private Roles role;
    
    public Role() {
		super();
		System.out.println("In Constructor of role");
	}
    public Role(Integer id, String username, String password, Roles role) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.role = role;
	}
    
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() throws GeneralSecurityException, IOException  {
		return password;
	}
	public void setPassword(String password) throws GeneralSecurityException, IOException {
		this.password = AESAlgorithm.en(password);
			}
	public Roles getRole() {
		return role;
	}
	public void setRole(Roles role) {
		this.role = role;
	}
	@Override
	public String toString() {
		return "Role [id=" + id + ", username=" + username + ", password=" + password + ", role=" + role + "]";
	}
	
	
	
    
   
    
    
}
