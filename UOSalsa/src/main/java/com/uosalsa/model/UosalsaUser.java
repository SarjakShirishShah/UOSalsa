package com.uosalsa.model;

import javax.persistence.*;

@Entity
@Table(name = "uosalsa_user")
public class UosalsaUser {
	
    private Long id;
    private String username;
    private String password;
    private String passwordConfirm;
    private String email;
    private Long roleId;
    
    
    
    public UosalsaUser() {
		super();
	}

	public UosalsaUser(String username, String password,
			String passwordConfirm, String email, Long roleId) {
		super();
		this.username = username;
		this.password = password;
		this.passwordConfirm = passwordConfirm;
		this.email = email;
		this.roleId = roleId;
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
    
    @Column(name = "UOSALSA_USER_NAME")
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Transient
    public String getPasswordConfirm() {
        return passwordConfirm;
    }

    public void setPasswordConfirm(String passwordConfirm) {
        this.passwordConfirm = passwordConfirm;
    }
    
    @Column(name = "EMAIL", unique = true)
    public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "ROLE_ID")
	public Long getRoleId()
	{
		return roleId;
	}
	public void setRoleId(Long roleId)
	{
		this.roleId = roleId;
	}
}
