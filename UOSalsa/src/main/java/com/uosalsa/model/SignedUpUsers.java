package com.uosalsa.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="SIGNED_UP_USERS")
@SequenceGenerator(name="myentity_seq", sequenceName="my_sequence")
public class SignedUpUsers {
	
	private Long id;
    private String username;
    private String email;
    private Boolean active;
    
    public SignedUpUsers(){
    	
    }
    
    public SignedUpUsers(String username, String email, Boolean active) {
		this.username = username;
		this.email = email;
		this.active = active;
	}
    
	public SignedUpUsers(Long id, String username, String email, Boolean active) {
		this.id = id;
		this.username = username;
		this.email = email;
		this.active = active;
	}
	
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ID", unique = true, nullable = false, precision = 32, scale = 0)
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	
	@Column(name = "SIGNED_UP_USER_NAME", nullable = false, length = 80)
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	@Column(name = "EMAIL", nullable = false, length = 80)
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	@Column(name = "ACTIVE", nullable = false)
	public Boolean getActive() {
		return active;
	}
	public void setActive(Boolean active) {
		this.active = active;
	}
	
	
	@Override
	public String toString() {
		return "SignedUpUsers [id=" + id + ", username=" + username
				+ ", email=" + email + ", active=" + active + "]";
	}
    
    
}
